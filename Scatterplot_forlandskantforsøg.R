## indlæs data for 23_10
directory <- "F:/Vadehavet/GIS_projekts/Forlandskantforsøg/Forsøg_forlandskant_23_10_19"

RS_23_10 <- file.path(directory,"/RS_23_10.csv")
RS_23_10

RS_23_10 <- read.csv(file=RS_23_10, header= TRUE)
str(RS_23_10)
mean((RS_23_10$RASTERVALU),na.rm=TRUE)

## indlæs data for 24_10
directory <- "F:/Vadehavet/GIS_projekts/Forlandskantforsøg/Forsøg_forlandskant_24_10_19"

RS_24_10 <- file.path(directory,"/Relativ_synlighed_24_10.csv")
RS_24_10

RS_24_10 <- read.csv(file=RS_24_10, header= TRUE)
str(RS_24_10)
mean((RS_24_10$RASTERVALU),na.rm=TRUE)

## indlæs data for 12_11
directory <- "F:/Vadehavet/GIS_projekts/Forlandskantforsøg/Forsøg_forlandskant_12_11_19"

RS_12_11 <- file.path(directory,"/relativ_synlighed_12_11_trimmet.csv")
RS_12_11

RS_12_11 <- read.csv(file=RS_12_11, header= TRUE)
str(RS_12_11)
mean((RS_12_11$RASTERVALU),na.rm=TRUE)

## indlæs data for 13_11
directory <- "F:/Vadehavet/GIS_projekts/Forlandskantforsøg/Forsøg_forlandskant_13_11_19"

RS_13_11 <- file.path(directory,"/relativ_synlighed_13_11_lau.csv")
RS_13_11

RS_13_11 <- read.csv(file=RS_13_11, header= TRUE)
str(RS_13_11)
mean((RS_13_11$RASTERVALU),na.rm=TRUE)

## indlæs data for 15_11
directory <- "F:/Vadehavet/GIS_projekts/Forlandskantforsøg/Forsøg_forlandskant_15_11_19"

RS_15_11 <- file.path(directory,"/relativ_synlighed_15_11_trim.csv")
RS_15_11

RS_15_11 <- read.csv(file=RS_15_11, header= TRUE)
str(RS_15_11)
mean((RS_15_11$RASTERVALU),na.rm=TRUE)

############ Sæt alle vektorer sammen efter højde

RS_23_10 <- data.frame(RS_23_10$Hoejde,RS_23_10$RASTERVALU)
colnames(RS_23_10) <- c("Hoejde","RASTERVALU")
RS_24_10 <- data.frame(RS_24_10$Hoejde,RS_24_10$RASTERVALU)
colnames(RS_24_10) <- c("Hoejde","RASTERVALU")
RS_24_10 <- RS_24_10[complete.cases(RS_24_10), ]
RS_12_11 <- data.frame(RS_12_11$Hoejde,RS_12_11$RASTERVALU)
colnames(RS_12_11) <- c("Hoejde","RASTERVALU")
RS_13_11 <- data.frame(RS_13_11$Hoejde,RS_13_11$RASTERVALU)
colnames(RS_13_11) <- c("Hoejde","RASTERVALU")
RS_15_11 <- data.frame(RS_15_11$Hoejde,RS_15_11$RASTERVALU)
colnames(RS_15_11) <- c("Hoejde","RASTERVALU")

alle_hoejder <- rbind(RS_23_10,RS_24_10,RS_12_11,RS_13_11,RS_15_11)
alle_hoejder


######## Lav scatterplot
par(mfrow=c(1, 1))  # bibehold en graf
plot(alle_hoejder$Hoejde, alle_hoejder$RASTERVALU, ylim = c(0,1))

##################### Lav boxplots ##################################
par(mfrow=c(1,1))
par(oma=c(3.5,3.5,3.5,3.5))
par(mar=c(2.5,1.2,2.5,1))

boxplot(alle_hoejder$RASTERVALU ~ alle_hoejder$Hoejde, ylim=c(0,1.1) )

mtext("Hight of silhouette (cm)", side=1, cex=1.5, line=1.5, outer=TRUE)   
mtext("Mean hight to be added for visibility (m)", side=2, cex=1.5, line=1.5, outer=TRUE)
mtext("Visibility analysis for field test with silhouettes", side=3, cex=1.5, line=1.5, outer=TRUE)

### Lav lineær regression
scatter.smooth(x=alle_hoejder$Hoejde, y=alle_hoejder$RASTERVALU, col=adjustcolor("grey0", alpha=0.5),  pch = 19,
               main="Observeret synlighed ~ Simuleret synlighed")  # scatterplot

# Tjek for normalitet
par(mfrow=c(1, 2))  # divide graph area in 2 columns
plot(density(alle_hoejder$Hoejde), main="Density Plot: Frekvens af silhuethøjder", ylab="Frequency")  # density plot for 'speed'
polygon(density(alle_hoejder$Hoejde), col="grey")
plot(density(alle_hoejder$RASTERVALU), main="Density Plot: Relativ synlighed", ylab="Frequency")  # density plot for 'dist'
polygon(density(alle_hoejder$RASTERVALU), col="grey")

# Udregn correlationen imellem de to variable
cor(alle_hoejder$Hoejde, alle_hoejder$RASTERVALU)  # calculate correlation between speed and distance 

# Udregn nu den lineærer model 
linearMod <- lm(Hoejde ~ RASTERVALU, data=alle_hoejder)  # build linear regression model on full data
print(linearMod)

summary(linearMod)  # model summary

qqnorm(alle_hoejder$RASTERVALU)

qqnorm(alle_hoejder$Hoejde)

