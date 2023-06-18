# %% [markdown]
# # load_ext

# %%
# %load_ext magic_markdown
# %load_ext sql
# %load_ext jupyter_spaces
# %load_ext blackcellmagic
# %load_ext watermark
# %load_ext heat

# %% [markdown]
# # data preprocessing

# %%
# def merge_adjacent(arr, n):
#     # 合并相邻的相同元素
#     merged_arr = []
#     i = 0
#     while i < len(arr):
#         j = i + 1
#         while j < len(arr) and arr[j] == arr[i]:
#             j += 1
#         merged_arr.append(arr[i])
#         i = j
#     # 重复元素 n 次
#     repeated_arr = []
#     for elem in merged_arr:
#         repeated_arr.extend([elem] * n)
#     return repeated_arr
# # 打开文件，按行读取内容，并将每行内容添加到一个数组中
# with open("ztest.txt", "r") as file:
#     lines = file.readlines()
#     lines = [line.strip() for line in lines]

# # 输出读取到的内容数组
# print(lines)

# # 示例代码
# arr = lines
# print(merge_adjacent(arr, 64))
# arr=merge_adjacent(arr, 64)
# # 打开文件，写入数组中的每个元素，并在每个元素后添加一个换行符
# with open("output.txt", "w") as file:
#     for line in arr:
#         file.write(line + "\n")

# %%
import pandas as pd
import numpy as np


def read_xlsx(file_path):
    """
    Reads an xlsx file and returns it as a Pandas dataframe.

    Args:
        file_path (str): The path to the xlsx file.

    Returns:
        pd.DataFrame: A Pandas dataframe representing the xlsx data.
    """
    df = pd.read_excel(file_path)
    return df


file_path = "/home/zhangxin/content/LapH/contraction_code/corr_uu_gamma5_Px0Py0Pz0_conf15000-17450.xlsx"
df = read_xlsx(file_path)
df.info()

# df=df.astype("Float32")
# df['data_name']=df['data_name'].astype('int')
# df['data_num']=df['data_num'].astype('int')
df_list=[df.iloc[i*len(df['data_num'].unique()):(i+1)*len(df['data_num'].unique())] for i in range(len(df['data_name'].unique()))]

for i in range(len(df_list)):
    df_list[i]=df_list[i].reset_index(drop=True)
    df0=df_list[i][(df['data_num']>=1)&(df['data_num']<=32)].reset_index(drop=True)
    df1=df_list[i][(df['data_num']>=32)&(df['data_num']<=63)][::-1].reset_index(drop=True)
    df0['data_real']=(df0['data_real']+df1['data_real'])/2
    df0['data_imag']=(df0['data_imag']+df1['data_imag'])/2
    df_list[i]=df0

# %% [markdown]
# # jackknife

# %%
import numpy as np
# def jackknife(arr):
#     arr = np.array(arr)
#     n = len(arr)
#     jk_mean = np.zeros(n)
#     for i in range(n):
#         jk_mean[i] = np.mean(np.delete(arr, i))
#     jk_std = np.sqrt((n - 1) / n * np.sum((jk_mean - np.mean(jk_mean)) ** 2))
#     return jk_mean, jk_std

def jackknife(arr):
    arr = np.array(arr)
    n = len(arr)
    jk_mean = (np.sum(arr) - arr) / (n - 1)
    return pd.DataFrame({'mean':jk_mean, 'std':[np.sqrt((n - 1))*np.std(jk_mean)]*n})
arr = np.array([1,2,3,4,5])
# arr = df["data_real"][0:64]
# print(arr)
jk_all = jackknife(arr)
print("Jackknife mean:\n", jk_all['mean'])
print("Jackknife std:\n", jk_all['std'])
print("no-Jackknife std:\n", np.std(arr))

# %% [markdown]
# # apply_func_to_col

