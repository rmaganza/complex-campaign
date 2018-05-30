remove_admants <- function(df) {
  categories_admants <- grep('admants', colnames(df))
  df %>% select(-categories_admants)
}
