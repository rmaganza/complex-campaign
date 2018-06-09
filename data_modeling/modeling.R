

library(kernlab)
library(rpart)
library(caret)
library(rpart.plot)
library(randomForest)
library(wordcloud)
library(dplyr)

y<-get_response_for_binary_task(df_no_feelings_oversampled_train)
train<-df_no_feelings_oversampled_train
validation<- validation_no_feelings[,-c(1,2)]
y_val <- get_response_for_binary_task(validation_no_feelings)

###########
#logistico#
###########

mod_logistico<-glm(clicked~.,data=train,family = 'binomial')
prev_logistic<-predict(mod_logistico,type='response',newdata=validation)
prev_logistic <- ifelse(prev_logistic < 0.5, 0, 1)
conf.logistico <- confusionMatrix(as.factor(prev_logistic),as.factor(y_val))
conf.logistico








####################
#albero decisionale#
####################

decision_tree<-rpart(clicked~.,data = train)
#rpart.plot(decision_tree)
pred.decision.tree<-predict(decision_tree,newdata =validation)
previsione=ifelse(pred.decision.tree>0.5, 1, 0)
conf.alberoR=confusionMatrix(as.factor(previsione),as.factor(y_val))
conf.alberoR


###############
#Random Forest#
###############

random_forest<- randomForest(clicked~.,data=train, ntree=200, importance=T)
varImpPlot(random_forest)
prediction_random<- predict(random_forest, newdata=validation)
prediction_random <- ifelse(prediction_random < 0.5, 0 , 1)
conf.randomforest <- confusionMatrix(table(prediction_random, y_val))
conf.randomforest

random_forest$importance

wordcloud(row.names(random_forest$importance),random_forest$importance[,1])
wordcloud(row.names(random_forest$importance),random_forest$importance[,2])


## PLR ##

library(PRROC)


y <- factor(ifelse(train_50$clicked == 1, "yes", "no"), levels = c("yes", "no"))
x <- train_50 %>% select(-c(clicked, clicks, impressions))

# parallel computing
library(doSNOW)

cl <- makeCluster(4, type = "SOCK")
registerDoSNOW(cl)
#####

folds <- 5
repeats <- 3
foldindex <- createMultiFolds(y, folds, times=repeats)
trcontrol <- trainControl(number=folds, repeats=repeats, index=foldindex, sampling='up', search = 'random', method = 'repeatedcv', summaryFunction = prSummary, classProbs = T)

plr <- caret::train(x, y, trControl=trcontrol, method='plr', metric='AUC')

stopCluster(cl)

plrpred <- predict(plr, newdata=test_50, type='prob')
plr_binary <- ifelse(plrpred[,1]>0.5, "yes", "no")
clicked_test <- ifelse(test_50$clicked==1, "yes", "no")


confusionMatrix(as.factor(plr_binary), as.factor(clicked_test), mode="everything", positive = "yes")


split_deciles <- cut(plrpred[,1], unique(quantile(plrpred[,1], prob = 0:10 / 10, names = FALSE)), include.lowest = T, right=F)

test_split <- data.frame(test_50, "deciles"=split_deciles)
test_grp <- test_split %>% group_by(deciles)
test_deciles_grp <- test_grp %>% summarise(sum(clicked))
test_grp %>% summarise(n())

#top 2 decili: 23 clickers

sum(test_50$clicked)/10



