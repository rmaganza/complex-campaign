# check incongruenze fasce orarie

sum(rowSums(df[,22:357])>100) # 3058
sum(rowSums(df[,22:357])==0) # 53877 ???????????
sum((df[,4])==0) #impressions =0 24


# check categorie
sum(rowSums(df[,367:1007])>100) # 41811
sum(rowSums(df[,367:1006])==0) #4182
df_null_cat <- df[which(rowSums(df[,367:1006])==0),]
sum(df_null_cat$clicks>0) #8
# check admants
sum(rowSums(df[,1007:1087])>100) # 34643

# check feelings
sum(rowSums(df[,1088:1175])>100) # 84

#sistemi operativi
sum(rowSums(df[,5:11])>1)#non ci sono errori

#browser
sum(rowSums(df[,13:21])>1)#assenza problemi


#lunghezza testo

sum((df[,358]=='Inf'))#15850 con valore nullo
sum((df[,358]=='NaN'))#4181 con valore nullo