# %%
jk_real_all = [
    jackknife([j.iloc[i]["data_real"] for j in df_list])
    for i in range(df_list[0].shape[0])
]
jk_imag_all = [
    jackknife([j.iloc[i]["data_imag"] for j in df_list])
    for i in range(df_list[0].shape[0])
]
for k in range(len(df_list)):
    df_list[k].insert(
        df_list[k].shape[1],
        "jk_real",
        [jk_real_all[i]["mean"][k] for i in range(df_list[0].shape[0])],
    )
    df_list[k].insert(
        df_list[k].shape[1],
        "jk_real_std",
        [jk_real_all[i]["std"][k] for i in range(df_list[0].shape[0])],
    )
    df_list[k].insert(
        df_list[k].shape[1],
        "jk_imag",
        [jk_imag_all[i]["mean"][k] for i in range(df_list[0].shape[0])],
    )
    df_list[k].insert(
        df_list[k].shape[1],
        "jk_imag_std",
        [jk_imag_all[i]["std"][k] for i in range(df_list[0].shape[0])],
    )

# %% [markdown]
# # nonlinear_fit

# %%
import numpy as np
import scipy.optimize as opt
import matplotlib.pyplot as plt
import seaborn as sns

def nonlinear_fit(x, y,yerr, model_func):
    """
    Perform nonlinear fitting of data with noise using curve_fit(sigma=yerr).
    Arguments:
    x -- numpy array of independent variable data
    y -- numpy array of dependent variable data with noise
    model_func -- function that takes x and fitting parameters as input and returns predicted y
    Returns:
    popt -- optimized parameter values
    pcov -- covariance matrix of optimized parameters
    perr -- 1-sigma errors of optimized parameters
    chi2 -- chi-squared value of the fit
    logGBF -- log of the generalized Bayesian information criterion
    """
    popt, pcov = opt.curve_fit(model_func, x, y, sigma=yerr, absolute_sigma=True)
    perr = np.sqrt(np.diag(pcov))
    residuals = y - model_func(x, *popt)
    chi2 = np.sum((residuals / yerr) ** 2)
    n = len(x)
    logGBF = -0.5 * (n * np.log(2*np.pi) + n*np.log(np.sum(residuals**2/n)) + np.log(np.linalg.det(pcov)))
    chi2_dof=chi2/(n-len(popt))
    return popt, pcov, perr, chi2_dof, logGBF

# %% [markdown]
# # plot_fit

# %%
import numpy as np
import scipy.optimize as opt
import matplotlib.pyplot as plt
import seaborn as sns

def plot_fit(x, y,yerr, model_func, popt, pcov, perr, chi2_dof, logGBF):
    """
    Plot the fitted curve with error bars and parameter uncertainties.
    Arguments:
    x -- numpy array of independent variable data
    y -- numpy array of dependent variable data with noise
    model_func -- function that takes x and fitting parameters as input and returns predicted y
    popt -- optimized parameter values
    pcov -- covariance matrix of optimized parameters
    perr -- 1-sigma errors of optimized parameters
    chi2 -- chi-squared value of the fit
    logGBF -- log of the generalized Bayesian information criterion
    """
    fig, ax = plt.subplots(dpi=1000)
    sns.set_style('whitegrid')
    ax.errorbar(x, y, yerr=yerr, fmt='o', label='Data')
    ax.plot(x, model_func(x, *popt), 'r-', label='Fit')
    ax.set_xlabel('x')
    ax.set_ylabel('y')
    ax.legend(loc='best')
    textstr = '\n'.join((
        r'$\chi^2/dof=%f$' % (chi2_dof,),
        r'$\log(GBF)=%f$' % (logGBF,),
        r'$a=%f\pm%f$' % (popt[0], perr[0]),
        r'$b=%f\pm%f$' % (popt[1], perr[1]),
        # r'$c=%f\pm%f$' % (popt[2], perr[2]),
        ))
    ax.text(0.05, 0.95, textstr, transform=ax.transAxes, fontsize=10,
            verticalalignment='top')
    plt.show()


# %% [markdown]
# # main

# %%
def model_func(x, a, b):
    return a * (np.exp(-b * x) + np.exp(-b * (64 - x)))
T_start = 2
T_end = 19
small_time = 100000.0

m_list=[]

