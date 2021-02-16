#### Indlæs samlet
#Alle_prik_v1 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_prik/Sammenlign.udprik/Alle_prik_samlet/Alle_prik_samlet/Alle_prik_v1.csv',header = T)
#Alle_prik_v2 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_prik/Sammenlign.udprik/Alle_prik_samlet/Alle_prik_samlet/Alle_prik_v2.csv',header = T)
#View(Alle_prik_v1)
#View(Alle_prik_v2)
## sæt sammen til et enkelt dataframe
#Alle_prik_samlet <- rbind(Alle_prik_v1,Alle_prik_v2[,c("id","rep","person","xcoord","ycoord")])
#str(Alle_prik_samlet)
#View(Alle_prik_samlet)
# Udskift navne der starter med stort
#Alle_prik_samlet$id <- gsub('Gravand', 'gravand', Alle_prik_samlet$id)
#Alle_prik_samlet$id <- gsub('Ryle', 'ryle', Alle_prik_samlet$id)
#Alle_prik_samlet$id <- gsub('Strandskade', 'strandskade', Alle_prik_samlet$id)
#Alle_prik_samlet$id <- gsub('Li.kobbersneppe', 'kobber', Alle_prik_samlet$id)
#Alle_prik_samlet$id <- gsub('Vibe', 'vibe', Alle_prik_samlet$id)
#Alle_prik_samlet$id <- gsub('Klyde', 'klyde', Alle_prik_samlet$id)

#write.csv(Alle_prik_samlet, file = 'G:/Vadehavet/Alle_prik_csv/Alle_prik_samlet.csv')

# Indsæt renset version
Alle_prik_samlet <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_prik/Sammenlign.udprik/Alle_prik_samlet/Alle_prik_samlet/Alle_prik_samlet.csv',header = T)
Alle_prik_samlet

## Subset først efter arter
gravand <- Alle_prik_samlet[Alle_prik_samlet$id == "gravand", ]
ryle <- Alle_prik_samlet[Alle_prik_samlet$id == "ryle", ]
strandskade <- Alle_prik_samlet[Alle_prik_samlet$id == "strandskade", ]
kobber <- Alle_prik_samlet[Alle_prik_samlet$id == "kobber", ]
vibe <- Alle_prik_samlet[Alle_prik_samlet$id == "vibe", ]
klyde <- Alle_prik_samlet[Alle_prik_samlet$id == "klyde", ]
nrow(gravand)
nrow(ryle)
nrow(strandskade)
nrow(kobber)
nrow(vibe)
nrow(klyde)

# subset nu efter arter og replikationer
gravand_mean_rep_1 <- gravand[gravand$rep == 1, ]
gravand_mean_rep_2 <- gravand[gravand$rep == 2, ]
gravand_mean_rep_3 <- gravand[gravand$rep == 3, ]
gravand_mean_rep_4 <- gravand[gravand$rep == 4, ]
gravand_mean_rep_5 <- gravand[gravand$rep == 5, ]

ryle_mean_rep_1 <- ryle[ryle$rep == 1, ]
ryle_mean_rep_2 <- ryle[ryle$rep == 2, ]
ryle_mean_rep_3 <- ryle[ryle$rep == 3, ]
ryle_mean_rep_4 <- ryle[ryle$rep == 4, ]
ryle_mean_rep_5 <- ryle[ryle$rep == 5, ]

strandskade_mean_rep_1 <- strandskade[strandskade$rep == 1, ]
strandskade_mean_rep_2 <- strandskade[strandskade$rep == 2, ]
strandskade_mean_rep_3 <- strandskade[strandskade$rep == 3, ]
strandskade_mean_rep_4 <- strandskade[strandskade$rep == 4, ]
strandskade_mean_rep_5 <- strandskade[strandskade$rep == 5, ]

kobber_mean_rep_1 <- kobber[kobber$rep == 1, ]
kobber_mean_rep_2 <- kobber[kobber$rep == 2, ]
kobber_mean_rep_3 <- kobber[kobber$rep == 3, ]
kobber_mean_rep_4 <- kobber[kobber$rep == 4, ]
kobber_mean_rep_5 <- kobber[kobber$rep == 5, ]

