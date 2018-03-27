# We use dataset'AirPassengers' to demonstrate how to do time series predict.
# AirPassenger is a classic time series dataset.
# In order to refer to general situation, we just use the number, but the format.

library(xts)
library(forecast)
library(ggplot2)

data("AirPassengers") # AirPassengers is a time series dataset
v1 <- as.vector(AirPassengers) # In order to refer to general situation, 
                               # we just use the number, but the format.

df1ts <- ts(v1, start = c(2006, 1), end = c(2017, 12), freq = 12) # Transfomating v1 into time series data
autoplot(df1ts)+ labs( x=('Date'), y=('Amount'), title=('Time Series'))

fit1 <- auto.arima(df1ts)
forecast1 <- forecast(fit1, level=0.95, h=36)
autoplot(forecast1) + labs( x=('Date'), y=('Amount'), title=('Time Series'))