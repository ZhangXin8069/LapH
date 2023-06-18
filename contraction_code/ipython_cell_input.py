import pandas as pd
import numpy as np

def jackknife(arr):
    arr = np.array(arr)
    n = len(arr)
    jk_mean = (np.sum(arr) - arr) / (n - 1)
    return jk_mean, np.sqrt((n - 1))*np.std(jk_mean)
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


file_path = "corr_uu_gamma5_Px0Py0Pz0_conf15000-17450.xlsx"
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
for k in range(len(df_list)):
    jk_real = [-1]*df_list[0].shape[0]
    jk_real_std = [-1]*df_list[0].shape[0]
    jk_imag = [-1]*df_list[0].shape[0] 
    jk_imag_std = [-1]*df_list[0].shape[0]
    for i in range(df_list[0].shape[0]):
        jk_real[i], jk_real_std[i] = jackknife([j.iloc[i]["data_real"] for j in df_list])
        jk_imag[i], jk_imag_std[i] = jackknife([j.iloc[i]["data_imag"] for j in df_list])
    df_list[k].insert(
        df_list[k].shape[1], "jk_real", [jk_real[l][k] for l in range(df_list[0].shape[0])]
    )
    df_list[k].insert(
        df_list[k].shape[1], "jk_real_std", jk_real_std
    )
    df_list[k].insert(
        df_list[k].shape[1], "jk_imag", jk_imag_std
    )
