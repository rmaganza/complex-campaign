source('data_cleaning/englishitaliancategorie.R')
null_columns <- which(colSums(df)==0)
# BUY = 0 ATTENZIONE!!!!!!
df <- df[, -null_columns]
