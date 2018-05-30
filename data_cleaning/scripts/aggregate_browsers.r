aggregate_browsers <- function(df) {
  df$browser_other <- df$browser_other + df$browser_opera + df$browser_unknown
  df %>% select(-one_of(c("browser_opera", "browser_unknown")))
}
