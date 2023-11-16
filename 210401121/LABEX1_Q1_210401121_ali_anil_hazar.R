#1.1

dosya_url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
dosya_isim <- "MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(dosya_url, destfile = dosya_isim, method = "auto",mode = "wb")

#1.2 

file.exists(dosya_isim)

maps <- read.csv(dosya_isim, sep = ";", header = TRUE)


# 1.3

maps$Latitude<-gsub("N","",as.character(maps$Latitude))
maps$Latitude<-as.numeric(maps$Latitude)

# 1.4

idx <- grep("W", maps$Longitude)

#1.5

maps$Longitude <- gsub("[EW]", "", maps$Longitude)

#1.6

maps$Year <- gsub("AD", "", maps$Year)

#1.7

maps$Latitude <- as.numeric(gsub("[NW]", "", maps$Latitude))
maps$Longitude <- as.numeric(gsub("[EW]", "", maps$Longitude))

# 1.8

maps$Year <- as.numeric(gsub("AD", "", maps$Year))

#1.9

maps$Longitude[idx] <- maps$Longitude[idx] * -1

#1.10

finalResult <- data.frame(Longitude = maps$Longitude, Latitude = maps$Latitude, Year = maps$Year)
