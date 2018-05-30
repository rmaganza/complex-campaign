binary_clicks <- function(df) {
  df$clicked <- ifelse(df$clicks>0, 1, 0)
  df
}
