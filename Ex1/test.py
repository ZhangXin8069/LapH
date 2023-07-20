jackkniff_c2pt_list, mean_jackkniff_c2pt_list, jackkniff_c2pt_list_error, jackkniff_c2pt_list_covar = jackknife(
    data=c2pt_list, time_start=1, time_end=c2pt_list.shape[1]-1, average=True, normalize=True)
