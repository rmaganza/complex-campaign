
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





feel_city_lover <- rowSums(df[,c(1521,1446)])
feel_affection <- rowSums(df[,c(1427,1428)])
feel_nature_lover <- rowSums(df[,c(1522,1429)])
feel_love <- rowSums(df[,c(1520,1430)])
feel_anguish <- rowSums(df[,c(1434,1433)])
feel_anxiety <- rowSums(df[,c(1436,1435)])
feel_belonging <- rowSums(df[,c(1440,1437)])
feel_active <- rowSums(df[,c(1426,1438)])
feel_calm <- rowSums(df[,c(1442,1443)])
feel_uncategorized <- rowSums(df[,c(1616,1444)])
feel_find <- rowSums(df[,c(1495,1445)])
feel_compassionate <- rowSums(df[,c(1448,1449)])
feel_behaviour <- rowSums(df[,c(1439,1450)])
feel_conformist <- rowSums(df[,c(1452,1453)])
feel_confusion <- rowSums(df[,c(1454,1455)])
feel_courage <- rowSums(df[,c(1457,1456)])
feel_curiosity <- rowSums(df[,c(1459, 1458)])
feel_disappointment <- rowSums(df[,c(1464,1460)])
feel_dynamic <- rowSums(df[,c(1475,1463)])
feel_disgust <- rowSums(df[,c(1465,1466)])
feel_disillusion <- rowSums(df[,c(1467,1468)])
feel_disorganized <- rowSums(df[,c(1469,1470)])
feel_dissolute <- rowSums(df[,c(1471,1472)])
feel_amusement <- rowSums(df[,c(1431,1473)])
feel_eccentric <- rowSums(df[,c(1477,1478)])
feel_excitement <- rowSums(df[,c(1489,1479)])
feel_empathy <- rowSums(df[,c(1483,1484)])
feel_exasperation <- rowSums(df[,c(1488,1486)])
feel_hunger <- rowSums(df[,c(1507,1490)])
feel_happiness <- rowSums(df[,c(1503,1493)])
feel_frivolous <- rowSums(df[,c(1498,1497)])
feel_jealousy <- rowSums(df[,c(1517,1500)])
feel_joy <- rowSums(df[,c(1518,1502)])
feel_indipendence <- rowSums(df[,c(1510,1511)])
feel_intentions <- rowSums(df[,c(1512,1513)])
feel_envy <- rowSums(df[,c(1485,1514)])
feel_irritation <- rowSums(df[,c(1515,1516)])
feel_purchase <- rowSums(df[,c(1565,1451)])
feel_pain <- rowSums(df[,c(1545,1474)])
feel_polite <- rowSums(df[,c(1555,1480)])
feel_trust <- rowSums(df[,c(1615,1494)])
feel_playful <- rowSums(df[,c(1553,1501)])
feel_boredom <- rowSums(df[,c(1441,1534)])
feel_earnest <- rowSums(df[,c(1476,1586)])
feel_anger <- rowSums(df[,c(1432,1566)])
feel_health_fanatic <- rowSums(df[,c(1492,1580)])
feel_fear <- rowSums(df[,c(1492,1550)])
feel_hatred <- rowSums(df[,c(1507,1537)])
feel_hope <- rowSums(df[,c(1505,1595)])
feel_horror <- rowSums(df[,c(1506,1543)])
feel_impolite <- rowSums(df[,c(1509,1523)])
feel_forgiveness <- rowSums(df[,c(1496,1551)])
feel_esteem <- rowSums(df[,c(1487,1598)])
feel_committed <- rowSums(df[,c(1447,1508)])

#spaiati
feel_like <- df[,1519]
feel_emotions <- df[,1481]
feel_neutral_emotions <- df[,1482]
feel_frugal <- df[,1499]

##################















































































