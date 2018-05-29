remove_admants <- function(df) {
  df %>% select(-(493:572))
}