vibe_mean_rep_1 <- vibe[vibe$rep == 1, ]
vibe_mean_rep_2 <- vibe[vibe$rep == 2, ]
vibe_mean_rep_3 <- vibe[vibe$rep == 3, ]
vibe_mean_rep_4 <- vibe[vibe$rep == 4, ]
vibe_mean_rep_5 <- vibe[vibe$rep == 5, ]

klyde_mean_rep_1 <- klyde[klyde$rep == 1, ]
klyde_mean_rep_2 <- klyde[klyde$rep == 2, ]
klyde_mean_rep_3 <- klyde[klyde$rep == 3, ]
klyde_mean_rep_4 <- klyde[klyde$rep == 4, ]
klyde_mean_rep_5 <- klyde[klyde$rep == 5, ]


# subset art efter person tøl nrow
gravand_johan <- nrow(gravand[gravand$person == 'Johan', ])
gravand_mads <- nrow(gravand[gravand$person == 'Mads', ])
gravand_rune <- nrow(gravand[gravand$person == 'Rune', ])

gravand_johan
gravand_mads
gravand_rune

ryle_johan <- nrow(ryle[ryle$person == 'Johan', ])
ryle_mads <- nrow(ryle[ryle$person == 'Mads', ])
ryle_rune <- nrow(ryle[ryle$person == 'Rune', ])

strandskade_johan <- nrow(strandskade[strandskade$person == 'Johan', ])
strandskade_mads <- nrow(strandskade[strandskade$person == 'Mads', ])
strandskade_rune <- nrow(strandskade[strandskade$person == 'Rune', ])


kobber_johan <- nrow(kobber[kobber$person == 'Johan', ])
kobber_mads <- nrow(kobber[kobber$person == 'Mads', ])
kobber_rune <- nrow(kobber[kobber$person == 'Rune', ])

vibe_johan <- nrow(vibe[vibe$person == 'Johan', ])
vibe_mads <- nrow(vibe[vibe$person == 'Mads', ])
vibe_rune <- nrow(vibe[vibe$person == 'Rune', ])

klyde_johan <- nrow(klyde[klyde$person == 'Johan', ])
klyde_mads <- nrow(klyde[klyde$person == 'Mads', ])
klyde_rune <- nrow(klyde[klyde$person == 'Rune', ])
klyde_rune

# Find først mean og min/max for alle arter
mean(c(nrow(klyde_rune),nrow(klyde_johan),nrow(klyde_mads)))
mean(c(nrow(ryle_rune),nrow(ryle_johan),nrow(ryle_mads)))
mean(c(nrow(strandskade_rune),nrow(strandskade_johan),nrow(strandskade_mads)))
mean(c(nrow(vibe_rune),nrow(vibe_johan),nrow(vibe_mads)))
mean(c(nrow(gravand_rune),nrow(gravand_johan),nrow(gravand_mads)))
mean(c(nrow(kobber_rune),nrow(kobber_johan),nrow(kobber_mads)))

min(c(nrow(klyde_rune),nrow(klyde_johan),nrow(klyde_mads)))
min(c(nrow(ryle_rune),nrow(ryle_johan),nrow(ryle_mads)))
min(c(nrow(strandskade_rune),nrow(strandskade_johan),nrow(strandskade_mads)))
min(c(nrow(vibe_rune),nrow(vibe_johan),nrow(vibe_mads)))
min(c(nrow(gravand_rune),nrow(gravand_johan),nrow(gravand_mads)))
min(c(nrow(kobber_rune),nrow(kobber_johan),nrow(kobber_mads)))

max(c(nrow(klyde_rune),nrow(klyde_johan),nrow(klyde_mads)))
max(c(nrow(ryle_rune),nrow(ryle_johan),nrow(ryle_mads)))
max(c(nrow(strandskade_rune),nrow(strandskade_johan),nrow(strandskade_mads)))
max(c(nrow(vibe_rune),nrow(vibe_johan),nrow(vibe_mads)))
max(c(nrow(gravand_rune),nrow(gravand_johan),nrow(gravand_mads)))
max(c(nrow(kobber_rune),nrow(kobber_johan),nrow(kobber_mads)))


################ Lav standardiseret mean 100*mean(obs-mean(x))/obs)

