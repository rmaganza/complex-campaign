# check incongruenze fasce orarie

sum(rowSums(df[,24:359])>100) # 3058
sum(rowSums(df[,24:359])==0) # 53877 ???????????
sum((df[,4])==0) #impressions =0 24


# check categorie
sum(rowSums(df[,369:1007])>100) # 41811

# check admants
sum(rowSums(df[,1008:1088])>100) # 34656

# check feelings
sum(rowSums(df[,1089:1176])>100) # 84

# impressions
sum(df$impressions == 0)  # 24 ?????????

#sistemi operativi
sum(rowSums(df[,6:12])>1)#non ci sono errori

#browser
sum(rowSums(df[,14:23])>1)#assenza problemi


#lunghezza testo

View(df[,360:368])
sum((df[,360]=='Inf'))#15852 con valore nullo
sum((df[,360]=='NaN'))#4183 con valore nullo


table(rowSums(df[,360:368])>100)#4541 sono maggiori di 100 

