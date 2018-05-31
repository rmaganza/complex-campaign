aggregate_os <- function(df) {
  df$os_apple <- df$os_osx + df$os_ios
  df$os_other <- df$os_other + df$os_linux
  df %>% select(-c(os_osx, os_ios, os_linux))
}