#### Med bootstrap replikationer **KLYDE**
library('boot')
prik.boot <- boot(data =( 
                    100*((abs(c(
                      
                      (klyde_johan-mean(c(klyde_mads,klyde_rune,klyde_johan)))/
                        klyde_johan,
                      (klyde_rune-mean(c(klyde_mads,klyde_rune,klyde_johan)))/
                        klyde_rune,
                      (klyde_mads-mean(c(klyde_mads,klyde_rune,klyde_johan)))/
                        klyde_mads
                    ))))
                    ),
                  statistic = function(x,i) mean(x[i]),R = 100000)
prik.ci <- boot.ci(boot.out = prik.boot, conf = 0.95, type = c('bca'))

prik.klyde <- c(prik.ci$t0, prik.ci$bca[4],prik.ci$bca[5])

#### Med bootstrap replikationer **RYLE**
library('boot')
prik.boot <- boot(data =( 
  100*((abs(c(
    
    (ryle_johan-mean(c(ryle_mads,ryle_rune,ryle_johan)))/
      ryle_johan,
    (ryle_rune-mean(c(ryle_mads,ryle_rune,ryle_johan)))/
      ryle_rune,
    (ryle_mads-mean(c(ryle_mads,ryle_rune,ryle_johan)))/
      ryle_mads
  ))))
),
statistic = function(x,i) mean(x[i]),R = 100000)
prik.ci <- boot.ci(boot.out = prik.boot, conf = 0.95, type = c('bca'))

prik.ryle <- c(prik.ci$t0, prik.ci$bca[4],prik.ci$bca[5])

#### Med bootstrap replikationer **GRAVAND**
library('boot')
prik.boot <- boot(data =( 
  100*((abs(c(
    
    (gravand_johan-mean(c(gravand_mads,gravand_rune,gravand_johan)))/
      gravand_johan,
    (gravand_rune-mean(c(gravand_mads,gravand_rune,gravand_johan)))/
      gravand_rune,
    (gravand_mads-mean(c(gravand_mads,gravand_rune,gravand_johan)))/
      gravand_mads
  ))))
),
statistic = function(x,i) mean(x[i]),R = 100000)
prik.ci <- boot.ci(boot.out = prik.boot, conf = 0.95, type = c('bca'))

prik.gravand <- c(prik.ci$t0, prik.ci$bca[4],prik.ci$bca[5])

#### Med bootstrap replikationer **STRANDSKADE**
library('boot')
prik.boot <- boot(data =( 
  100*((abs(c(
    
    (strandskade_johan-mean(c(strandskade_mads,strandskade_rune,strandskade_johan)))/
      strandskade_johan,
    (strandskade_rune-mean(c(strandskade_mads,strandskade_rune,strandskade_johan)))/
      strandskade_rune,
    (strandskade_mads-mean(c(strandskade_mads,strandskade_rune,strandskade_johan)))/
      strandskade_mads
  ))))
),
statistic = function(x,i) mean(x[i]),R = 100000)
prik.ci <- boot.ci(boot.out = prik.boot, conf = 0.95, type = c('bca'))

prik.strandskade <- c(prik.ci$t0, prik.ci$bca[4],prik.ci$bca[5])

#### Med bootstrap replikationer **KOBBER**
library('boot')
prik.boot <- boot(data =( 
  100*((abs(c(
    
    (kobber_johan-mean(c(kobber_mads,kobber_rune,kobber_johan)))/
      kobber_johan,
    (kobber_rune-mean(c(kobber_mads,kobber_rune,kobber_johan)))/
      kobber_rune,
    (kobber_mads-mean(c(kobber_mads,kobber_rune,kobber_johan)))/
      kobber_mads
  ))))
),
statistic = function(x,i) mean(x[i]),R = 100000)
prik.ci <- boot.ci(boot.out = prik.boot, conf = 0.95, type = c('bca'))

prik.kobber <- c(prik.ci$t0, prik.ci$bca[4],prik.ci$bca[5])

#### Med bootstrap replikationer **VIBE**
library('boot')
prik.boot <- boot(data =( 
  100*((abs(c(
    
    (vibe_johan-mean(c(vibe_mads,vibe_rune,vibe_johan)))/
      vibe_johan,
    (vibe_rune-mean(c(vibe_mads,vibe_rune,vibe_johan)))/
      vibe_rune,
    (vibe_mads-mean(c(vibe_mads,vibe_rune,vibe_johan)))/
      vibe_mads
  ))))
),
statistic = function(x,i) mean(x[i]),R = 100000)
prik.ci <- boot.ci(boot.out = prik.boot, conf = 0.95, type = c('bca'))

