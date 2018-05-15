####### FASCE ORARIE + GIORNI

library(magrittr)

indexes_notte <- c(grep("00_00", colnames(df)), grep("00_30", colnames(df)), grep("01_", colnames(df)), grep("02_", colnames(df)), grep("03_", colnames(df)), grep("04_", colnames(df)), grep("05_", colnames(df)))

indexes_notte_feriali <- indexes_notte[indexes_notte <= 262]
feriale_notte <- rowSums(df[,indexes_notte_feriali])

indexes_notte_festivo <- indexes_notte[indexes_notte > 262]
festivo_notte <- rowSums(df[,indexes_notte_festivo])

indexes_mattina <- c(grep("06_", colnames(df)), grep("07_", colnames(df)), grep("08_", colnames(df)),
                   grep("09_", colnames(df)), grep("10_", colnames(df)), grep("11_", colnames(df)))

indexes_mattina_feriali <- indexes_mattina[indexes_mattina <= 262]
feriale_mattina <- rowSums(df[,indexes_mattina_feriali])

indexes_mattina_festivo <- indexes_mattina[indexes_mattina > 262]
festivo_mattina <- rowSums(df[,indexes_mattina_festivo])

indexes_pomeriggio <- c(grep("12_", colnames(df)), grep("13_", colnames(df)), grep("14_", colnames(df)), grep("15_", colnames(df)), grep("16_", colnames(df)), grep("17_", colnames(df)))

indexes_pomeriggio_feriali <- indexes_pomeriggio[indexes_pomeriggio <= 262]
feriale_pomeriggio <- rowSums(df[,indexes_pomeriggio_feriali])

indexes_pomeriggio_festivo <- indexes_mattina[indexes_mattina > 262]
festivo_pomeriggio <- rowSums(df[,indexes_mattina_festivo])

indexes_sera <- c(grep("18_", colnames(df)), grep("19_", colnames(df)), grep("20_", colnames(df)), grep("21_", colnames(df)), grep("22_", colnames(df)), grep("23_", colnames(df)))

indexes_sera_feriali <- indexes_pomeriggio[indexes_pomeriggio <= 262]
feriale_sera <- rowSums(df[,indexes_pomeriggio_feriali])

indexes_sera_festivo <- indexes_sera[indexes_sera > 262]
festivo_sera <- rowSums(df[,indexes_sera_festivo])

df <- df[,-(23:358)]

df %<>% cbind(feriale_notte, festivo_notte, feriale_mattina, festivo_mattina, feriale_pomeriggio, festivo_pomeriggio, feriale_sera, festivo_sera)


