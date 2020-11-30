#Definer function for ci
#install.packages('gmodels')
library(gmodels)
# Indlæs først alle distancer til forlandskanten (locate features along routes)
Dist_23_10 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Afstande_forland_features/Afstande_OBS_features_23_10.csv',header = T)
Dist_24_10 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Afstande_forland_features/Afstande_OBS_features_24_10.csv',header = T)
Dist_12_11 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Afstande_forland_features/Afstande_OBS_features_12_11.csv',header = T)
Dist_13_11 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Afstande_forland_features/Afstande_OBS_features_13_11.csv',header = T)
Dist_15_11 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Afstande_forland_features/Afstande_OBS_features_15_11.csv',header = T)


# Trim nu datasættet pba. unikt id og min. distance til forlandskant

library(data.table)
Dist_23_10 <- data.table(Dist_23_10)
Dist_24_10 <- data.table(Dist_24_10)
Dist_12_11 <- data.table(Dist_12_11)
Dist_13_11 <- data.table(Dist_13_11)
Dist_15_11 <- data.table(Dist_15_11)
Dist_23_10 <- Dist_23_10[ , .SD[which.min(MEAS)], by = RID]
Dist_24_10 <- Dist_24_10[ , .SD[which.min(MEAS)], by = RID]
Dist_12_11 <- Dist_12_11[ , .SD[which.min(MEAS)], by = RID]
Dist_13_11 <- Dist_13_11[ , .SD[which.min(MEAS)], by = RID]
Dist_15_11 <- Dist_15_11[ , .SD[which.min(MEAS)], by = RID]

# View(Dist_12_11)
# Indlæs id for alle forlandskantforsøg for at matche
Place_23_10 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Placeringer/Placeringer_23_10.csv',header = T)
Place_24_10 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Placeringer/Placeringer_24_10.csv',header = T)
Place_12_11 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Placeringer/Placeringer_12_11.csv',header = T)
Place_13_11 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Placeringer/Placeringer_13_11.csv',header = T)
Place_13_11
Place_15_11 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Placeringer/Placeringer_15_11.csv',header = T)
# Tildel unik forsøgskode
Place_23_10 <- cbind(Place_23_10,'23_10')
colnames(Place_23_10) <- c('Hoejde','xcoord','ycoord','id')
Place_24_10 <- cbind(Place_24_10,'24_10')
colnames(Place_24_10) <- c('Hoejde','xcoord','ycoord','id')
Place_12_11 <- cbind(Place_12_11[2],Place_12_11[6:7],'12_11')
colnames(Place_12_11) <- c('Hoejde','xcoord','ycoord','id')
Place_13_11 <- cbind(Place_13_11[2],Place_13_11[5:6],'13_11')
colnames(Place_13_11) <- c('Hoejde','xcoord','ycoord','id')
Place_15_11 <- cbind(Place_15_11[2],Place_15_11[5:6],'15_11')
colnames(Place_15_11) <- c('Hoejde','xcoord','ycoord','id')

# Trim xcoord - rund af
Place_12_11$xcoord <- round(Place_12_11$xcoord,0)
Place_13_11$xcoord <- round(Place_13_11$xcoord,0)
Place_15_11$xcoord <- round(Place_15_11$xcoord,0)
Place_23_10$xcoord <- round(Place_23_10$xcoord,0)
Place_24_10$xcoord <- round(Place_24_10$xcoord,0)

Place_12_11
Place_13_11
Place_15_11
Place_23_10
Place_24_10

Place_Dist_12_11 <- merge(Place_12_11, Dist_12_11, 
                                 by=0, all.x=TRUE, all.y=FALSE, by.x = "xcoord", by.y = "RID",
                                 sort = TRUE)  # merge by row names (by=0 or by="row.names")
Place_Dist_13_11 <- merge(Place_13_11, Dist_13_11, 
                          by=0, all.x=TRUE, all.y=FALSE, by.x = "xcoord", by.y = "RID",
                          sort = TRUE)  # merge by row names (by=0 or by="row.names")

Place_Dist_15_11 <- merge(Place_15_11, Dist_15_11, 
                          by=0, all.x=TRUE, all.y=FALSE, by.x = "xcoord", by.y = "RID",
                          sort = TRUE)  # merge by row names (by=0 or by="row.names")