prik.vibe <- c(prik.ci$t0, prik.ci$bca[4],prik.ci$bca[5])

prik.sam <- rbind.data.frame(prik.gravand,prik.ryle,prik.strandskade,prik.kobber,prik.vibe,prik.klyde)
colnames(prik.sam) <- c('mean','lowerCI','upperCI')
row.names(prik.sam) <- c('Shelduck','Dunlin','Oystercatcher','Bar-tailed Godwit','Northern Lapwing','Avocet')
prik.sam$Precision <- c('Total count')
prik.sam



barplot(prik.sam[,1])

## Lav barplot
prik_bar <- barplot(prik.sam[,1], ylim=c(0,10),
                    names.arg=c('Shelduck','Dunlin','Bar-tailed Godwit','Oystercatcher'
                                ,'Avocet','Northern Lapwing'))

#confi
arrows(prik_bar, prik.sam[,3],
       prik_bar, prik.sam[,2], code = 3, angle = 90, length = 0.05)

mtext("Waterbird species", side=1, cex=1.5, line=1.5, outer=TRUE)   
mtext("Deviations in counted numbers (%)", side=2, cex=1.5, line=1.5, outer=TRUE)
mtext("Precision between operators", side=3, cex=1.5, line=1.5, outer=TRUE)



##############**************GEO**************############################
####subset art efter person geo
gravand_johan <- (gravand[gravand$person == 'Johan', ])
gravand_mads <- (gravand[gravand$person == 'Mads', ])
gravand_rune <- (gravand[gravand$person == 'Rune', ])

ryle_johan <- (ryle[ryle$person == 'Johan', ])
ryle_mads <- (ryle[ryle$person == 'Mads', ])
ryle_rune <- (ryle[ryle$person == 'Rune', ])

strandskade_johan <- (strandskade[strandskade$person == 'Johan', ])
strandskade_mads <- (strandskade[strandskade$person == 'Mads', ])
strandskade_rune <- (strandskade[strandskade$person == 'Rune', ])

kobber_johan <- (kobber[kobber$person == 'Johan', ])
kobber_mads <- (kobber[kobber$person == 'Mads', ])
kobber_rune <- (kobber[kobber$person == 'Rune', ])

vibe_johan <- (vibe[vibe$person == 'Johan', ])
vibe_mads <- (vibe[vibe$person == 'Mads', ])
vibe_rune <- (vibe[vibe$person == 'Rune', ])

klyde_johan <- (klyde[klyde$person == 'Johan', ])
klyde_mads <- (klyde[klyde$person == 'Mads', ])
klyde_rune <- (klyde[klyde$person == 'Rune', ])
klyde_rune
# Write csv med art og person (til GEO)
write.csv(gravand_johan, file = 'G:/Vadehavet/Alle_prik_csv/gravand_prik_johan.csv')
write.csv(gravand_mads, file = 'G:/Vadehavet/Alle_prik_csv/gravand_prik_mads.csv')
write.csv(gravand_rune, file = 'G:/Vadehavet/Alle_prik_csv/gravand_prik_rune.csv')
# For hver art
write.csv(rbind.data.frame(gravand_johan,gravand_mads, gravand_rune), file = 'G:/Vadehavet/Alle_prik_csv/Alle_prik_gravand.csv')

write.csv(ryle_johan, file = 'G:/Vadehavet/Alle_prik_csv/ryle_prik_johan.csv')
write.csv(ryle_mads, file = 'G:/Vadehavet/Alle_prik_csv/ryle_prik_mads.csv')
write.csv(ryle_rune, file = 'G:/Vadehavet/Alle_prik_csv/ryle_prik_rune.csv')
# For hver art
write.csv(rbind.data.frame(ryle_johan,ryle_mads, ryle_rune), file = 'G:/Vadehavet/Alle_prik_csv/Alle_prik_ryle.csv')

