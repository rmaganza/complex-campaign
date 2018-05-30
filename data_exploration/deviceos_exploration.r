library(ggplot2)
library(RColorBrewer)
library(ggthemes)

ggplot(data=df, aes(x=factor(device_type), fill=factor(device_type))) +
  geom_bar(aes(y = (..count..))) +
  scale_x_discrete(labels = c('Mobile', 'Desktop', 'Others', 'Tablet')) +
  theme_wsj()  +
  geom_text(stat='count', aes(label=..count..), vjust=-1) +
  scale_fill_brewer(palette="Pastel2") +
  guides(fill=FALSE)
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
