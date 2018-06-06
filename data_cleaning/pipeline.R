library(MASS)
library(dplyr)
source("data/load_data.r")
source('data_cleaning/scripts/remove_rows.R')
source('data_cleaning/scripts/englishitaliancategorie.R')
source('data_cleaning/scripts/remove_null_columns.r')
source('data_cleaning/scripts/aggregate_columns.R')
source('data_cleaning/scripts/dummify_device_type.R')
source('data_cleaning/scripts/renormalize_incorrect_data.r')
source('data_cleaning/scripts/remove_admants.r')
source('data_cleaning/scripts/binary_clicks.r')
source('data_cleaning/scripts/fasce_orarie.r')
source('data_cleaning/scripts/aggregate_os.r')
source('data_cleaning/scripts/aggregate_browsers.r')
source('data_cleaning/scripts/ko_texts.r')

df_cleaned <- df %>% remove_rows_no_impressions() %>% remove_rows_no_categories() %>% englishitaliancategorie() %>% dummify_device_type() %>% remove_null_columns() %>% aggregate_columns() %>% renormalize_fasce_orarie() %>% aggregate_ore() %>% renormalize_categories() %>% remove_admants() %>% binary_clicks() %>% aggregate_os() %>% aggregate_browsers() %>% remove_cat_uncategorized() %>% ko_texts() %>% renormalize_length() %>% remove_rows_missing_categories()

df_cleaned <- df_cleaned[df_cleaned$suspicious==0,]
df_cleaned <- df_cleaned %>% select(-one_of("suspicious", "ad_form_id"))
df_cleaned <- df_cleaned[which(rowSums(is.na(df_cleaned))==0),]

source('data_cleaning/scripts/remove_feelings.R')

df_feelings <- df_feelings %>% renormalize_feelings() %>% remove_null_columns()
df_no_feelings <- df_no_feelings %>% remove_null_columns()


# save(df_cleaned, file='data/df_cleaned_with_feelings.RData')
# save(df_feelings, file='data/df_feelings.RData')
# save(df_no_feelings, file='data/df_no_feelings.Rdata')