Place_Dist_23_10 <- merge(Place_23_10, Dist_23_10, 
                          by=0, all.x=TRUE, all.y=FALSE, by.x = "xcoord", by.y = "RID",
                          sort = TRUE)  # merge by row names (by=0 or by="row.names")

Place_Dist_24_10 <- merge(Place_24_10, Dist_24_10, 
                          by=0, all.x=TRUE, all.y=FALSE, by.x = "xcoord", by.y = "RID",
                          sort = TRUE)  # merge by row names (by=0 or by="row.names")

#View(Place_Dist_12_11)
#View(Place_Dist_13_11)
#View(Place_Dist_15_11)
#View(Place_Dist_23_10)
#View(Place_Dist_24_10)

# saml alle place til et samlet dataframe (koordinater til første intersection - figur)
Place_Dist_samlet <- rbind(Place_Dist_23_10,Place_Dist_24_10,Place_Dist_12_11,
                      Place_Dist_13_11,Place_Dist_15_11)
write.csv(Place_Dist_samlet, file = "G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Place_samlet.csv")

# Udregn nu for 12 cm til tabel
Dist_forland_12_11 <- Place_Dist_12_11[with(Place_Dist_12_11, Hoejde == "12"), ]
Dist_forland_13_11 <- Place_Dist_13_11[with(Place_Dist_13_11, Hoejde == "12"), ]
Dist_forland_15_11 <- Place_Dist_15_11[with(Place_Dist_15_11, Hoejde == "12"), ]
Dist_forland_23_10 <- Place_Dist_23_10[with(Place_Dist_23_10, Hoejde == "1"), ]
Dist_forland_24_10 <- Place_Dist_24_10[with(Place_Dist_24_10, Hoejde == "1"), ]

Dist_forland_13_11
# For 12_11 Rejsby
mean(Dist_forland_12_11$MEAS)
median(Dist_forland_12_11$MEAS)
NROW(Dist_forland_12_11$MEAS)
max(Dist_forland_12_11$MEAS)
min(Dist_forland_12_11$MEAS)
t.test(Dist_forland_12_11$MEAS)

# For 13_11 RK (N)
mean(Dist_forland_13_11$MEAS)
median(Dist_forland_13_11$MEAS)
NROW(Dist_forland_13_11$MEAS)
max(Dist_forland_13_11$MEAS)
min(Dist_forland_13_11$MEAS)
t.test(Dist_forland_13_11$MEAS)

# For 15_11 RD
mean(Dist_forland_15_11$MEAS)
median(Dist_forland_15_11$MEAS)
NROW(Dist_forland_15_11$MEAS)
max(Dist_forland_15_11$MEAS)
min(Dist_forland_15_11$MEAS)
t.test(Dist_forland_15_11$MEAS)

# For 23_10 RK (S)
mean(Dist_forland_23_10$MEAS)
median(Dist_forland_23_10$MEAS)
NROW(Dist_forland_23_10$MEAS)
max(Dist_forland_23_10$MEAS)
min(Dist_forland_23_10$MEAS)
t.test(Dist_forland_23_10$MEAS)

# For 24_10
mean(Dist_forland_24_10$MEAS)
median(Dist_forland_24_10$MEAS)
NROW(Dist_forland_24_10$MEAS)
max(Dist_forland_24_10$MEAS)
min(Dist_forland_24_10$MEAS)
t.test(Dist_forland_24_10$MEAS)


# Indlæs nu afstande til obspos
Afstand_obs_23_10 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Afstande_nærmeste_obs/Afstande_nærmeste_obs_23_10.csv',header = T)
Afstand_obs_24_10 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Afstande_nærmeste_obs/Afstande_nærmeste_obs_24_10.csv',header = T)
Afstand_obs_12_11 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Afstande_nærmeste_obs/Afstande_nærmeste_obs_12_11.csv',header = T)
Afstand_obs_13_11 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Afstande_nærmeste_obs/Afstande_nærmeste_obs_13_11.csv',header = T)
Afstand_obs_15_11 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Afstande_nærmeste_obs/Afstande_nærmeste_obs_15_11.csv',header = T)


