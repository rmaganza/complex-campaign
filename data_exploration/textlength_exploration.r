length_vector <- c(sum(df_cleaned$L00_50>0),
                    sum(df_cleaned$L51_100>0),
                    sum(df_cleaned$L101_250>0),
                    sum(df_cleaned$L251_500>0),
                    sum(df_cleaned$L501_1000>0),
                    sum(df_cleaned$L1001_2500>0),
                    sum(df_cleaned$L2501_5000>0),
                    sum(df_cleaned$L5001_10000>0),
                    sum(df_cleaned$L10001_more>0))


x <- c('0-50', '51-100', '101-250', '251-500', '501-1000', '1001-2500', '2501-5000', '5001-10000','10000+')

ggplot(data.frame(x, length_vector), aes(x, length_vector, fill=as.factor(x))) +
  geom_bar(stat='identity') + ylab("Count") + xlab("OS") +
  theme_wsj()  +
  geom_text(stat='identity', aes(label=length_vector), vjust=-1) +
  scale_fill_brewer(palette="Pastel2") +
  guides(fill=FALSE)
