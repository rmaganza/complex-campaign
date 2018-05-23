dummify_device_type <- function(df){
  # baseline mobile
  df$device_type_desktop <- ifelse(df$device_type==2, 1, 0)
  df$device_type_other <- ifelse(df$device_type==3, 1, 0)
  df$device_type_tv <- ifelse(df$device_type==4, 1, 0)
  df$device_type_tablet <- ifelse(df$device_type==5, 1, 0)
  df %>% select(-device_type)
}
