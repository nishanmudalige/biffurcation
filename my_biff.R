m <- 1000
n <- 300
time <- m + n
r <- seq(0, 4, by=0.05)

x <- matrix(0, nrow=length(r), ncol=time)

# row entry = r
#x[1, 1] <- r[1]  # initial condition
x[, 1] <- 1.2  # initial condition

j <- 1

for(i in 1:length(r) ){
  for(j in 2:time){
    x[i, j] <- x[i, j-1]*exp( r[i]*(1 - x[i, j-1]) )
  }
}

# plot( c(0:time), x, type="o", ylab="Y", xlab="time", pch=20, lwd=2)

# for plotting



#time <- time[1:300]
x <- x[, 1001:ncol(x)]
y <- NULL

for(i in 1:length(r)){
  for(j in 1:ncol(x)){
    temp <- cbind(r[i], x[i,j])
    y <- rbind(y, temp)
  }  
}




plot(y[,1], y[,2])