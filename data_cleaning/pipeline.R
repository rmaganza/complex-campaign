library(dplyr)
source("data/load_data.r")
source('data_cleaning/scripts/remove_rows.R')
source('data_cleaning/scripts/englishitaliancategorie.R')
source('data_cleaning/scripts/remove_null_columns.r')
source('data_cleaning/scripts/aggregate_columns.R')
source('data_cleaning/scripts/dummify_device_type.R')

df_cleaned <- df %>% remove_rows() %>% dummify_device_type() %>%  remove_null_columns() %>% aggregate_columns()
