library(unbalanced)

oversample <- function(X, Y) {
  over <- ubOver(X, Y)
  data.frame(clicked=over$Y, over$X)
}

undersample <- function(X,Y) {
  under <- ubUnder(X, Y)
  data.frame(clicked=under$Y, under$X)
}

df_no_response <- train_no_feelings %>% select(-c(clicked, clicks, impressions))

df_no_feelings_oversampled_train <- oversample(df_no_response, train_no_feelings$clicked)
df_no_feelings_undersampled_train <- undersample(df_no_response, train_no_feelings$clicked)

