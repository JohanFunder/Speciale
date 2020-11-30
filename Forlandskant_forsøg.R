# Indlæs vektor med relativ synlighed

directory <- "G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Forsøg_forlandskant_23_10_19"

# For forlandskantforsøget 23_10

RS_23_10 <- file.path(directory,"/RS_23_10.csv")
RS_23_10
RS_23_10 <- read.csv(file=RS_23_10, header= TRUE)
str(RS_23_10)
mean((RS_23_10$RASTERVALU),na.rm=TRUE)

# Subset 10cm observationer
id_1 <- RS_23_10[RS_23_10$id == 1, ]
id_1                                                    
Mean_12cm <- mean(id_1$RASTERVALU,na.rm = "T")
cm_10_med <- median(id_1$RASTERVALU)
mean(id_1$RASTERVALU)
median(id_1$RASTERVALU)

# Subset 20cm observationer
id_2 <- RS_23_10[RS_23_10$id == 2, ]
id_2                                                    
Mean_20cm <- mean(id_2$RASTERVALU)                                                     
cm_20_med <- median(id_2$RASTERVALU)
mean(id_2$RASTERVALU)
median(id_2$RASTERVALU)

# Subset 30cm observationer
id_3 <- RS_23_10[RS_23_10$id == 3, ]
id_3                                                    
Mean_40cm <- mean(id_3$RASTERVALU)
cm_30_med <- median(id_3$RASTERVALU)
mean(id_3$RASTERVALU)
median(id_3$RASTERVALU)

# Sæt gennemsnit og median sammen
RS_23_10_gen <- cbind(Mean_12cm,Mean_20cm,Mean_40cm)
med_23_10 <- cbind(cm_10_med,cm_20_med,cm_30_med)
RS_23_10_gen
med_23_10

# Udregn standardfejl
#Definer Std.fejl
std <- function(x) sd(x)/sqrt(length(x))
# For 12cm
a <- std(id_1$RASTERVALU)
# For 20cm
b <- std(id_2$RASTERVALU)
# For 40cm
d <- std(id_3$RASTERVALU)

#saml til dataframe
std.err_23_10 <- cbind(a,b,d)

# confidens_intervaller

confi_23_10 <- 1.96*std.err_23_10
confi_23_10
std.err_23_10

# Lav barplot over graden af synlighed inden for grupperne
par(mfrow=c(1,1))


bar <- barplot(RS_23_10_gen, xlab = "Silhuet højde", ylab = "Tillægshøjde i m for synlighed" ,
        main = "Simulering af synlighden for forsøg 23. okt.",col=c("grey"))
arrows(bar, RS_23_10_gen+std.err_23_10, bar, RS_23_10_gen-std.err_23_10, code = 3, angle = 90, length = 0.05)

barplot(med_23_10,col=c("grey"))

####### 23_10_obspost_3m
# Indlæs vektor med relativ synlighed

directory <- "G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Forsøg_forlandskant_23_10_19"

RS_23_10 <- file.path(directory,"/RS_23_10_3m.csv")
RS_23_10
RS_23_10 <- read.csv(file=RS_23_10, header= TRUE)
str(RS_23_10)
mean((RS_23_10$RASTERVALU),na.rm=TRUE)

# Subset 10cm observationer
id_1 <- RS_23_10[RS_23_10$id == 1, ]
id_1                                                    
Mean_12cm <- mean(id_1$RASTERVALU,na.rm = "T")
cm_10_med <- median(id_1$RASTERVALU)
mean(id_1$RASTERVALU)
median(id_1$RASTERVALU)

# Subset 20cm observationer
id_2 <- RS_23_10[RS_23_10$id == 2, ]
id_2                                                    
Mean_20cm <- mean(id_2$RASTERVALU)                                                     
cm_20_med <- median(id_2$RASTERVALU)
mean(id_2$RASTERVALU)
median(id_2$RASTERVALU)

# Subset 30cm observationer
id_3 <- RS_23_10[RS_23_10$id == 3, ]
id_3                                                    
Mean_40cm <- mean(id_3$RASTERVALU)
cm_30_med <- median(id_3$RASTERVALU)
mean(id_3$RASTERVALU)
median(id_3$RASTERVALU)

# Sæt gennemsnit og median sammen
RS_23_10_gen <- cbind(Mean_12cm,Mean_20cm,Mean_40cm)
med_23_10 <- cbind(cm_10_med,cm_20_med,cm_30_med)
RS_23_10_gen
med

# Udregn standardfejl
#Definer Std.fejl
std <- function(x) sd(x)/sqrt(length(x))
# For 12cm
a <- std(id_1$RASTERVALU)
# For 20cm
b <- std(id_2$RASTERVALU)
# For 40cm
d <- std(id_3$RASTERVALU)

#saml til dataframe
std.err_23_10 <- cbind(a,b,d)

# confidens_intervaller

confi_23_10 <- 1.96*std.err_23_10
confi_23_10
std.err_23_10

# Lav barplot over graden af synlighed inden for grupperne
par(mfrow=c(1,1))


plot(gen)
bar <- barplot(RS_23_10_gen, xlab = "Silhuet højde", ylab = "Tillægshøjde i m for synlighed" ,
               main = "Simulering af synlighden for forsøg 23. okt.",col=c("grey"), ylim = c(0,1))
arrows(bar, RS_23_10_gen+std.err_23_10, bar, RS_23_10_gen-std.err_23_10, code = 3, angle = 90, length = 0.05)

