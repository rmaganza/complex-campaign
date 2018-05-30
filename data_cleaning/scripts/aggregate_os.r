aggregate_os <- function(df) {
  df$os_apple <- df$os_osx + df$os_ios
  df
}
