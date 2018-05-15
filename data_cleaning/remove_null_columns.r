source('data_cleaning/englishitaliancategorie.R')
null_columns <- which(colSums(df)==0)
# BUY = 0 ATTENZIONE!!!!!!
null_columns_to_remove <- null_columns[-1]
df <- df[, -null_columns_to_remove]
