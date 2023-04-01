gasoline=read.csv(file.choose())
head(gasoline)
colnames(gasoline)=c("gasoline")
gs_ts=ts(gasoline,start=1960,end=1975,freq=12)
gs_ts
ts.plot(gs_ts)

gs_log=log(gs_ts)
ts.plot(gs_log)
par(mfrow=c(2,2))
#seasonal component
#trend component
gs_tr=diff(gs_log)
ts.plot(gs_tr)

#Seasonal component
gs_sn=diff(gs_tr,lag=12)
ts.plot(gs_sn)
acf(gs_sn)

gs_sn2=diff(gs_log,lag=12)
ts.plot(gs_sn2)

#trend component
gs_tr2=diff(gs_sn2)
ts.plot(gs_tr2)
acf(gs_tr2)

#final plots
acf(gs_sn)
acf(gs_tr2)


#instead of ols we can apply mam method 
#estimate the trend component mt
#step-1 estimate ma(data,order=3)
#step-2 zt-mt
#step-3 diff(data1,lag=12)

