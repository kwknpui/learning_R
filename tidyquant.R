library(tidyquant)

imkta <- getSymbols("imkta", from = "2010-01-01", to = "2019-12-31", auto.assign = FALSE)

tsm <- getSymbols("tsm", from = "2010-01-01", to = "2019-12-31", auto.assign = FALSE)

combined <- cbind(imkta,tsm) %>% head()

imkta <- Ad(imkta)
tsm <- Ad(tsm)

ad_combined <- cbind(imkta,tsm) %>% head()

plot.zoo(imkta,main="IMKTA")
plot.zoo(tsm,main="TSM")


install.packages("PerforanceAnalytics")

library(PerformanceAnalytics)

imkta_ret <- Return.calculate(imkta)
tsm_ret <- Return.calculate(tsm)
head(cbind(imkta_ret,tsm_ret))

#remove fist NA row
imkta_ret <- imkta_ret[(-1),]
tsm_ret <- tsm_ret[(-1),]

rets <- cbind(imkta_ret,tsm_ret)

#In R, the c() function returns a vector (a one dimensional array).
eq_weights <- c(0.5,0.5)

portfolio_bnh <- Return.portfolio(R=rets, weights=eq_weights, verbose=TRUE)
portfolio_rebal <- Return.portfolio(R=rets, weights=eq_weights, rebalance_on ="months", verbose=TRUE)

#The $ allows you extract elements by name from a named list. For example
#x <- list(a=1, b=2, c=3)
#x$b
# [1] 2

par(mfrow=c(2,1), mar=c(2,4,2,2))
plot.zoo(portfolio_bnh$returns)
plot.zoo(portfolio_rebal$returns)
