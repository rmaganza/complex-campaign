# check incongruenze fasce orarie

sum(rowSums(df[,24:359])>100) # 3058


# check categorie
sum(rowSums(df[,369:1333])>100) # 41811

# check admants
sum(rowSums(df[,1337:1421])>100) # 29797

# check feelings
sum(rowSums(df[,1426:1620])>100) # 58
