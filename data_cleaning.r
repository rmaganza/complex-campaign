####### FASCE ORARIE + GIORNI

indexes_notte <- c(grep("00_", colnames(df)), grep("01_", colnames(df)), grep("02_", colnames(df)),
                   grep("03_", colnames(df)), grep("04_", colnames(df)), grep("05_", colnames(df)))

indexes_notte_feriali <- indexes_notte[indexes_notte <= 263]
feriale_notte <- rowSums(df[,indexes_notte_feriali])

indexes_notte_festivo <- indexes_notte[indexes_notte > 263]
festivo_notte <- rowSums(df[,indexes_notte_festivo])

indexes_mattina <- c(grep("06_", colnames(df)), grep("07_", colnames(df)), grep("08_", colnames(df)),
                   grep("09_", colnames(df)), grep("10_", colnames(df)), grep("11_", colnames(df)))

indexes_mattina_feriali <- indexes_mattina[indexes_mattina <= 263]
feriale_mattina <- rowSums(df[,indexes_mattina_feriali])

indexes_mattina_festivo <- indexes_mattina[indexes_mattina > 263]
festivo_mattina <- rowSums(df[,indexes_mattina_festivo])

indexes_pomeriggio <- c(grep("12_", colnames(df)), grep("13_", colnames(df)), grep("14_", colnames(df)), grep("15_", colnames(df)), grep("16_", colnames(df)), grep("17_", colnames(df)))

indexes_pomeriggio_feriali <- indexes_pomeriggio[indexes_pomeriggio <= 263]
feriale_pomeriggio <- rowSums(df[,indexes_pomeriggio_feriali])

indexes_pomeriggio_festivo <- indexes_mattina[indexes_mattina > 263]
festivo_pomeriggio <- rowSums(df[,indexes_mattina_festivo])

indexes_sera <- c(grep("18_", colnames(df)), grep("19_", colnames(df)), grep("20_", colnames(df)), grep("21_", colnames(df)), grep("22_", colnames(df)), grep("23_", colnames(df)))

indexes_sera_feriali <- indexes_pomeriggio[indexes_pomeriggio <= 263]
feriale_sera <- rowSums(df[,indexes_pomeriggio_feriali])

indexes_sera_festivo <- indexes_mattina[indexes_mattina > 263]
festivo_sera <- rowSums(df[,indexes_mattina_festivo])

################ TRANSLATIONS

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
