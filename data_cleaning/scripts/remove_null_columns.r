remove_null_columns <- function(df) {
englishitaliancategorie(df)
null_columns <- which(colSums(df)==0)
# BUY = 0 ATTENZIONE!!!!!!
df <- df[, -null_columns]
df
}
