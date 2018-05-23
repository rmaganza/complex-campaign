fasce_orarie_incorrect <- which(rowSums(df[,23:358])>100)
df[fasce_orarie_incorrect, 23:358] <- sweep(df[fasce_orarie_incorrect, 23:358], 1, rowSums(df[fasce_orarie_incorrect, 23:358]), "/")*100


feelings_incorrect <- which(rowSums(df[,1089:1176])>100)
df[feelings_incorrect,1089:1176] <- sweep(df[feelings_incorrect,1089:1176], 1, rowSums(df[feelings_incorrect,1089:1176]), "/") * 100
