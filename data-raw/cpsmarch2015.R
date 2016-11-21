# rm(list=ls(all=TRUE))
#
# load("C:/Users/Xiang/Dropbox/Class Stratification/cpsmarch R/cpsmarch_new.RData")
#
# library("dplyr")
#
# cpsmarch2015 <- cpsmarch_new %>%
#   filter(sex=="male", year==2015, between(age, 35, 64), fh5 %in% seq(1,4)) %>%
#   mutate(educ_num = as.numeric(educ),
#          educ2 = findInterval(educ_num, c(1,16,19,25))) %>%
#   dplyr::select(income = incmarket_real,
#                 big_class = fh5,
#                 micro_class = gw2,
#                 education = educ2,
#                 weight = wght) %>%
#   mutate(big_class = factor(big_class, levels = 1:4,
#                             labels = c("upper nonmanual",
#                                        "lower nonmanual",
#                                        "skilled manual",
#                                        "unskilled manual")),
#          education = factor(education, levels = 1:4,
#                             labels = c("less than HS",
#                                        "HS or equivalent",
#                                        "some college",
#                                        "BA or above"))) %>%
#   sample_frac(0.1)
#
# devtools::use_data(cpsmarch2015, overwrite = TRUE)