barplot(med_23_10,col=c("grey"))

####### 23_10_offset_0.2m
# Indlæs vektor med relativ synlighed

directory <- "G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Forsøg_forlandskant_23_10_19"

RS_23_10 <- file.path(directory,"/RS_23_10_offset2.csv")
RS_23_10
RS_23_10 <- read.csv(file=RS_23_10, header= TRUE)
str(RS_23_10)
mean((RS_23_10$RASTERVALU),na.rm=TRUE)

# Subset 10cm observationer
id_1 <- RS_23_10[RS_23_10$id == 1, ]
id_1                                                    
Mean_12cm <- mean(id_1$RASTERVALU,na.rm = "T")
cm_10_med <- median(id_1$RASTERVALU)
mean(id_1$RASTERVALU)
median(id_1$RASTERVALU)

# Subset 20cm observationer
id_2 <- RS_23_10[RS_23_10$id == 2, ]
id_2                                                    
Mean_20cm <- mean(id_2$RASTERVALU)                                                     
cm_20_med <- median(id_2$RASTERVALU)
mean(id_2$RASTERVALU)
median(id_2$RASTERVALU)

# Subset 30cm observationer
id_3 <- RS_23_10[RS_23_10$id == 3, ]
id_3                                                    
Mean_40cm <- mean(id_3$RASTERVALU)
cm_30_med <- median(id_3$RASTERVALU)
mean(id_3$RASTERVALU)
median(id_3$RASTERVALU)

# Sæt gennemsnit og median sammen
RS_23_10_gen <- cbind(Mean_12cm,Mean_20cm,Mean_40cm)
med_23_10 <- cbind(cm_10_med,cm_20_med,cm_30_med)
RS_23_10_gen
med

# Udregn standardfejl
#Definer Std.fejl
std <- function(x) sd(x)/sqrt(length(x))
# For 12cm
a <- std(id_1$RASTERVALU)
# For 20cm
b <- std(id_2$RASTERVALU)
# For 40cm
d <- std(id_3$RASTERVALU)

#saml til dataframe
std.err_23_10 <- cbind(a,b,d)

# confidens_intervaller

confi_23_10 <- 1.96*std.err_23_10
confi_23_10
std.err_23_10

# Lav barplot over graden af synlighed inden for grupperne
par(mfrow=c(1,1))


plot(gen)
bar <- barplot(RS_23_10_gen, xlab = "Silhuet højde", ylab = "Tillægshøjde i m for synlighed" ,
               main = "Simulering af synlighden for forsøg 23. okt.",col=c("grey"), ylim = c(0,1))
arrows(bar, RS_23_10_gen+std.err_23_10, bar, RS_23_10_gen-std.err_23_10, code = 3, angle = 90, length = 0.05)

barplot(med_23_10,col=c("grey"))


############################ For forlandskantforsøget 24_10

directory <- "G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Forsøg_forlandskant_24_10_19"

RS_24_10 <- file.path(directory,"/Relativ_synlighed_24_10_trim.csv")
RS_24_10
RS_24_10 <- read.csv(file=RS_24_10, header= TRUE)
str(RS_24_10)
mean((RS_24_10$RASTERVALU),na.rm=TRUE)

# Subset 10cm observationer
id_1 <- RS_24_10[RS_24_10$id == 1, ]
id_1                                                    
Mean_12cm <- mean(id_1$RASTERVALU,na.rm = "T")
cm_10_med <- median(id_1$RASTERVALU)
mean(id_1$RASTERVALU)
median(id_1$RASTERVALU)

# Subset 20cm observationer
id_2 <- RS_24_10[RS_24_10$id == 2, ]
id_2                                                    
Mean_20cm <- mean(id_2$RASTERVALU)                                                     
cm_20_med <- median(id_2$RASTERVALU)
mean(id_2$RASTERVALU)
median(id_2$RASTERVALU)

# Subset 30cm observationer
id_3 <- RS_24_10[RS_24_10$id == 3, ]
id_3                                                    
Mean_30cm <- mean(id_3$RASTERVALU)
cm_30_med <- median(id_3$RASTERVALU)
mean(id_3$RASTERVALU)
median(id_3$RASTERVALU)

# Sæt gennemsnit og median sammen
RS_24_10_gen <- cbind(cm_10_gen,cm_20_gen,cm_30_gen)
med_24_10 <- cbind(cm_10_med,cm_20_med,cm_30_med)
RS_24_10_gen
med

# Udregn standardfejl
#Definer Std.fejl
std <- function(x) sd(x)/sqrt(length(x))
# For 12cm
a <- std(id_1$RASTERVALU)
# For 20cm
b <- std(id_2$RASTERVALU)
# For 30cm
c <- std(id_3$RASTERVALU)


#saml til dataframe
std.err_24_10 <- cbind(a,b,c)

# confidens_intervaller

confi_24_10 <- 1.96*std.err_24_10
confi_24_10
std.err_24_10

RS_24_10_gen <- cbind(Mean_12cm,Mean_20cm,Mean_30cm)
med_24_10 <- cbind(cm_10_med,cm_20_med,cm_30_med)
med
plot(gen)
barplot(RS_24_10_gen, xlab = "Silhuet højde", ylab = "Tillægshøjde i m for synlighed" ,
        main = "Simulering af synlighden for forsøg 24. okt.",col=c("grey"))