write.csv(strandskade_johan, file = 'G:/Vadehavet/Alle_prik_csv/strandskade_prik_johan.csv')
write.csv(strandskade_mads, file = 'G:/Vadehavet/Alle_prik_csv/strandskade_prik_mads.csv')
write.csv(strandskade_rune, file = 'G:/Vadehavet/Alle_prik_csv/strandskade_prik_rune.csv')
# For hver art
write.csv(rbind.data.frame(strandskade_johan,strandskade_mads,strandskade_rune), file = 'G:/Vadehavet/Alle_prik_csv/Alle_prik_strandskade.csv')

write.csv(kobber_johan, file = 'G:/Vadehavet/Alle_prik_csv/kobber_prik_johan.csv')
write.csv(kobber_mads, file = 'G:/Vadehavet/Alle_prik_csv/kobber_prik_mads.csv')
write.csv(kobber_rune, file = 'G:/Vadehavet/Alle_prik_csv/kobber_prik_rune.csv')
# For hver art
write.csv(rbind.data.frame(kobber_johan,kobber_mads,kobber_rune), file = 'G:/Vadehavet/Alle_prik_csv/Alle_prik_kobber.csv')

write.csv(vibe_johan, file = 'G:/Vadehavet/Alle_prik_csv/vibe_prik_johan.csv')
write.csv(vibe_mads, file = 'G:/Vadehavet/Alle_prik_csv/vibe_prik_mads.csv')
write.csv(vibe_rune, file = 'G:/Vadehavet/Alle_prik_csv/vibe_prik_rune.csv')
# For hver art
write.csv(rbind.data.frame(vibe_johan,vibe_mads,vibe_rune), file = 'G:/Vadehavet/Alle_prik_csv/Alle_prik_vibe.csv')

write.csv(klyde_johan, file = 'G:/Vadehavet/Alle_prik_csv/klyde_prik_johan.csv')
write.csv(klyde_mads, file = 'G:/Vadehavet/Alle_prik_csv/klyde_prik_mads.csv')
write.csv(klyde_rune, file = 'G:/Vadehavet/Alle_prik_csv/klyde_prik_rune.csv')
# For hver art
write.csv(rbind.data.frame(klyde_johan,klyde_mads,klyde_rune), file = 'G:/Vadehavet/Alle_prik_csv/Alle_prik_klyde.csv')


#Indlæs samlet geo med join afstande

Alle_geo_samlet <- read.csv('G:/Vadehavet//Alle_prik_csv/Geo_endelig/Samlet_geo.csv',header = T)
Alle_geo_samlet
gravand_geo <- (Alle_geo_samlet[Alle_geo_samlet$id == 'gravand', ])
ryle_geo <- (Alle_geo_samlet[Alle_geo_samlet$id == 'ryle', ])
strandskade_geo <- (Alle_geo_samlet[Alle_geo_samlet$id == 'strandskade', ])
kobber_geo <- (Alle_geo_samlet[Alle_geo_samlet$id == 'kobber', ])
vibe_geo <- (Alle_geo_samlet[Alle_geo_samlet$id == 'vibe', ])
klyde_geo <- (Alle_geo_samlet[Alle_geo_samlet$id == 'klyde', ])

# Find mindste afstande i mellem identificerede fugle
mean(gravand_geo$distance)
min(gravand_geo$distance)
quantile(gravand_geo$distance, probs = seq(0.05, 1, by = .15))

mean(ryle_geo$distance)
min(ryle_geo$distance)
quantile(ryle_geo$distance, probs = seq(0.05, 1, by = .15))

mean(strandskade_geo$distance)
min(strandskade_geo$distance)
quantile(strandskade_geo$distance, probs = seq(0.05, 1, by = .15))

mean(vibe_geo$distance)
min(vibe_geo$distance)
quantile(vibe_geo$distance, probs = seq(0.05, 1, by = .15))

mean(klyde_geo$distance)
min(klyde_geo$distance)
quantile(klyde_geo$distance, probs = seq(0.05, 1, by = .15))

mean(kobber_geo$distance)
min(kobber_geo$distance)
quantile(kobber_geo$distance, probs = seq(0.05, 1, by = .15))
median(kobber_geo$distance)



