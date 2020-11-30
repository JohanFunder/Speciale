

# Indlæs metadata
system2("exiftool", args="-GpsAltitude -GPSlatitude -GPSlongitude -ImageHeight -ImageWidth  -csv -t -r 
        F:/Vadehavet/Overflyvninger/11_15_19/15_11_videoer/DJI_0457_frames",
        stdout="F:/Vadehavet/Fotos_responsafstand/15_11_DJI_0457_frames.csv",stderr = TRUE)

# Indlæs .csv
data1 <- read.csv("F:/Vadehavet/Fotos_responsafstand/15_11_DJI_0457_frames.csv")
View(data1)