arrows(bar, RS_24_10_gen+std.err_24_10, bar, RS_24_10_gen-std.err_24_10, code = 3, angle = 90, length = 0.05)

barplot(med_24_10)

# Samlet barplot()
par(mfrow=c(2,1))
par(oma=c(3.5,3.5,3.5,3.5))
par(mar=c(2.5,1.2,2.5,1))
barplot(RS_23_10_gen, col=c("grey"),ylim = c(0,1))
arrows(bar, RS_23_10_gen+std.err_23_10, bar, RS_23_10_gen-std.err_23_10, code = 3, angle = 90, length = 0.05)
mtext("23. October.", side=3, line=1, cex=1.2)

barplot(RS_24_10_gen, col=c("grey"),ylim=c(0,0.5))
arrows(bar, RS_24_10_gen+std.err_24_10, bar, RS_24_10_gen-std.err_24_10, code = 3, angle = 90, length = 0.05)
mtext("24. October.", side=1, line=-7, cex=1.2)

mtext("Hight of silhouette (cm)", side=1, cex=1.5, line=1.5, outer=TRUE)   
mtext("Mean hight to be added for visibility (m)", side=2, cex=1.5, line=1.5, outer=TRUE)
mtext("Visibility analysis for field test with silhouettes", side=3, cex=1.5, line=1.5, outer=TRUE)



############################################################################

# Synlighed for forlandskantforsøget 12_11_19
directory <- "G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Forsøg_forlandskant_12_11_19"

RS_12_11 <- file.path(directory,"/relativ_synlighed_12_11_trimmet.csv")
RS_12_11

RS_12_11 <- read.csv(file=RS_12_11, header= TRUE)
str(RS_12_11)
mean((RS_12_11$RASTERVALU),na.rm=TRUE)

# Lav grupper for højde
id_12 <- RS_12_11[RS_12_11$Hoejde == 12, ]
id_12
# Find gennemsnit
Mean_12cm <- mean(id_12$RASTERVALU)
Mean_12cm

id_20 <- RS_12_11[RS_12_11$Hoejde == 20, ]
id_20
# Find gennemsnit
Mean_20cm <- mean(id_20$RASTERVALU)
Mean_20cm

id_30 <- RS_12_11[RS_12_11$Hoejde == 30, ]
id_30
# Find gennemsnit
Mean_30cm <- mean(id_30$RASTERVALU)
Mean_30cm

id_40 <- RS_12_11[RS_12_11$Hoejde == 40, ]
id_40
# Find gennemsnit
Mean_40cm <- mean(id_40$RASTERVALU)
Mean_40cm

## Lav samlet gennemsnit

RS_12_11_gen <- cbind(Mean_12cm,Mean_20cm,Mean_30cm,Mean_40cm)
RS_12_11_gen


#Definer Std.fejl
std <- function(x) sd(x)/sqrt(length(x))
# For 12cm
a <- std(id_12$RASTERVALU)
# For 20cm
b <- std(id_20$RASTERVALU)
# For 30cm
c <- std(id_30$RASTERVALU)
# For 40cm
d <- std(id_40$RASTERVALU)

#saml til dataframe
std.err_12_11 <- cbind(a,b,c,d)

# confidens_intervaller

confi_12_11 <- 1.96*std.err_12_11
confi_12_11
std.err_12_11

# lav barplot
par(mfrow=c(1,1))
par(oma=c(3.5,3.5,3.5,3.5))
par(mar=c(2.5,1.2,2.5,1))

bar_12_11 <- barplot(RS_12_11_gen, col = "grey", ylim = c(0,0.6))
#std.err
arrows(bar_12_11, RS_12_11_gen+std.err_12_11, bar_12_11, RS_12_11_gen-std.err_12_11, code = 3, angle = 90, length = 0.05)
#confi
arrows(bar_12_11, RS_12_11_gen+confi_12_11, bar_12_11, RS_12_11_gen-confi_12_11, code = 3, angle = 90, length = 0.05)
mtext("12. november.", side=3, line=-2, cex=1.2)

mtext("Hight of silhouette (cm)", side=1, cex=1.5, line=1.5, outer=TRUE)   
mtext("Mean hight to be added for visibility (m)", side=2, cex=1.5, line=1.5, outer=TRUE)
mtext("Visibility analysis for field test with silhouettes", side=3, cex=1.5, line=1.5, outer=TRUE)


########################### Synlighed for forlandskantforsøget 13_11_19
directory <- "G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Forsøg_forlandskant_13_11_19"

RS_13_11 <- file.path(directory,"/Relativ_synlighed_13_11_lau.csv")
RS_13_11

RS_13_11 <- read.csv(file=RS_13_11, header= TRUE)
str(RS_13_11)
mean((RS_13_11$RASTERVALU),na.rm=TRUE)

# Lav grupper for højde
id_12 <- RS_13_11[RS_13_11$Hoejde == 12, ]
id_12
# Find gennemsnit
Mean_12cm <- mean(id_12$RASTERVALU)
Mean_12cm

id_20 <- RS_13_11[RS_13_11$Hoejde == 20, ]
id_20
# Find gennemsnit
Mean_20cm <- mean(id_20$RASTERVALU)
Mean_20cm

id_30 <- RS_13_11[RS_13_11$Hoejde == 30, ]
id_30
# Find gennemsnit
Mean_30cm <- mean(id_30$RASTERVALU)
Mean_30cm