#### Indlæs alle spatial join resultater
Spatial_join_gravand <- read.csv('G:/Vadehavet//Alle_prik_csv/Geo_endelig/Spatial_join/Spatial_join_gravand.csv',header = T)
Spatial_join_strandskade <- read.csv('G:/Vadehavet//Alle_prik_csv/Geo_endelig/Spatial_join/Spatial_join_strandskade.csv',header = T)
Spatial_join_kobber <- read.csv('G:/Vadehavet//Alle_prik_csv/Geo_endelig/Spatial_join/Spatial_join_kobber.csv',header = T)
Spatial_join_ryle <- read.csv('G:/Vadehavet//Alle_prik_csv/Geo_endelig/Spatial_join/Spatial_join_ryle.csv',header = T)
Spatial_join_vibe <- read.csv('G:/Vadehavet//Alle_prik_csv/Geo_endelig/Spatial_join/Spatial_join_vibe.csv',header = T)
Spatial_join_klyde <- read.csv('G:/Vadehavet//Alle_prik_csv/Geo_endelig/Spatial_join/Spatial_join_klyde.csv',header = T)

## erstat værdier >3 med 3

mean(Spatial_join_gravand$Join_Count)
Spatial_join_vibe
Spatial_join_gravand <- cbind(apply(Spatial_join_gravand[2], 2, function(x) ifelse(x > 3, 3, x)), 
                           Spatial_join_gravand[])
Spatial_join_ryle <- cbind(apply(Spatial_join_ryle[1], 2, function(x) ifelse(x > 3, 3, x)), 
                           Spatial_join_ryle[])
Spatial_join_strandskade <- cbind(apply(Spatial_join_strandskade[1], 2, function(x) ifelse(x > 3, 3, x)), 
                           Spatial_join_strandskade[])
Spatial_join_kobber <- cbind(apply(Spatial_join_kobber[1], 2, function(x) ifelse(x > 3, 3, x)), 
                           Spatial_join_kobber[])
Spatial_join_vibe <- cbind(apply(Spatial_join_vibe[1], 2, function(x) ifelse(x > 3, 3, x)), 
                           Spatial_join_vibe[])
Spatial_join_klyde <- cbind(apply(Spatial_join_klyde[1], 2, function(x) ifelse(x > 3, 3, x)), 
                           Spatial_join_klyde[])

shapiro.test(Spatial_join_klyde$Join_Count)


#### Med bootstrap replikationer **KLYDE**
library('boot')
prik.boot <- boot(data =(Spatial_join_gravand$Join_Count),
statistic = function(x,i) mean(x[i]),R = 10000)
prik.ci <- boot.ci(boot.out = prik.boot, conf = 0.95, type = c('bca'))

prik.gravand <- c(prik.ci$t0, prik.ci$bca[4],prik.ci$bca[5])
prik.gravand <- prik.gravand/3*100
prik.gravand
#
prik.boot <- boot(data =(Spatial_join_ryle$Join_Count),
                  statistic = function(x,i) mean(x[i]),R = 10000)
prik.ci <- boot.ci(boot.out = prik.boot, conf = 0.95, type = c('bca'))

prik.ryle <- c(prik.ci$t0, prik.ci$bca[4],prik.ci$bca[5])
prik.ryle <- prik.ryle/3*100
prik.ryle
#
prik.boot <- boot(data =(Spatial_join_strandskade$Join_Count),
                  statistic = function(x,i) mean(x[i]),R = 10000)
prik.ci <- boot.ci(boot.out = prik.boot, conf = 0.95, type = c('bca'))

prik.strandskade <- c(prik.ci$t0, prik.ci$bca[4],prik.ci$bca[5])
prik.strandskade <- prik.strandskade/3*100
prik.strandskade
#
prik.boot <- boot(data =(Spatial_join_kobber$Join_Count),
                  statistic = function(x,i) mean(x[i]),R = 10000)
prik.ci <- boot.ci(boot.out = prik.boot, conf = 0.95, type = c('bca'))

prik.kobber <- c(prik.ci$t0, prik.ci$bca[4],prik.ci$bca[5])
prik.kobber <- prik.kobber/3*100
prik.kobber
#
prik.boot <- boot(data =(Spatial_join_vibe$Join_Count),
                  statistic = function(x,i) mean(x[i]),R = 10000)
prik.ci <- boot.ci(boot.out = prik.boot, conf = 0.95, type = c('bca'))