Afstand_obs_12_11 <- Afstand_obs_12_11[with(Afstand_obs_12_11, Hoejde == "12"), ]
Afstand_obs_13_11 <- Afstand_obs_13_11[with(Afstand_obs_13_11, Hoejde == "12"), ]
Afstand_obs_15_11 <- Afstand_obs_15_11[with(Afstand_obs_15_11, Hoejde == "12"), ]
Afstand_obs_23_10 <- Afstand_obs_23_10[with(Afstand_obs_23_10, id == "1"), ]
Afstand_obs_24_10 <- Afstand_obs_24_10[with(Afstand_obs_24_10, id == "1"), ]

# Aflæs nu afstande fra 12 cm silhuetten
# 12_11
mean(Afstand_obs_12_11$distance)
median(Afstand_obs_12_11$distance)
max(Afstand_obs_12_11$distance)
min(Afstand_obs_12_11$distance)
ci(Afstand_obs_12_11$distance, confidence = 0.95, alpha=1)
t.test(Afstand_obs_12_11$distance)


# 13_11
mean(Afstand_obs_13_11$distance)
median(Afstand_obs_13_11$distance)
max(Afstand_obs_13_11$distance)
min(Afstand_obs_13_11$distance)
t.test(Afstand_obs_13_11$distance)


# 15_11
mean(Afstand_obs_15_11$distance)
median(Afstand_obs_15_11$distance)
max(Afstand_obs_15_11$distance)
min(Afstand_obs_15_11$distance)
t.test(Afstand_obs_15_11$distance)


# 23_10
mean(Afstand_obs_23_10$distance)
median(Afstand_obs_23_10$distance)
max(Afstand_obs_23_10$distance)
min(Afstand_obs_23_10$distance)
t.test(Afstand_obs_23_10$distance)

# 24_10
mean(Afstand_obs_24_10$distance)
median(Afstand_obs_24_10$distance)
max(Afstand_obs_24_10$distance)
min(Afstand_obs_24_10$distance)
t.test(Afstand_obs_24_10$distance)


# Indlæs nu ELEVATION af forlandet
Elevation_forland_23_10 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Elevation_forland/Intersections_forlandskant_23_10.csv',header = T)
Elevation_forland_24_10 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Elevation_forland/Intersections_forlandskant_24_10.csv',header = T)
Elevation_forland_12_11 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Elevation_forland/Intersections_forlandskant_12_11.csv',header = T)
Elevation_forland_13_11 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Elevation_forland/Intersections_forlandskant_13_11.csv',header = T)
Elevation_forland_15_11 <- read.csv('G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Elevation_forland/Intersections_forlandskant_15_11.csv',header = T)

# 12_11
mean(Elevation_forland_12_11$HOEJDE_2)
median(Elevation_forland_12_11$HOEJDE_2)
max(Elevation_forland_12_11$HOEJDE_2)
min(Elevation_forland_12_11$HOEJDE_2)
t.test(Elevation_forland_12_11$HOEJDE_2)

# 13_11
mean(Elevation_forland_13_11$HOEJDE_2)
median(Elevation_forland_13_11$HOEJDE_2)
max(Elevation_forland_13_11$HOEJDE_2)
min(Elevation_forland_13_11$HOEJDE_2)
t.test(Elevation_forland_13_11$HOEJDE_2)


# 15_11
mean(Elevation_forland_15_11$HOEJDE_2)
median(Elevation_forland_15_11$HOEJDE_2)
max(Elevation_forland_15_11$HOEJDE_2)
min(Elevation_forland_15_11$HOEJDE_2)
t.test(Elevation_forland_15_11$HOEJDE_2)


# 23_10
mean(Elevation_forland_23_10$HOEJDE)
median(Elevation_forland_23_10$HOEJDE)
max(Elevation_forland_23_10$HOEJDE)
min(Elevation_forland_23_10$HOEJDE)
t.test(Elevation_forland_23_10$HOEJDE)

# 24_10
mean(Elevation_forland_24_10$HOEJDE)
median(Elevation_forland_24_10$HOEJDE)
max(Elevation_forland_24_10$HOEJDE)
min(Elevation_forland_24_10$HOEJDE)
t.test(Elevation_forland_24_10$HOEJDE)