id_40 <- RS_13_11[RS_13_11$Hoejde == 40, ]
id_40
# Find gennemsnit
Mean_40cm <- mean(id_40$RASTERVALU)
Mean_40cm

## Lav samlet gennemsnit

RS_13_11_gen <- cbind(Mean_12cm,Mean_20cm,Mean_30cm,Mean_40cm)
RS_13_11_gen


#Definer Std.fejl
std <- function(x) sd(x)/sqrt(length(x))
# For 12cm
a <- std(id_12$RASTERVALU)
# For 20cm
b <- std(id_20$RASTERVALU)
# For 30cm
c <- std(id_30$RASTERVALU)
# For 40cm
d <- std(id_40$RASTERVALU)

#saml til dataframe
std.err_13_11 <- cbind(a,b,c,d)

# confidens_intervaller

confi_13_11 <- 1.96*std.err_13_11
confi_13_11
std.err_13_11


# lav barplot
par(mfrow=c(1,1))
par(oma=c(3.5,3.5,3.5,3.5))
par(mar=c(2.5,1.2,2.5,1))
bar_13_11 <- barplot(RS_13_11_gen, col = "grey", ylim = c(0,0.5))
mtext("13. november.", side=3, line=-2, cex=1.2)
#std.err
arrows(bar_13_11, RS_13_11_gen+std.err_13_11, bar_13_11, RS_13_11_gen-std.err_13_11, code = 3, angle = 90, length = 0.05)
#confi
arrows(bar_13_11, RS_13_11_gen+confi_13_11, bar_13_11, RS_13_11_gen-confi_13_11, code = 3, angle = 90, length = 0.05)
mtext("Hight of silhouette (cm)", side=1, cex=1.5, line=1.5, outer=TRUE)   
mtext("Mean hight to be added for visibility (m)", side=2, cex=1.5, line=1.5, outer=TRUE)
mtext("Visibility analysis for field test with silhouettes", side=3, cex=1.5, line=1.5, outer=TRUE)


########################### Synlighed for forlandskantforsøget 15_11_19
directory <- "G:/Vadehavet/GIS_projekts/Forlandskantforsøg/Forsøg_forlandskant_15_11_19"

RS_15_11 <- file.path(directory,"/relativ_synlighed_15_11_trim.csv")
RS_15_11

RS_15_11 <- read.csv(file=RS_15_11, header= TRUE)
str(RS_15_11)
mean((RS_15_11$RASTERVALU),na.rm=TRUE)

# Lav grupper for højde
id_12 <- RS_15_11[RS_15_11$Hoejde == 12, ]
id_12
# Find gennemsnit
Mean_12cm <- mean(id_12$RASTERVALU)
Mean_12cm

id_20 <- RS_15_11[RS_15_11$Hoejde == 20, ]
id_20
# Find gennemsnit
Mean_20cm <- mean(id_20$RASTERVALU)
Mean_20cm

id_30 <- RS_15_11[RS_15_11$Hoejde == 30, ]
id_30
# Find gennemsnit
Mean_30cm <- mean(id_30$RASTERVALU)
Mean_30cm

id_40 <- RS_15_11[RS_15_11$Hoejde == 40, ]
id_40
# Find gennemsnit
Mean_40cm <- mean(id_40$RASTERVALU)
Mean_40cm

## Lav samlet gennemsnit

RS_15_11_gen <- cbind(Mean_12cm,Mean_20cm,Mean_30cm,Mean_40cm)
RS_15_11_gen


#Definer Std.fejl
std <- function(x) sd(x)/sqrt(length(x))
# For 12cm
a <- std(id_12$RASTERVALU)
# For 20cm
b <- std(id_20$RASTERVALU)
# For 30cm
c <- std(id_30$RASTERVALU)
# For 40cm
d <- std(id_40$RASTERVALU)

#saml til dataframe
std.err_15_11 <- cbind(a,b,c,d)

# confidens_intervaller

confi_15_11 <- 1.96*std.err_15_11
confi_15_11
std.err_15_11


# lav barplot
par(mfrow=c(1,1))
par(oma=c(3.5,3.5,3.5,3.5))
par(mar=c(2.5,1.2,2.5,1))

bar_15_11 <- barplot(RS_15_11_gen, col = "grey", ylim = c(0,0.9))
mtext("15. november.", side=3, line=-2, cex=1.2)
#std.err
arrows(bar_15_11, RS_15_11_gen+std.err_15_11, bar_15_11, RS_15_11_gen-std.err_15_11, code = 3, angle = 90, length = 0.05)
#confi
arrows(bar_15_11, RS_15_11_gen+confi_15_11, bar_15_11, RS_15_11_gen-confi_15_11, code = 3, angle = 90, length = 0.05)
mtext("Hight of silhouette (cm)", side=1, cex=1.5, line=1.5, outer=TRUE)   
mtext("Mean hight to be added for visibility (m)", side=2, cex=1.5, line=1.5, outer=TRUE)
mtext("Visibility analysis for field test with silhouettes", side=3, cex=1.5, line=1.5, outer=TRUE)


################################ Samlet for alle forlandskantforsøg ###############################

par(mfrow=c(2,3))
par(oma=c(3.5,3.5,3.5,3.5))
par(mar=c(2.5,1.2,2.5,1))

bar_23_10 <- barplot(RS_23_10_gen, col = "grey", ylim = c(0,1.1),
                     names.arg=c(names(RS_23_10_gen)[1:3], labels=c("12 cm","20 cm","40 cm")))
