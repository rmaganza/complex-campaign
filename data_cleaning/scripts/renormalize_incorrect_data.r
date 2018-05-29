renormalize_fasce_orarie <- function(df) {
fasce_orarie_incorrect <- which(rowSums(df[,21:356])>100)
df[fasce_orarie_incorrect, 21:356] <- sweep(df[fasce_orarie_incorrect, 21:356], 1, rowSums(df[fasce_orarie_incorrect, 21:356]), "/", check.margin = F)*99.999999999
df
}

renormalize_categories <- function(df) {
  categories_col <- grep("categories",colnames(df))
  categories_incorrect <- which(rowSums(df[,categories_col])>100)
  df[categories_incorrect, categories_col] <- sweep(df[categories_incorrect, categories_col], 1, rowSums(df[categories_incorrect, categories_col]), "/", check.margin = F)*99.999999999
  df
}


renormalize_feelings <- function(df) {
  feelings_col <- grep("feelings",colnames(df))
  feelings_incorrect <- which(rowSums(df[,feelings_col])>100)
  df[feelings_incorrect, feelings_col] <- sweep(df[feelings_incorrect, feelings_col], 1, rowSums(df[feelings_incorrect, feelings_col]), "/", check.margin = F)*99.999999999
  df
}
