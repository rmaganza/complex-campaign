ko_texts <- function(df) {
  col_length <- grep("L", colnames(df))
  index_ko <- which(df$L00_50==Inf|is.nan(df$L00_50))
  df[index_ko, col_length] <- 0
  df$website_KO <- 0
  df$website_KO[index_ko] <- 1
  df
}
