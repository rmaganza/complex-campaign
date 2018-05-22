rows_no_feelings <- which(rowSums(df[,1088:1175])==0)
df_no_feelings <- df[rows_no_feelings, -(1088:1175)]
df_feelings <- df[-rows_no_feelings,]
