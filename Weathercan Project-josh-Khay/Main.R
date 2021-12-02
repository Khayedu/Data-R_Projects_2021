# WeatherCan Data

stations.data <- stations()
head(stations.data)

# Finding the station IDs to get the data

vancouverStations <- stations_search(name = "VANCOUVER", interval = "day")
vancouverStationsID <-  vancouverStations$station_id[vancouverStations$station_name == "WEST VANCOUVER AUT"]

squamishStations <- stations_search(name = "SQUAMISH AIRPORT", interval = "day")
squamishStationsID <- squamishStations$station_id[squamishStations$end == "2021"]

pembertonStations <- stations_search(name = "PEMBERTON", interval = "day")
pembertonStationsID <- pembertonStations$station_id[pembertonStations$station_name == "PEMBERTON AIRPORT CS"]

lillooetStations <- stations_search(name = "LILLOOET", interval = "day")
lillooetStationsID <- lillooetStations$station_id[lillooetStations$end == "2021"]


# Downloading station data sets

vancouver.data <- weather_dl(station_ids = vancouverStationsID, start = "2020-01-01", end = "2020-12-31")
head(vancouver.data)

squamish.data <- weather_dl(station_ids = squamishStationsID, start = "2020-01-01", end = "2020-12-31")
head(squamish.data)

pemberton.data <- weather_dl(station_ids = pembertonStationsID, start = "2020-01-01", end = "2020-12-31")
head(pemberton.data)

lillooet.data <- weather_dl(station_ids = lillooetStationsID, start = "2020-01-01", end = "2020-12-31")
head(lillooet.data)


# Sort the data

vanPT <- select(vancouver.data, month, day, precip_amt, temp)

squamPT <- select(squamish.data, date, precip_amt, temp)

pembPT <- select(pemberton.data, date, precip_amt, temp)

lillPT <- select(squamish.data, date, precip_amt, temp)

#-Precip try-------------------------------------------------------------------
vanP <- data.frame("day" = rep(1,366), "total precip" = rep(1,366))

for (i in c(1:366)) {
  print(i)
  vanP$day[i] <- i
  
  start <- ((24 * (i-1)) + 1)
  print(start)
  
  end <- (24 * i)
  print(end)
 
  vanP$total.precip <- sum(vanPT$precip_amt[c(start:end)])
}

#sum(vanPT$precip_amt[1:24])

# -------------------------------------------------------------------------

start <- as.character(01-01-2020)


str(squamPT)