for l in range(len(df_list)):
    x = np.linspace(start=T_start, stop=T_end, num=T_end - T_start + 1, dtype="int")
    y = np.array([i["jk_real"].values for i in df_list])[:, x - 1][l] / small_time
    yerr = np.array([i["jk_real_std"].values for i in df_list])[:, x - 1][l] / small_time
    popt, pcov, perr, chi2_dof, logGBF = nonlinear_fit(x, y, yerr, model_func)
    m_list.append(popt[1])
m_list=np.array(m_list)
popt, pcov, perr, chi2_dof, logGBF = nonlinear_fit(x, y, yerr, model_func)
# print(popt, pcov, perr, chi2_dof, logGBF )
jk_m_all=jackknife(m_list)
jk_m=jk_m_all["mean"]
jk_m_std=jk_m_all["std"]
data_name=[int(i["data_name"].unique()) for i in df_list]
fig, ax = plt.subplots(dpi=1000)
sns.set_style('whitegrid')
ax.errorbar(data_name, jk_m, yerr=jk_m_std, fmt='o', label='m')
# ax.plot(data_name, jk_m, 'r-', label='Fit')
ax.set_xlabel('data_name')
ax.set_ylabel('jk_m')
ax.legend(loc='best')
textstr = '\n'.join((
        r'$m_{mean}=%f$' % (np.mean(jk_m),),
        r'$m_{std}=%f$' % (jk_m_std.unique(),),
        ))
ax.text(0.05, 0.95, textstr, transform=ax.transAxes, fontsize=10,
            verticalalignment='top')
plt.show()
# print(np.mean(m_list),np.std(m_list))
plot_fit(x, y, yerr, model_func, popt, pcov, perr, chi2_dof, logGBF)

# %% [markdown]
# # # test

# # %%
# def model_func(x, a, b):
#     return a * (np.exp(-b * x) + np.exp(-b * (64 - x)))
# x = np.linspace(0, 4, 50)
# y = model_func(x, 2.5, 1.3) + np.random.normal(0, 0.1, len(x))
# yerr = np.ones_like(y) * 0.1
# popt, pcov, perr, chi2_dof, logGBF = nonlinear_fit(x, y, yerr, model_func)
# print(popt, pcov, perr, chi2_dof, logGBF )
# plot_fit(x, y, yerr, model_func, popt, pcov, perr, chi2_dof, logGBF)

# # %%
# def model_func(x, a, b):
#     return a * (np.exp(-b * x) + np.exp(-b * (64 - x)))


# T_start = 2
# T_end = 19
# small_time = 100.0
# chi2_dof_list=[]
# for j in np.linspace(1,16,16,endpoint=True,dtype="int"):
#     for k in np.linspace(17,32,16,endpoint=True,dtype="int"):
#         T_start = j
#         T_end = k
#         for l in range(len(df_list)):
#             x = np.linspace(start=T_start, stop=T_end, num=T_end - T_start + 1, dtype="int")
#             y = np.array([i["jk_real"].values for i in df_list])[:, x - 1][l] / small_time
#             yerr = np.array([i["jk_real_std"].values for i in df_list])[:, x - 1][l] / small_time
#             popt, pcov, perr, chi2_dof, logGBF = nonlinear_fit(x, y, yerr, model_func)
#             chi2_dof_list.append([j,k,chi2_dof])
# # 2,19
# print(popt, pcov, perr, chi2_dof, logGBF )
# plot_fit(x, y, yerr, model_func, popt, pcov, perr, chi2_dof, logGBF)

# # %%
# for i in chi2_dof_list:
#     print(i)
    
# import numpy as np

# def find_nearest(array, value):
#     """
#     Find the element in the array that is closest to the given value.
#     """
#     idx = (np.abs(array - value)).argmin()
#     return array[idx]
# find_nearest(np.array([i[2] for i in chi2_dof_list]),1)

# # %%
# s=np.abs(np.array([i[2] for i in chi2_dof_list])-1)
# chi2_dof_list[s.argmin()]


# # %%
# s.argmin()

# # %%
# df_list[0]


