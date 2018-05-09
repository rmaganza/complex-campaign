
colnames(df)[1458]<-"feelings_curiosita"
colnames(df)[1493]<-"feelings_felicita"
colnames(df)[1558]<-"feelings_poverta"
colnames(df)[1531]<-"feel_negativemotions"
colnames(df)[1532]<-"feel_negativebehaviour"

colnames(df)[1530]<-"feel_negative"
colnames(df)[1536]<-"feel_nostalgia"
colnames(df)[1544]<-"feel_outgoing"
colnames(df)[1556]<-"feel_positive"
colnames(df)[1572]<-"feel_reserved"
colnames(df)[1585]<-"feel_selfrealization"
colnames(df)[1590]<-"feel_sitelistblindnositlist"
colnames(df)[1599]<-"feel_stress"
colnames(df)[1608]<-"feel_thoughtfull"









feel_materialist<-rowSums(df[,c(1524,1525)])
feel_modern<-rowSums(df[,c(1526,1527)])
feel_motivation<-rowSums(df[,c(1528,1529)])
feel_neglect<-rowSums(df[,c(1533,1535)])
feel_offence<-rowSums(df[,c(1538,1539)])
feel_organized<-rowSums(df[,c(1540,1541)])
feel_pride<-rowSums(df[,c(1564,1542)])
feel_passionate<-rowSums(df[,c(1546,1547)])
feel_pleasure<-rowSums(df[,c(1552,1554)])
feel_power<-rowSums(df[,c(1557,1560)])
feel_poverty<-rowSums(df[,c(1558,1559)])
feel_pragmatic<-rowSums(df[,c(1561,1562)])
feel_resignation<-rowSums(df[,c(1567,1573)])
feel_regret<-rowSums(df[,c(1568,1577)])
feel_relaxed<-rowSums(df[,c(1569,1575)])
feel_remorse<-rowSums(df[,c(1571,1576)])
feel_wealth<-rowSums(df[,c(1620,1574)])
feel_sadness<-rowSums(df[,c(1578,1611)])
feel_safety<-rowSums(df[,c(1579,1589)])
feel_satisfaction<-rowSums(df[,c(1581,1591)])
feel_search<-rowSums(df[,c(1582,1614)])
feel_sedentary<-rowSums(df[,c(1583,1584)])
feel_thirst<-rowSums(df[,c(1587,1607)])
feel_shame<-rowSums(df[,c(1588,1617)])
feel_relief<-rowSums(df[,c(1570,1593)])
feel_suffering<-rowSums(df[,c(1592,1602)])
feel_surprise<-rowSums(df[,c(1594,1605)])
feel_spiritual<-rowSums(df[,c(1596,1597)])
feel_success<-rowSums(df[,c(1600,1601)])
feel_superstitious<-rowSums(df[,c(1603,1604)])
feel_symphaty<-rowSums(df[,c(1563,1606)])
feel_torment<-rowSums(df[,c(1609,1610)])
feel_traditionalist<-rowSums(df[,c(1611,1612)])
feel_violence<-rowSums(df[,c(1618,1619)])





















































































