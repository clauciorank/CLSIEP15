library(CLSIEP15)

data <- create_table_ep_15(ferritin_long, data_type = 'long')

aov_t <- calculate_aov_infos(data)

uvl_info <- calculate_uvl_info(aov_t, nsamp = 5, cvr_or_sr = .43, cvwl_or_swl = .7)


calculate_bias_interval(scenario = 'E',
                        nrun = 7,
                        nrep = 5,
                        SWL = .042,
                        SR = .032,
                        nsamples = 2,
                        expected_mean = 1,
                        user_mean = .94
)


??calculate_aov_infos


calculate_bias_interval('C',  nrun = 7,
                        nrep = 5,
                        SWL = .042,
                        SR = .032,
                        nsamples = 2,
                        expected_mean = 1,
                        user_mean = .94,
                        sd_rm = .05,
                        nlab = 43)

calculate_bias_interval('A', subscenario = 'lowerupper', nrun = 7, nrep = 5, SWL = .042, SR = .032, nsamples = 2, expected_mean = 1, user_mean = .94, lower = .7, upper = .9, coverage = 95)

calculate_bias_interval('E', nrun = 7, nrep = 5, SWL = .042, SR = .032, nsamples = 2, expected_mean = 1, user_mean = .94)
