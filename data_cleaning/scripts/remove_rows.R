remove_rows_no_impressions <- function(df) {
rows_no_impressions <- which(df$impressions==0)
df <- df[-rows_no_impressions,]
df
}

remove_rows_no_categories <- function(df) {
  categories_col <- grep("categories",colnames(df))
  rows_no_categories <- which(rowSums(df[,categories_col], na.rm=T)==0)
  df[-rows_no_categories,]
}


remove_rows_missing_categories <- function(df) {
  missing <- c(which(is.na(df$categories_crime)) , which(is.na(df$categories_business)))
  df[-missing,]
}
