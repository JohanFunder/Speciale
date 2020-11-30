head(samlet_dens)
# Subset baseret på dato
RD_27_09 <- subset(samlet_dens, (id=='RD_27_09_1' |  id=='RD_27_09_2'))
RD_23_10 <- subset(samlet_dens, (id=='RD_23_10'))
RD_27_09
RD_23_10
RD_27_09$id <- gsub("RD_27_09_1", "RD_27_09", RD_27_09$id)
RD_27_09$id <- gsub("RD_27_09_2", "RD_27_09", RD_27_09$id)
samlet_dens_date <- rbind.data.frame(RD_27_09,RD_23_10)

x <- subset(RD_27_09, (art=='Dunlin'))
max(RD_27_09$RASTERVALU)

####### Prøv med bootstrap
## 27_09
# Lav bootstrap CI
Dens_tabel <- unique(RD_27_09$art)
Dens_tabel <- data.frame(Dens_tabel)
colnames(Dens_tabel) <- c('Species')
Dens_tabel$LowerCI <- rep( NA, length(Dens_tabel) )
Dens_tabel$UpperCI <- rep( NA, nrow(Dens_tabel) )
Dens_tabel$mean <- rep( NA, nrow(Dens_tabel) )
Dens_tabel

RD_27_09$art

#install.packages("bootBCa", repos="http://R-Forge.R-project.org")
library('bootBCa')
for( i in Dens_tabel$Species)  {
  bird.boot <- BCa(RD_27_09$RASTERVALU[RD_27_09$art==i],0.01,median,
                   alpha = c(0.025, 0.975),M = 25000, Mlimit = 1500000)
  bird.boot <- cbind.data.frame(bird.boot) 
  
  Dens_tabel$LowerCI[Dens_tabel$Species==i] <- bird.boot[4,]
  Dens_tabel$UpperCI[Dens_tabel$Species==i] <- bird.boot[5,]
  Dens_tabel$mean[Dens_tabel$Species==i] <- bird.boot[3,]
}
RD_27_09_tabel <- Dens_tabel
RD_27_09_tabel

####### Prøv med bootstrap
## 23_10
# Lav bootstrap CI
Dens_tabel <- unique(RD_23_10$art)
Dens_tabel <- data.frame(Dens_tabel)
colnames(Dens_tabel) <- c('Species')
Dens_tabel$LowerCI <- rep( NA, length(Dens_tabel) )
Dens_tabel$UpperCI <- rep( NA, nrow(Dens_tabel) )
Dens_tabel$mean <- rep( NA, nrow(Dens_tabel) )
Dens_tabel

#install.packages("bootBCa", repos="http://R-Forge.R-project.org")
library('bootBCa')
for( i in Dens_tabel$Species)  {
  bird.boot <- BCa(RD_23_10$RASTERVALU[RD_23_10$art==i],0.01,median,
                   alpha = c(0.025, 0.975),M = 25000, Mlimit = 1500000)
  bird.boot <- cbind.data.frame(bird.boot) 
  
  Dens_tabel$LowerCI[Dens_tabel$Species==i] <- bird.boot[4,]
  Dens_tabel$UpperCI[Dens_tabel$Species==i] <- bird.boot[5,]
  Dens_tabel$mean[Dens_tabel$Species==i] <- bird.boot[3,]
}
RD_23_10_tabel <- Dens_tabel
RD_23_10_tabel


### Find antal for alle species
colnames(samlet_dens_date) <- c("art","id","RASTERVALU","NUMPOINTS",
                                "DISTANCE","xcoord","ycoord")

Obs <- summarySE(samlet_dens_date, measurevar="RASTERVALU", 
                          groupvars=c("art","id"))
Obs$id[Obs$id=='RD_27_09']

RD_27 <- subset(Obs, (id=='RD_27_09'))
RD_23 <- subset(Obs, (id=='RD_23_10'))

sum(RD_27$N)
sum(RD_23$N)

################### Lav skewness and kurtosis test
# install.packages('moments')
library('moments')
## For 27_09
skew_tabel <- unique(RD_27_09$art)
skew_tabel <- data.frame(skew_tabel)
colnames(skew_tabel) <- c('Species')
skew_tabel$skew <- rep( NA, length(skew_tabel) )
skew_tabel$skew.p <- rep( NA, length(skew_tabel) )
skew_tabel$kurt <- rep( NA, nrow(skew_tabel) )
skew_tabel$kurt.p <- rep( NA, nrow(skew_tabel) )
skew_tabel

for( i in skew_tabel$Species)  {
  skew.ag <- agostino.test(RD_27_09$RASTERVALU[RD_27_09$art==i][0:20000],
                           alternative = c("two.sided"))
  skew_tabel$skew[skew_tabel$Species==i] <- skew.ag$statistic[1]
  skew_tabel$skew.p[skew_tabel$Species==i] <- skew.ag[2]
}
skew_tabel

# Kurtosis
for( i in skew_tabel$Species)  {
  kurt <- anscombe.test(RD_27_09$RASTERVALU[RD_27_09$art==i][0:20000],
                           alternative = c("two.sided"))
  skew_tabel$kurt[skew_tabel$Species==i] <- kurt$statistic[1]
  skew_tabel$kurt.p[skew_tabel$Species==i] <- kurt[2]
}
RD_27_09_skew_kurt <- skew_tabel


## For 23_10
skew_tabel <- unique(RD_23_10$art)
skew_tabel <- data.frame(skew_tabel)
colnames(skew_tabel) <- c('Species')
skew_tabel$skew <- rep( NA, length(skew_tabel) )
skew_tabel$skew.p <- rep( NA, length(skew_tabel) )
skew_tabel$kurt <- rep( NA, nrow(skew_tabel) )
skew_tabel$kurt.p <- rep( NA, nrow(skew_tabel) )
skew_tabel

for( i in skew_tabel$Species)  {
  skew.ag <- agostino.test(RD_23_10$RASTERVALU[RD_23_10$art==i][0:20000],
                           alternative = c("two.sided"))
  
  skew_tabel$skew[skew_tabel$Species==i] <- skew.ag$statistic[1]
  skew_tabel$skew.p[skew_tabel$Species==i] <- skew.ag[2]
}
skew_tabel

# Kurtosis
for( i in skew_tabel$Species)  {
  kurt <- anscombe.test(RD_23_10$RASTERVALU[RD_23_10$art==i][0:150],
                        alternative = c("two.sided"))
  skew_tabel$kurt[skew_tabel$Species==i] <- kurt$statistic[1]
  skew_tabel$kurt.p[skew_tabel$Species==i] <- kurt[2]
}
RD_23_10_skew_kurt <- skew_tabel

kurtosis(RD_23_10$RASTERVALU[RD_27_09$art=='Dunlin'][0:20000])

### Reorder dataframes

library(dplyr)
x <- c("Dunlin","Golden Plover","Oystercatcher","Bar-tailed Godwit","Avocet",
       "Wigeon",
       "Pin-tailed Duck","Shelduck","Barnacle Goose",
       "Greylag Goose")

RD_27_09_tabel %>%
  slice(match(x, Species))

RD_23_10_tabel %>%
  slice(match(x, Species))

RD_27_09_skew_kurt %>%
  slice(match(x, Species))

RD_23_10_skew_kurt %>%
  slice(match(x, Species))