mtext("23. october.", side=3, line=-1, cex=1.2)
#std.err
#arrows(bar_23_10, RS_23_10_gen+std.err_23_10, bar_23_10, RS_23_10_gen-std.err_23_10, code = 3, angle = 90, length = 0.05)
#confi
arrows(bar_23_10, RS_23_10_gen+confi_23_10, bar_23_10, RS_23_10_gen-confi_23_10, code = 3, angle = 90, length = 0.05)

bar_24_10 <- barplot(RS_24_10_gen, col = "grey", ylim = c(0,1.1),
                     names.arg=c(names(RS_24_10_gen)[1:3], labels=c("12 cm","20 cm","30 cm")))
mtext("24. october.", side=3, line=-1, cex=1.2)
#std.err
#arrows(bar_24_10, RS_24_10_gen+std.err_24_10, bar_24_10, RS_24_10_gen-std.err_24_10, code = 3, angle = 90, length = 0.05)
#confi
arrows(bar_24_10, RS_24_10_gen+confi_24_10, bar_24_10, RS_24_10_gen-confi_24_10, code = 3, angle = 90, length = 0.05)

bar_12_11 <- barplot(RS_12_11_gen, col = "grey", ylim = c(0,1.1),
                     names.arg=c(names(RS_12_11_gen)[1:4], labels=c("12 cm","20 cm","30 cm","40 cm")))
mtext("12. november.", side=3, line=-1, cex=1.2)
#std.err
#arrows(bar_12_11, RS_12_11_gen+std.err_12_11, bar_12_11, RS_12_11_gen-std.err_12_11, code = 3, angle = 90, length = 0.05)
#confi
arrows(bar_12_11, RS_12_11_gen+confi_12_11, bar_12_11, RS_12_11_gen-confi_12_11, code = 3, angle = 90, length = 0.05)

bar_13_11 <- barplot(RS_13_11_gen, col = "grey", ylim = c(0,1.1),
                     names.arg=c(names(RS_13_11_gen)[1:4], labels=c("12 cm","20 cm","30 cm","40 cm")))
mtext("13. november.", side=3, line=-1, cex=1.2)
#std.err
#arrows(bar_13_11, RS_13_11_gen+std.err_13_11, bar_13_11, RS_13_11_gen-std.err_13_11, code = 3, angle = 90, length = 0.05)
#confi
arrows(bar_13_11, RS_13_11_gen+confi_13_11, bar_13_11, RS_13_11_gen-confi_13_11, code = 3, angle = 90, length = 0.05)

bar_15_11 <- barplot(RS_15_11_gen, col = "grey", ylim = c(0,1.1),
                     names.arg=c(names(RS_15_11_gen)[1:4], labels=c("12 cm","20 cm","30 cm","40 cm")))
mtext("15. november.", side=3, line=-1, cex=1.2)
#std.err
#arrows(bar_15_11, RS_15_11_gen+std.err_15_11, bar_15_11, RS_15_11_gen-std.err_15_11, code = 3, angle = 90, length = 0.05)
#confi
arrows(bar_15_11, RS_15_11_gen+confi_15_11, bar_15_11, RS_15_11_gen-confi_15_11, code = 3, angle = 90, length = 0.05)

# Tilføj tekst
mtext("Hight of silhouette (cm)", side=1, cex=1.5, line=1.5, outer=TRUE)   
mtext("Mean hight to be added for visibility (m)", side=2, cex=1.5, line=1.5, outer=TRUE)
mtext("Visibility analysis for field test with silhouettes", side=3, cex=1.5, line=1.5, outer=TRUE)

par(mfrow=c(1,1))
par(oma=c(3.5,3.5,3.5,3.5))
par(mar=c(2.5,1.2,2.5,1))


########### Samlet gennemsnit for alle forlandskantsforsøg ####################################
# Sammensæt alle RS tables

# for 12cm
RS_23_10_id_12 <- RS_23_10[RS_23_10$Hoejde == 12, ]
RS_23_10_id_12  
RS_23_10_id_12 <- cbind(RS_23_10_id_12,'a')
colnames(RS_23_10_id_12) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')
RS_24_10
RS_24_10_id_12 <- RS_24_10[RS_24_10$Hoejde == 12, ]
RS_24_10_id_12
RS_24_10_id_12 <- cbind(RS_24_10_id_12,'b')
colnames(RS_24_10_id_12) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

RS_12_11_id_12 <- RS_12_11[RS_12_11$Hoejde == 12, ]
RS_12_11_id_12 
RS_12_11_id_12 <- cbind(RS_12_11_id_12,'c')
colnames(RS_12_11_id_12) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

RS_13_11_id_12 <- RS_13_11[RS_13_11$Hoejde == 12, ]
RS_13_11_id_12
RS_13_11_id_12 <- cbind(RS_13_11_id_12,'d')
colnames(RS_13_11_id_12) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

RS_15_11_id_12 <- RS_15_11[RS_15_11$Hoejde == 12, ]
RS_15_11_id_12
RS_15_11_id_12 <- cbind(RS_15_11_id_12,'e')
colnames(RS_15_11_id_12) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

alle_12cm <- rbind(RS_23_10_id_12, RS_24_10_id_12, RS_12_11_id_12,
      RS_13_11_id_12, RS_15_11_id_12)
alle_12cm

Mean_12cm <- mean(alle_12cm$RASTERVALU,na.rm = "T")
Mean_12cm

