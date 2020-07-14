library(ggplot2)
library(RColorBrewer)
library(ggthemes)

ggplot(data=df, aes(x=factor(device_type), fill=factor(device_type))) +
  geom_bar(aes(y = (..count..))) +
  scale_x_discrete(labels = c('Mobile', 'Desktop', 'Others', 'Tablet')) +
  theme_wsj()  +
  geom_text(stat='count', aes(label=..count..), vjust=-1) +
  scale_fill_brewer(palette="Pastel2") +
  guides(fill=FALSE) + theme(
    panel.background = element_blank(), # or theme_blank()
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    plot.background = element_blank(),
    legend.background = element_blank(),
    legend.key = element_blank()
  )

num <- c(21681, 60818, 127, 1)
par(bg=NA)
names(num) <- c('Mobile', 'Desktop', 'Others', 'Tablet')
barplot(num, col=c('#fed976','#feb24c'), axes = F, col.axis='white', ylim=c(0,70000))
axis(2, col="white", col.ticks="white", col.axis="white", cex.axis=0.8)
text(c(0.7, 1.9, 3.1, 4.2), y=num+1000, labels=num, col='white')
#################

os_vector <- c(sum(df$os_android>0),
               sum(df$os_ios>0),
               sum(df$os_windows>0),
               sum(df$os_osx>0),
               sum(df$os_bsd>0) +
               sum(df$os_linux>0) +
               sum(df$os_other>0))

x <- c('Android', 'iOS', 'Windows', 'OSX', 'Others')

ggplot(data.frame(x, os_vector), aes(x, os_vector, fill=as.factor(x))) +
  geom_bar(stat='identity') + ylab("Count") + xlab("OS") +
  theme_wsj()  +
  geom_text(stat='identity', aes(label=os_vector), vjust=-1) +
  scale_fill_brewer(palette="Pastel2") +
  guides(fill=FALSE)

names(os_vector)<- x
par(bg=NA)
barplot(os_vector, col=c('#f6eff7','#bdc9e1','#4a1486','#1c9099','#016c59'), axes = F, col.axis='white', ylim=c(0, 55000))
text(c(0.7, 1.9, 3.1, 4.3, 5.5), y=os_vector+1000, labels=os_vector, col='white')
axis(2, col="white", col.ticks="white", col.axis="white", cex.axis=0.8)

########

browser_vector <- c(sum(df$browser_android>0),
                    sum(df$browser_chrome>0),
                    sum(df$browser_chromium>0),
                    sum(df$browser_edge>0),
                    sum(df$browser_firefox>0),
                    sum(df$browser_ie>0),
                    sum(df$browser_opera>0),
                    sum(df$browser_other>0),
                    sum(df$browser_safari>0),
                    sum(df$browser_unknown)>0)


x <- c('Android', 'Chrome', 'Chromium', 'Edge', 'Firefox', 'IE', 'Opera', 'Other', 'Safari', 'Unknown')

ggplot(data.frame(x, browser_vector), aes(x, browser_vector, fill=as.factor(x))) +
  geom_bar(stat='identity') + ylab("Count") + xlab("OS") +
  theme_wsj()  +
  geom_text(stat='identity', aes(label=browser_vector), vjust=-1) +
  scale_fill_brewer(palette="Pastel2") +
  guides(fill=FALSE)

names(browser_vector)<- x
par(bg=NA)
barplot(browser_vector, col=c('#a50026',
  '#d73027',
  '#f46d43',
  '#fdae61',
  '#fee08b',
  '#d9ef8b',
  '#a6d96a',
  '#66bd63',
  '#1a9850',
  '#006837'), axes = F, col.axis='white', ylim=c(0, 70000))
text(c(0.7, 1.9, 3.1, 4.3, 5.5, 6.6, 7.8, 9, 10.4, 11.5), y=browser_vector+1000, labels=browser_vector, col='white')
axis(2, col="white", col.ticks="white", col.axis="white", cex.axis=0.8)
