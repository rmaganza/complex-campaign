remove_rows <- function(df) {
rows_no_impressions <- which(df$impressions==0)
df <- df[-rows_no_impressions,]
df
}