# for 20cm
RS_23_10_id_20 <- RS_23_10[RS_23_10$Hoejde == 20, ]
RS_23_10_id_20  
RS_23_10_id_20 <- cbind(RS_23_10_id_20,'a')
colnames(RS_23_10_id_20) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

RS_24_10_id_20 <- RS_24_10[RS_24_10$Hoejde == 40, ] # Bevidst handling
RS_24_10_id_20
RS_24_10_id_20 <- cbind(RS_24_10_id_20,'b')
colnames(RS_24_10_id_20) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

RS_12_11_id_20 <- RS_12_11[RS_12_11$Hoejde == 20, ]
RS_12_11_id_20 
RS_12_11_id_20 <- cbind(RS_12_11_id_20,'c')
colnames(RS_12_11_id_20) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

RS_13_11_id_20 <- RS_13_11[RS_13_11$Hoejde == 20, ]
RS_13_11_id_20
RS_13_11_id_20 <- cbind(RS_13_11_id_20,'d')
colnames(RS_13_11_id_20) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

RS_15_11_id_20 <- RS_15_11[RS_15_11$Hoejde == 20, ]
RS_15_11_id_20
RS_15_11_id_20 <- cbind(RS_15_11_id_20,'e')
colnames(RS_15_11_id_20) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

alle_20cm <- rbind(RS_23_10_id_20, RS_24_10_id_20, RS_12_11_id_20,
                   RS_13_11_id_20, RS_15_11_id_20)
alle_20cm
Mean_20cm <- mean(alle_20cm$RASTERVALU,na.rm = "T")
Mean_20cm

RS_23_10
# for 30cm
RS_23_10_id_30 <- RS_23_10[RS_23_10$Hoejde == 30, ]
RS_23_10_id_30  
RS_23_10_id_30 <- cbind(RS_23_10_id_30,'a')
colnames(RS_23_10_id_30) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

RS_24_10_id_30 <- RS_24_10[RS_24_10$Hoejde == 20, ] # Bevidst handing
RS_24_10_id_30
#RS_24_10_id_30 <- cbind(RS_24_10_id_30,'b') 
RS_24_10_id_30 <- cbind(RS_24_10_id_30[1],'30',RS_24_10_id_30[3:5],'b')
colnames(RS_24_10_id_30) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

RS_12_11_id_30 <- RS_12_11[RS_12_11$Hoejde == 30, ]
RS_12_11_id_30 
RS_12_11_id_30 <- cbind(RS_12_11_id_30,'c')
colnames(RS_12_11_id_30) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

RS_13_11_id_30 <- RS_13_11[RS_13_11$Hoejde == 30, ]
RS_13_11_id_30
RS_13_11_id_30 <- cbind(RS_13_11_id_30,'d')
colnames(RS_13_11_id_30) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

RS_15_11_id_30 <- RS_15_11[RS_15_11$Hoejde == 30, ]
RS_15_11_id_30
RS_15_11_id_30 <- cbind(RS_15_11_id_30,'e')
colnames(RS_15_11_id_30) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

alle_30cm <- rbind(RS_23_10_id_30, RS_24_10_id_30, RS_12_11_id_30,
                   RS_13_11_id_30, RS_15_11_id_30)
alle_30cm
Mean_30cm <- mean(alle_30cm$RASTERVALU,na.rm = "T")
Mean_30cm
RS_23_10


# for 40cm
RS_23_10_id_40 <- RS_23_10[RS_23_10$Hoejde == 40, ]
RS_23_10_id_40  
RS_23_10_id_40 <- cbind(RS_23_10_id_40,'a')
colnames(RS_23_10_id_40) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

RS_24_10_id_40 <- RS_24_10[RS_24_10$Hoejde == 30, ] # Bevidst handing
RS_24_10_id_40
#RS_24_10_id_40$Hoejde[RS_24_10_id_40$Hoejde == 40] 
#RS_24_10_id_40$Hoejde <- as.numeric(RS_24_10_id_40$Hoejde)
RS_24_10_id_40 <- cbind(RS_24_10_id_40[1],'40',RS_24_10_id_40[3:5],'b')
colnames(RS_24_10_id_40) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

RS_12_11_id_40 <- RS_12_11[RS_12_11$Hoejde == 40, ]
RS_12_11_id_40 
RS_12_11_id_40 <- cbind(RS_12_11_id_40,'c')
colnames(RS_12_11_id_40) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

RS_13_11_id_40 <- RS_13_11[RS_13_11$Hoejde == 40, ]
RS_13_11_id_40
RS_13_11_id_40 <- cbind(RS_13_11_id_40,'d')
colnames(RS_13_11_id_40) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')

RS_15_11_id_40 <- RS_15_11[RS_15_11$Hoejde == 40, ]
RS_15_11_id_40
RS_15_11_id_40 <- cbind(RS_15_11_id_40,'e')
colnames(RS_15_11_id_40) <- c('Linje','Hoejde','xcoord','ycoord','RASTERVALU','ID')


alle_40cm <- rbind(RS_23_10_id_40, RS_24_10_id_40, RS_12_11_id_40,
                   RS_13_11_id_40, RS_15_11_id_40)
alle_40cm
Mean_40cm <- mean(alle_40cm$RASTERVALU,na.rm = "T")
Mean_40cm

#### Alle samlet
alle_hoejder_samlet <- rbind(alle_12cm,alle_20cm,alle_30cm,alle_40cm)
alle_hoejder_samlet
##########################################################################################################

