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

# save(train_no_feelings, validation_no_feelings, test_no_feelings, file='data/split/split_no_feelings.RData')
# save(train_feelings, validation_feelings, test_feelings, file='data/split/split_feelings.RData')

smp_size_30 <- floor(0.3 * nrow(df_no_feelings))
smp_size_50 <- floor(0.5 * nrow(df_no_feelings))

train_ind <- sample(seq_len(nrow(df_no_feelings)), size = smp_size_30)
train_30 <- df_no_feelings[train_ind,]
test_70 <- df_no_feelings[-train_ind,]

train_ind_50 <- sample(seq_len(nrow(df_no_feelings)), size = smp_size_50)
train_50 <- df_no_feelings[train_ind_50,]
test_50 <- df_no_feelings[-train_ind_50,]


# save(train_30, test_70, file='data/split/split_30_70.RData')
# save(train_50, test_50, file='data/split/split_50_50.RData')
