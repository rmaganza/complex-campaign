library(RColorBrewer)

# Clock plot function
clock.plot <- function (x, col = rainbow(n), ...) {
  if( min(x)<0 ) x <- x - min(x)
  if( max(x)>1 ) x <- x/max(x)
  n <- length(x)
  if(is.null(names(x))) names(x) <- 0:(n-1)
  m <- 1.05
  plot(0, type = 'n', xlim = c(-m,m), ylim = c(-m,m), axes = F, xlab = '', ylab = '', ...)
  a <- pi/2 - 2*pi/200*0:200
  polygon( cos(a), sin(a) )
  v <- .02
  a <- pi/2 - 2*pi/n*0:n
  segments( (1+v)*cos(a), (1+v)*sin(a), (1-v)*cos(a), (1-v)*sin(a) )
  segments( cos(a), sin(a),0, 0, col = 'light grey', lty = 3)
  ca <- -2*pi/n*(0:50)/50
  for (i in 1:n) {
    a <- pi/2 - 2*pi/n*(i-1)
    b <- pi/2 - 2*pi/n*i
    polygon( c(0, x[i]*cos(a+ca), 0), c(0, x[i]*sin(a+ca), 0), col=col[i] )
    v <- .1
    text((1+v)*cos(a), (1+v)*sin(a), names(x)[i], col='white')
  }
}

ore <- c("02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13",
         "14", "15", "16", "17", "18", "19", "20", "21", "22", "23")

indexes_00 <-  c(grep("00_00", colnames(df)), grep("00_30", colnames(df)))
indexes_01 <- c(grep("01_00", colnames(df)), grep("01_30", colnames(df)))
indexes_hour <- list(c(indexes_00), c(indexes_01))

for (hour in ore) {
  indexes <- c(grep(paste0(hour,"_"), colnames(df)))
  print(indexes)
  indexes_hour[[hour]] <- indexes
}

sumvector <- numeric()

for (index in indexes_hour) {
  sumh <- sum(rowSums(df[,index])>0)
  sumvector <- append(sumvector, sumh)
}

par(bg=NA)
cols <- colorRampPalette(brewer.pal(9, "RdYlBu"))(24)
cols <- c(tail(cols, 6), head(cols, -6))
clock.plot(sumvector, col=cols)