##### Alle combined mean values ####################

alle_mean <- cbind(Mean_12cm,Mean_20cm,Mean_30cm,Mean_40cm)
alle_mean

#Definer Std.fejl
std <- function(x) sd(x)/sqrt(length(x))
# For 12cm
a <- std(alle_12cm)
# For 20cm
b <- std(alle_20cm)
# For 30cm
c <- std(alle_30cm)
# For 40cm
d <- std(alle_40cm)

#saml til dataframe
std.err_alle <- cbind(a,b,c,d)

# confidens_intervaller

confi_alle <- 1.96*std.err_alle
confi_alle
std.err_alle


bar_alle <- barplot(alle_mean, col = "grey", ylim = c(0,0.5),las=1,
                    names.arg=c(names(alle_mean)[1:4], labels=c("12 cm","20 cm","30 cm","40 cm")))

#std.err
#arrows(bar_alle, alle_mean+std.err_alle, bar_alle, alle_mean-std.err_alle, code = 3, angle = 90, length = 0.05)
#confi
arrows(bar_alle, alle_mean+confi_alle, bar_alle, alle_mean-confi_alle, code = 3, angle = 90, length = 0.05)
# Tilføj tekst
mtext("Hight of silhouette (cm)", side=1, cex=1.5, line=1.5, outer=TRUE)   
mtext("Mean hight to be added for visibility (m)", side=2, cex=1.5, line=1.5, outer=TRUE)
mtext("Visibility analysis for field test with silhouettes", side=3, cex=1.5, line=1.5, outer=TRUE)



############*************** Alle combineret i grupperet bar chart ######**********
# Først udregn mean og 95 % conf
# Brug denne funktion
## Gives count, mean, standard deviation, standard error of the mean, and confidence interval (default 95%).
##   data: a data frame.
##   measurevar: the name of a column that contains the variable to be summariezed
##   groupvars: a vector containing names of columns that contain grouping variables
##   na.rm: a boolean that indicates whether to ignore NA's
##   conf.interval: the percent range of the confidence interval (default is 95%)
summarySE <- function(data=NULL, measurevar, groupvars=NULL, na.rm=FALSE,
                      conf.interval=.95, .drop=TRUE) {
  library(plyr)
  
  # New version of length which can handle NA's: if na.rm==T, don't count them
  length2 <- function (x, na.rm=FALSE) {
    if (na.rm) sum(!is.na(x))
    else       length(x)
  }
  
  # This does the summary. For each group's data frame, return a vector with
  # N, mean, and sd
  datac <- ddply(data, groupvars, .drop=.drop,
                 .fun = function(xx, col) {
                   c(N    = length2(xx[[col]], na.rm=na.rm),
                     mean = mean   (xx[[col]], na.rm=na.rm),
                     sd   = sd     (xx[[col]], na.rm=na.rm)
                   )
                 },
                 measurevar
  )
  
  # Rename the "mean" column    
  datac <- rename(datac, c("mean" = measurevar))
  
  datac$se <- datac$sd / sqrt(datac$N)  # Calculate standard error of the mean
  
  # Confidence interval multiplier for standard error
  # Calculate t-statistic for confidence interval: 
  # e.g., if conf.interval is .95, use .975 (above/below), and use df=N-1
  ciMult <- qt(conf.interval/2 + .5, datac$N-1)
  datac$ci <- datac$se * ciMult
  
  return(datac)
}
############### Udregn nu via summarySE
# Højde som factors
head(alle_hoejder_samlet)
library(dplyr)
library(tidyverse)
# summarySE provides the standard deviation, standard error of the mean, and a 
# (default 95%) confidence interval
alle_mean_ci <- summarySE(alle_hoejder_samlet, measurevar="RASTERVALU", 
                          groupvars=c("ID","Hoejde"))

alle_mean_ci
alle_hoejder_samlet

####### Prøv med bootstrap
#install.packages('rcompanion')
library('rcompanion')

alle_mean_ci_boot <- groupwiseMean(
  formula = RASTERVALU ~ ID + Hoejde,
  data = alle_hoejder_samlet,
  var = "RASTERVALU",
  group = c("ID","Hoejde"),
  conf = 0.95,
  R = 10000,
  boot = TRUE,
  traditional = TRUE,
  normal = TRUE,
  basic = TRUE,
  percentile = TRUE,
  bca = TRUE,
  digits = 3
)
View()

alle_mean_ci_boot
alle_mean_ci
###########################

library(ggplot2)
library(dplyr)
library(ggpmisc)
#install.packages('ggsignif')
library(ggsignif)


# Use x-akse factors
alle_mean_ci_factor <- alle_mean_ci_boot
alle_mean_ci_factor$Hoejde <- as.factor(alle_mean_ci_factor$Hoejde)

# Reorder dataframe
alle_mean_ci_factor$ID <- factor(alle_mean_ci_factor$ID, 
                                 levels=c("d", "c","e", "a", "b"))
alle_mean_ci_factor

# sæt categories in meters
alle_mean_ci_factor$Hoejde <- paste("0", alle_mean_ci_factor$Hoejde, sep=".")


