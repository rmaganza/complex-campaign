source('data_preparation/resample.R')

tvt_split <- function(dataset, probs=c(0.65,0.2, 0.15)) {
  g <- sample(cut(
    seq(nrow(dataset)),
    nrow(dataset)*cumsum(c(0,probs)),
    labels = c("train","validation","test")
  ))

  split(dataset, g)
}

remove_redundant_column_for_binary_task <- function(df) {
  col_clicks <- grep('clicks', colnames(df))
  col_impression <- grep('impression', colnames(df))
  df[,-c(col_impression, col_clicks)]
}

get_response_for_binary_task <- function(df) {
  df$clicked
}


tvt_no_feelings <- tvt_split(df_no_feelings)
train_no_feelings <- tvt_no_feelings$train
validation_no_feelings <- tvt_no_feelings$validation
test_no_feelings <- tvt_no_feelings$test

tvt_feelings <- tvt_split(df_feelings)
train_feelings <- tvt_feelings$train
validation_feelings <- tvt_feelings$validation
test_feelings <- tvt_feelings$test

# save(train_no_feelings, validation_no_feelings, test_no_feelings, file='data/split/spit_no_feelings.RData')
# save(train_feelings, validation_feelings, test_feelings, file='data/split/split_feelings.RData')