prik.vibe <- c(prik.ci$t0, prik.ci$bca[4],prik.ci$bca[5])
prik.vibe <- prik.vibe/3*100
prik.vibe
#
prik.boot <- boot(data =(Spatial_join_klyde$Join_Count),
                  statistic = function(x,i) mean(x[i]),R = 10000)
prik.ci <- boot.ci(boot.out = prik.boot, conf = 0.95, type = c('bca'))

prik.klyde <- c(prik.ci$t0, prik.ci$bca[4],prik.ci$bca[5])
prik.klyde <- prik.klyde/3*100
prik.klyde

Geo_prik.sam <- rbind.data.frame(prik.gravand,prik.ryle,prik.strandskade,prik.kobber,prik.vibe,prik.klyde)
colnames(Geo_prik.sam) <- c('mean','lowerCI','upperCI')
row.names(Geo_prik.sam) <- c('Shelduck','Dunlin','Oystercatcher','Bar-tailed Godwit','Northern Lapwing','Avocet')
Geo_prik.sam$Precision <- c('Spatial')
Geo_prik.sam[,1:3] <- 100-Geo_prik.sam[,1:3]
Geo_prik.sam

### Plot nu samet for både count og spatial
# Combine de to dataframes
Samlet.boot <- rbind.data.frame(Geo_prik.sam,prik.sam)

Samlet.boot

library(data.table)
Samlet.boot <- setDT(Samlet.boot, keep.rownames = TRUE)[]
Samlet.boot$rn <- gsub('1', '', Samlet.boot$rn)
Samlet.boot


#### Plot nu samlet og grupperet
# Break labels i to linjer
addline_format <- function(x,...){
  gsub('\\s','\n',x)
}
#Grupper i rigtigt rækkefølge
Samlet.boot$rn <- factor(Samlet.boot$rn, 
                            levels=c("Dunlin","Northern Lapwing","Bar-tailed Godwit",
                                     "Avocet","Oystercatcher",
                                     "Shelduck"))

art_rækkefølge <- c("Dunlin","Northern Lapwing","Bar-tailed Godwit",
                    "Avocet","Oyster- catcher",
                    "Shelduck")


library(ggplot2)
ggplot(Samlet.boot, aes(x=rn, y=mean, 
                        fill=factor(Precision, levels=c("Total count", "Spatial")))) +   
  geom_bar(position=position_dodge(width = .8), stat="identity",
           colour="black", # Use black outlines,
           size=.5, width = .6) +     # Thinner lines)
  geom_errorbar(aes(ymin=lowerCI, ymax=upperCI),
                width=.2,                    # Width of the error bars
                position=position_dodge(.8)) +
  ylab("Variation among observers (%)") +
  scale_fill_manual(values = c('darkgrey','grey95'),
                    name="Identification", # Legend label, use darker colors
                    breaks=c("Total count", "Spatial"),
                    labels=c("Total count", "Spatial precision")) +
  theme_bw() +
  
  theme(legend.position=c(.9,.75),
        legend.text=element_text(size=13),legend.title=element_text(size=15),
        axis.line = element_line(color = 'black'),
        axis.text=element_text(size=13.5),
        axis.title=element_text(size = 15),
        axis.title.x=element_blank(),
        panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid = element_blank()) +
  scale_y_continuous(limits=c(0,16),breaks=seq(0,16,2)) +
  scale_x_discrete(labels=addline_format(unique(art_rækkefølge)))



























### Forsøg med remove dublicates

test <- Spatial_join_gravand[!duplicated(t(apply(Spatial_join_gravand[c('field_12','field_1_12')], 1, sort))), ]
test <- Spatial_join_gravand[!duplicated(t(apply(Spatial_join_gravand[c('TARGET_FID','JOIN_FID')], 1, sort))), ]


## Find funktion til at summere / count rows fra to columns med samme id - 

nrow(test)
head(test)

(test[test$TARGET_FID == 1007, ])
(test[test$JOIN_FID == 1007, ])

(Spatial_join_gravand[Spatial_join_gravand$TARGET_FID == 1107, ])
(Spatial_join_gravand[Spatial_join_gravand$JOIN_FID == 1107, ])

as.data.frame(table(unlist(test[grep(c('TARGET_FID','JOIN_FID'), names(test))])))
