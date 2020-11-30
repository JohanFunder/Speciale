# Indlæs vektor med relativ synlighed

directory <- "G:/Vadehavet/GIS_projekts/Arcgis_pro/Forlandskantforsøg/Forlandskantforsøg_24_10"

# For forlandskantforsøget 23_10

Relativ_synlighed <- file.path(directory,"/Relativ_synlighed_23_10.csv")
Relativ_synlighed
Relativ_synlighed <- read.csv(file=Relativ_synlighed, header= TRUE)
str(Relativ_synlighed)
mean((Relativ_synlighed$RASTERVALU),na.rm=TRUE)

# Subset 10cm observationer
id_1 <- Relativ_synlighed[Relativ_synlighed$id == 1, ]
id_1                                                    
cm_10_gen <- mean(id_1$RASTERVALU,na.rm = "T")
cm_10_med <- median(id_1$RASTERVALU)
mean(id_1$RASTERVALU)
median(id_1$RASTERVALU)

# Subset 20cm observationer
id_2 <- Relativ_synlighed[Relativ_synlighed$id == 2, ]
id_2                                                    
cm_20_gen <- mean(id_2$RASTERVALU)                                                     
cm_20_med <- median(id_2$RASTERVALU)
mean(id_2$RASTERVALU)
median(id_2$RASTERVALU)

# Subset 30cm observationer
id_3 <- Relativ_synlighed[Relativ_synlighed$id == 3, ]
id_3                                                    
cm_30_gen <- mean(id_3$RASTERVALU)
cm_30_med <- median(id_3$RASTERVALU)
mean(id_3$RASTERVALU)
median(id_3$RASTERVALU)

# Sæt gennemsnit og median sammen
gen_23_10 <- cbind(cm_10_gen,cm_20_gen,cm_30_gen)
med_23_10 <- cbind(cm_10_med,cm_20_med,cm_30_med)
gen_23_10
med

# Udregn standardfejl
#Definer Std.fejl
std <- function(x) sd(x)/sqrt(length(x))
# For 10cm
a <- std(id_1$RASTERVALU)
# For 20cm
b <- std(id_2$RASTERVALU)
# For 30cm
c <- std(id_3$RASTERVALU)
#saml til dataframe
std.err_23_10 <- cbind(a,b,c)
# Lav gen dataframe til brug for arrows
gen_dat_23_10 <- data.frame(gen)

# Lav barplot over graden af synlighed inden for grupperne
par(mfrow=c(1,1))


plot(gen)
bar <- barplot(gen_23_10, xlab = "Silhuet højde", ylab = "Tillægshøjde i m for synlighed" ,
               main = "Simulering af synlighden for forsøg 23. okt.",col=c("grey"))
arrows(bar, gen_23_10+std.err_23_10, bar, gen_23_10-std.err_23_10, code = 3, angle = 90, length = 0.05)

barplot(med_23_10,col=c("grey"))

## For forlandskantforsøget 24_10

directory <- "F:/Vadehavet/GIS_projekts/Arcgis_pro/Forlandskantforsøg/Forlandskantforsøg_24_10"

# For forlandskantforsøget 24_10

Relativ_synlighed <- file.path(directory,"/Relativ_synlighed_24_10_2m.csv")
Relativ_synlighed
Relativ_synlighed <- read.csv(file=Relativ_synlighed, header= TRUE)
str(Relativ_synlighed)
mean((Relativ_synlighed$RASTERVALU),na.rm=TRUE)

# Subset 10cm observationer
id_1 <- Relativ_synlighed[Relativ_synlighed$id == 1, ]
id_1                                                    
cm_10_gen <- mean(id_1$RASTERVALU,na.rm = "T")
cm_10_med <- median(id_1$RASTERVALU)
mean(id_1$RASTERVALU)
median(id_1$RASTERVALU)

# Subset 20cm observationer
id_2 <- Relativ_synlighed[Relativ_synlighed$id == 2, ]
id_2                                                    
cm_20_gen <- mean(id_2$RASTERVALU)                                                     
cm_20_med <- median(id_2$RASTERVALU)
mean(id_2$RASTERVALU)
median(id_2$RASTERVALU)

# Subset 30cm observationer
id_3 <- Relativ_synlighed[Relativ_synlighed$id == 3, ]
id_3                                                    
cm_30_gen <- mean(id_3$RASTERVALU)
cm_30_med <- median(id_3$RASTERVALU)
mean(id_3$RASTERVALU)
median(id_3$RASTERVALU)

# Sæt gennemsnit og median sammen
gen_24_10 <- cbind(cm_10_gen,cm_20_gen,cm_30_gen)
med_24_10 <- cbind(cm_10_med,cm_20_med,cm_30_med)
gen_24_10
med

# Udregn standardfejl
#Definer Std.fejl
std <- function(x) sd(x)/sqrt(length(x))
# For 10cm
a <- std(id_1$RASTERVALU)
# For 20cm
b <- std(id_2$RASTERVALU)
# For 30cm
c <- std(id_3$RASTERVALU)
#saml til dataframe
std.err_24_10 <- cbind(a,b,c)
# Lav gen dataframe til brug for arrows
gen_dat_24_10 <- data.frame(gen)
# Lav barplot over graden af synlighed inden for grupperne
par(mfrow=c(1,1))

gen_24_10 <- cbind(cm_10_gen,cm_20_gen,cm_30_gen)
med_24_10 <- cbind(cm_10_med,cm_20_med,cm_30_med)
med
plot(gen)
barplot(gen_24_10, xlab = "Silhuet højde", ylab = "Tillægshøjde i m for synlighed" ,
        main = "Simulering af synlighden for forsøg 24. okt.",col=c("grey"))
arrows(bar, gen_24_10+std.err_24_10, bar, gen_24_10-std.err_24_10, code = 3, angle = 90, length = 0.05)

barplot(med_24_10)

# Samlet barplot()
par(mfrow=c(2,1))
barplot(gen_23_10, ylab = "Tillægshøjde i m for synlighed", ylim=c(0,1),
        main = "Simulering af synlighden for forsøg 23. okt.",col=c("grey"))
arrows(bar, gen_23_10+std.err_23_10, bar, gen_23_10-std.err_23_10, code = 3, angle = 90, length = 0.05)

barplot(gen_24_10, xlab = "Silhuet højde", ylab = "Tillægshøjde i m for synlighed" ,col=c("grey"),ylim=c(0,0.4),
        main = "Simulering af synlighden for forsøg 24. okt.")
arrows(bar, gen_24_10+std.err_24_10, bar, gen_24_10-std.err_24_10, code = 3, angle = 90, length = 0.05)
