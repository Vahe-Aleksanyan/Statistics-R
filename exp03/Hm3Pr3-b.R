head(pressure)

mean_temp = mean(pressure$temperature)
mean_temp

median_pressure = median(pressure$pressure)
median_pressure

tream_mean_pres = mean(pressure$pressure, 0.23)
tream_mean_pres

first_9_temp = pressure$temperature[1:9]
first_9_temp_mean = mean(first_9_temp)
first_9_temp_mean

smallest_9_temp = head(sort(pressure$temperature), 9)
smallest_9_temp_mean = mean(smallest_9_temp)
smallest_9_temp_mean

temp = pressure$temperature
pres = pressure$pressure
par(mfrow = c(1, 3)) 
plot(pres,temp, col='red', pch=19, main='Pressure vs Temperature;')


lnPressure = log(pressure$pressure)
plot(lnPressure, temp, col='blue', pch=19, main='ln(Pressure) vs Temperature')
lntemp = log(pressure$temperature)
plot(lnPressure, lntemp, col='green', pch=19, main=' ln(Pressure) vs ln(Temperature)')
