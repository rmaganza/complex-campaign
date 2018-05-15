# check incongruenze fasce orarie

sum(rowSums(df[,23:358])>100) # 3058
sum(rowSums(df[,23:358])==0) # 53877 ???????????


# check categorie
sum(rowSums(df[,369:1007])>100) # 41811

# check admants
sum(rowSums(df[,1008:1088])>100) # 34656

# check feelings
sum(rowSums(df[,1089:1176])>100) # 84

# impressions
sum(df$impressions == 0)  # 24 ?????????

