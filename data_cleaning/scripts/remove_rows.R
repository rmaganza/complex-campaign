remove_rows_no_impressions <- function(df) {
rows_no_impressions <- which(df$impressions==0)
df <- df[-rows_no_impressions,]
df
}

remove_rows_no_categories <- function(df) {
  categories_col <- grep("categories",colnames(df))
  rows_no_categories <- which(rowSums(df[,categories_col])==0)
  df[-rows_no_categories,]
}
