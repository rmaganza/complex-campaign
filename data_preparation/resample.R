library(unbalanced)

oversample <- function(X, Y, k=0) {
  over <- ubOver(X, Y, k=k)
  data.frame(clicked=over$Y, over$X)
}

undersample <- function(X,Y) {
  under <- ubUnder(X, Y)
  data.frame(clicked=under$Y, under$X)
}

df_no_response <- train_no_feelings %>% select(-c(clicked, clicks, impressions))

df_no_feelings_oversampled_train <- oversample(df_no_response, train_no_feelings$clicked)
df_no_feelings_undersampled_train <- undersample(df_no_response, train_no_feelings$clicked)

# save(df_no_feelings_oversampled_train, file='data/split/resampled/df_no_feelings_oversampled_train.RData')
# save(df_no_feelings_undersampled_train, file='data/split/resampled/df_no_feelings_undersampled_train.Rdata')

train_30_oversampled <- oversample(train_30[,-c(1,2,57)], train_30$clicked, k=150)
train_50_oversampled <- oversample(train_50[,-c(1,2,57)], train_50$clicked, k=0)