# Use 95% confidence intervals instead of SEM
ggplot(alle_mean_ci_factor, aes(x=Hoejde, y=Boot.mean, fill=ID)) + 
  geom_bar(position=position_dodge(width = .7), stat="identity",
           colour="black", # Use black outlines,
           size=.5, width = .6) +      # Thinner lines) +
  geom_errorbar(aes(ymin=Bca.lower, ymax=Bca.upper),
                width=.2,                    # Width of the error bars
                position=position_dodge(.7)) +
  xlab("Hight of silhouette (cm)") +
  ylab("Mean height to be added for visibility (m)") +
  scale_fill_manual(values = c("white",'lightgrey','darkgrey','grey45','grey25'),
                    name="Field location", # Legend label, use darker colors
                    breaks=c("d", "c","e", "a", "b"),
                    labels=c("Ribe Kammersluse (N)","Kærkælling Klint",
                             "Ballum Sluse","Rejsby Klint",
                             "Ribe Kammersluse (S)")) +
  theme_bw() + ylim(-0.06,1.) +
# Tilføj signifikansniveauer  
  geom_signif(comparisons = list(c("12", "20")), size = 0.8,
              map_signif_level=TRUE,test = "wilcox.test",y_position = 0.65) +
  geom_signif(comparisons = list(c("20", "30")), size = 0.8,
              map_signif_level=TRUE,test = "wilcox.test",y_position = 0.7) +
  geom_signif(comparisons = list(c("30", "40")), size = 0.8,
              map_signif_level=TRUE,test = "wilcox.test",y_position = 0.75) +
  geom_signif(comparisons = list(c("12", "40")), size = 0.8,
              map_signif_level=TRUE,test = "wilcox.test",y_position = 0.99) +
  geom_signif(comparisons = list(c("12", "30")), size = 0.8,
              map_signif_level=TRUE,test = "wilcox.test",y_position = 0.8) +
  geom_signif(comparisons = list(c("20", "40")), size = 0.8,
              map_signif_level=TRUE,test = "wilcox.test",y_position = 0.9)


alle_mean_ci_factor

####** Plot med kun significante sammenligninger
ggplot(alle_mean_ci_factor, aes(x=Hoejde, y=Boot.mean, fill=ID, width )) + 
  geom_bar(position=position_dodge(width = .8), stat="identity",
           colour="black", # Use black outlines,
           size=.5, width = .6) +      # Thinner lines) +
  geom_errorbar(aes(ymin=Bca.lower, ymax=Bca.upper),
                width=.2,                    # Width of the error bars
                position=position_dodge(.8)) +
  xlab("Hight of silhouette (m)") +
  ylab("Mean height to be added for visibility (m)") +
  scale_fill_manual(values = c("white",'lightgrey','darkgrey','grey45','grey25'),
                    name="Field location", # Legend label, use darker colors
                    breaks=c("d", "c","e", "a", "b"),
                    labels=c("Ribe Kammersluse (N)","Kærkælling Klint",
                             "Ballum Sluse","Rejsby Klint",
                             "Ribe Kammersluse (S)")) +
  theme_bw() +
  theme(legend.text=element_text(size=13),legend.title=element_text(size=15),
        axis.text=element_text(size=13),
        axis.title=element_text(size = 15)) +
  scale_y_continuous(limits=(0:1.),breaks=seq(0,1.2,0.1)) +
  # Tilføj signifikansniveauer  
  geom_signif(comparisons = list(c("0.12", "0.40")), size = 0.7,
              map_signif_level=TRUE,test = "wilcox.test",y_position = 0.95) +
  geom_signif(comparisons = list(c("0.12", "0.30")), size = 0.7,
              map_signif_level=TRUE,test = "wilcox.test",y_position = 0.7) +
  geom_signif(comparisons = list(c("0.20", "0.40")), size = 0.7,
              map_signif_level=TRUE,test = "wilcox.test",y_position = 0.8)



#### Lav Kruskal-Wallis to estimate differences relationship

kruskal.test(RASTERVALU ~ ID,
             data = alle_hoejder_samlet)

### Lav spearman non-parametric to test for correlation between variables

cor.test(alle_hoejder_samlet$RASTERVALU, as.numeric(alle_hoejder_samlet$Hoejde),
         method=c("spearman"))


alle_hoejder_samlet
### Bootstrap for pooled højder

alle_cate_højde_mean_ci_boot <- groupwiseMean(
  formula = RASTERVALU ~  Hoejde,
  data = alle_hoejder_samlet,
  var = "RASTERVALU",
  group = c("ID"),
  conf = 0.95,
  R = 10000,
  boot = TRUE,
  traditional = TRUE,
  normal = TRUE,
  basic = TRUE,
  percentile = TRUE,
  bca = TRUE,
  digits = 3
)


data.frame(alle_cate_højde_mean_ci_boot)
alle_cate_højde_mean_ci_boot



######################## Tjek for normalfordeling 
library(dplyr)      # for data manipulation functions
library(tidyr)      # for data manipulation functions
library(data.table) # for function `fread`
library(broom)      # for function `tidy`

# 1. Gather the variables that values should be tested.
# 2. Group by variable with variable names (`variable_name`) and 
#    by all group variables (in our case `NVL`).
# 3. Do the test for `value` and tidy the result.
# 4. Ungroup (it's a good practice to do this). 
# 5. Remove unnecessary information (column `method`).
# install.packages('nortest')
library(nortest)

alle_hoejder_samlet
norma_ID <- alle_hoejder_samlet %>% 
  gather(key = "variable_name", value = "value", RASTERVALU) %>% 
  group_by(variable_name, ID)  %>% 
  do(tidy(shapiro.test(.$value[1:5000]))) %>% 
  ungroup() %>% 
  select(-method)

norma_ID
