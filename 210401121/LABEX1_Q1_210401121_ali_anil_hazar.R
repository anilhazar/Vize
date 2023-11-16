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
