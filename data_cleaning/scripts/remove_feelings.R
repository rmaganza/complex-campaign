feelings_col <- grep("feel",colnames(df_cleaned))
rows_no_feelings <- which(rowSums(df_cleaned[,feelings_col])==0)
df_no_feelings <- df_cleaned[rows_no_feelings, -feelings_col]
df_feelings <- df_cleaned[-rows_no_feelings,]
