aggregate_os <- function(df) {
  df$os_apple <- df$os_osx + df$os_ios
  df %>% select(-one_of(c('os_osx', 'os_ios')))
}
