# check incongruenze fasce orarie

sum(rowSums(df[,24:359])>100) # 20876
sum(rowSums(df[,24:359])==0)

sum((df[,4])==0) #impressions =0 24


# check categorie
sum(rowSums(df[,369:1333])>100) # 41818
sum(rowSums(df[,369:1333])==0) #4184

df_null_cat <- df[which(rowSums(df[,369:1333])==0),]
sum(df_null_cat$clicks>0) #10

# check admants
sum(rowSums(df[,1334:1421])>100) # 34662
sum(rowSums(df[,1334:1421])==0) # 22258

# check feelings
sum(rowSums(df[,1426:1620])>100) # 58
sum(rowSums(df[,1426:1620])==0) #64810

#lunghezza testo

sum((df[,360]=='Inf'))  #15856 con valore nullo
sum((df[,360]=='NaN'))  #4183 con valore nullo


#GRAFICI

#Fasce orarie
graf1 = barplot(round(table(rowSums(df[,24:359])>100)/82615, 2), main = 'Numero di osservazioni con somma fasce orarie > 100', ylim= c(0,1.099) )
text(graf1, round(table(rowSums(df[,24:359])>100)/82615, 2), label = round(table(rowSums(df[,24:359])>100)/82615, 2), pos = 3, cex = 0.8, col= 4)



