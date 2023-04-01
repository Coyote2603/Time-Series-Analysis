#ACF of random series
set.seed(1234)
rdata=rnorm(100,0,1)
ts.plot(rdata)#time series of random data
library(tseries)
acf(rdata)# to see the auto correlation 
#changing it to the further lags
rho=acf(rdata,lag=30)#for random data the auto correlation plot is close to the threshold
rho
#randomness imply randomness but converse may not be true
#uncorrelation of the random variable is acf plot

#if  all the values are coming under threshold  line,then the data is random
#model the series to remove  non randomness( there is no auto correlation)
#if the series is random the data is stationary
#ACF of the trend component
#package astsa
library(astsa)
data(globtemp)
class(globtemp)
ts.plot(globtemp)
acf(globtemp)
#acf is decaying after some time
data=seq(1:100)
data2=data[100:1]



#
ts.plot(data2)
acf(data2)



#importing the data
airline=read.csv(file.choose())
airline
colnames(airline)=c("Month","Airline")
airline
attach(airline)
ts.plot(Airline)
airline_ts=ts(Airline,start=1963,end=1970,freq=12)
airline_ts
ts.plot(airline_ts)
#it can be additive or multiplicative 
#it is additive data
#it has ups and downs in  each cycle
#WE check the acf curve next
acf(airline_ts)
#to get proper access in x axis
install.packages('forecast')
library(forecast)
Acf(airline_ts)
#after every 12  months of time we have a pattern (this is how seasonal data looks like)
#lag starts form 1


