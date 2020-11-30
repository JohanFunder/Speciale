library(dplyr)
library(ggplot2)
# indlæs CSV filer
directory <- "G:/Vadehavet/Sound_test"


# Mavic_1
x <- file.path(directory,"/Mavic_1.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Mavic_1',length(dat$Value.dBA)),rep('Mavic Hover',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Mavic_1 <- dat


# Mavic_2
x <- file.path(directory,"/Mavic_2.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Mavic_2',length(dat$Value.dBA)),rep('Mavic Hover',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Mavic_2 <- dat

# Mavic_3
x <- file.path(directory,"/Mavic_3.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Mavic_3',length(dat$Value.dBA)),rep('Mavic Hover',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Mavic_3 <- dat

# Mavic_max_1
x <- file.path(directory,"/Mavic_max_1.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Mavic_max_1',length(dat$Value.dBA)),rep('Mavic Max',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Mavic_max_1 <- dat

# Mavic_max_2
x <- file.path(directory,"/Mavic_max_2.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Mavic_max_2',length(dat$Value.dBA)),rep('Mavic Max',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Mavic_max_2 <- dat

# Mavic_max_3
x <- file.path(directory,"/Mavic_max_3.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Mavic_max_3',length(dat$Value.dBA)),rep('Mavic Max',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Mavic_max_3 <- dat

# Mavic_max_4
x <- file.path(directory,"/Mavic_max_4.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Mavic_max_4',length(dat$Value.dBA)),rep('Mavic Max',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Mavic_max_4 <- dat

# Phantom_1
x <- file.path(directory,"/Phantom_1.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Phantom_1',length(dat$Value.dBA)),rep('Phantom Hover',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Phantom_1 <- dat

# Phantom_2
x <- file.path(directory,"/Phantom_2.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Phantom_2',length(dat$Value.dBA)),rep('Phantom Hover',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Phantom_2 <- dat

# Phantom_3
x <- file.path(directory,"/Phantom_3.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Phantom_3',length(dat$Value.dBA)),rep('Phantom Hover',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Phantom_3 <- dat

# Phantom_4
x <- file.path(directory,"/Phantom_4.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Phantom_4',length(dat$Value.dBA)),rep('Phantom Hover',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Phantom_4 <- dat

# Phantom_5
x <- file.path(directory,"/Phantom_5.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Phantom_5',length(dat$Value.dBA)),rep('Phantom Hover',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Phantom_5 <- dat

# Phantom_Max_1
x <- file.path(directory,"/Phantom_max_1.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Phantom_Max_1',length(dat$Value.dBA)),rep('Phantom Max',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Phantom_max_1 <- dat

# Phantom_Max_2
x <- file.path(directory,"/Phantom_max_2.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Phantom_Max_2',length(dat$Value.dBA)),rep('Phantom Max',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Phantom_max_2 <- dat

# Phantom_Max_3
x <- file.path(directory,"/Phantom_max_3.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Phantom_Max_3',length(dat$Value.dBA)),rep('Phantom Max',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Phantom_max_3 <- dat

# Phantom_Max_4
x <- file.path(directory,"/Phantom_max_4.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
dat <- select(x,'Sample','Date','Time','Value.dBA')
dat <- cbind(dat,rep('Phantom_Max_4',length(dat$Value.dBA)),rep('Phantom Max',length(dat$Value.dBA)))
colnames(dat) <- c('Sample','Date','Time','Value.dBA','repl','id')
dat
mean(dat$Value.dBA)
plot(dat$Value.dBA)
Phantom_max_4 <- dat


# Samlet

Sound <- rbind.data.frame(Phantom_1,Phantom_2,Phantom_3,Phantom_4,Phantom_5,
                          Phantom_max_1,Phantom_max_2,Phantom_max_3,Phantom_max_4,
                          Mavic_1,Mavic_2,Mavic_3,Mavic_max_1,Mavic_max_2,Mavic_max_3,Mavic_max_4)

Phantom_1

head(Sound)

# Udregn mean values for hover og max
std <- function(x) sd(x)/sqrt(length(x))
conf <- function(x) 1.96*x

Mavic_hover <- Sound[Sound$id == "Mavic Hover", ]
m_m_h <- mean(Mavic_hover$Value.dBA)
m_m_h
conf_m_h <- conf(std(Mavic_hover$Value.dBA))
conf_m_h


Phantom_hover <- Sound[Sound$id == "Phantom Hover", ]
m_p_h <- mean(Phantom_hover$Value.dBA)
m_p_h
conf_p_h <- conf(std(Phantom_hover$Value.dBA))
conf_p_h

Mavic_max <- Sound[Sound$id == "Mavic Max", ]
m_m_m <- mean(Mavic_max$Value.dBA)
m_m_m
conf_m_m <- conf(std(Mavic_max$Value.dBA))
conf_m_m

Phantom_max <- Sound[Sound$id == "Phantom Max", ]
m_p_m <- mean(Phantom_max$Value.dBA)
m_p_m
conf_p_m <- conf(std(Phantom_max$Value.dBA))
conf_p_m

m_p_h - m_m_h

m_p_m - m_m_m

# Plot for hver gentagelse
p_Sound <- ggplot(data = Sound, aes(x = Sample, y = Value.dBA, group = repl,
                                       color = repl)) + facet_wrap(~repl)
p_Sound + geom_point() +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) +theme_bw()  + 
  theme(legend.background = element_rect(colour = 'black', fill = 'white', linetype='solid')) +
  ggtitle("Escape distance") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Percent disturbed") + ylab("Flying altitude")


# Plot for hover og Max
p_Sound_HM <- ggplot(data = Sound, aes(x = Sample, y = Value.dBA, group = id,
                                    color = id)) + facet_wrap(~id)
p_Sound_HM + geom_point() +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) +theme_bw()  + 
  ylim(70,100) +
  theme(legend.background = element_rect(colour = 'black', fill = 'white', linetype='solid')) +
  ggtitle("UAV noise emission") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Elapsed time (sec.)") + ylab("Sound level (dB(A))") +
  scale_color_manual(values = c('Mavic Hover' = "navy",'Mavic Max' = "navy",
                                'Phantom Hover' = "red4",'Phantom Max' = "red4"))




# Lav bootstrap confidens intervaller
library(boot)
meanfun <- function(data, i){
  d <- data[i, ]
  return(mean(d))   
}

# frequentist
boot.mavic.H <- boot(Mavic_hover[, "Value.dBA", drop = FALSE], statistic=meanfun, R=10000)
CI.mavic.H <-  boot.ci(boot.mavic.H, conf=0.95, type="bca")
boot.mavic.M <- boot(Mavic_max[, "Value.dBA", drop = FALSE], statistic=meanfun, R=10000)
CI.mavic.M <-  boot.ci(boot.mavic.M, conf=0.95, type="bca")
boot.phantom.H <- boot(Phantom_hover[, "Value.dBA", drop = FALSE], statistic=meanfun, R=10000)
CI.phantom.H <-  boot.ci(boot.phantom.H, conf=0.95, type="bca")
boot.phantom.M <- boot(Phantom_max[, "Value.dBA", drop = FALSE], statistic=meanfun, R=10000)
CI.phantom.M <-  boot.ci(boot.phantom.M, conf=0.95, type="bca")



lowerbound <- cbind(CI.mavic.H$bca[4],CI.mavic.M$bca[4],CI.phantom.H$bca[4],CI.phantom.M$bca[4])
upperbound <- cbind(CI.mavic.H$bca[5],CI.mavic.M$bca[5],CI.phantom.H$bca[5],CI.phantom.M$bca[5])
boot.mean <- cbind(boot.mavic.H$t0,boot.mavic.M$t0,boot.phantom.H$t0,boot.phantom.M$t0)
colnames(boot.mean) <- c('Mavic Hover', 'Mavic Max', 'Phantom Hover', 'Phantom Max')

lowerbound
upperbound
boot.mean
label <- c('Mavic Hover','Mavic Max','Phantom Hover', 'Phantom Max')
x <- 1:4

## Lav barplot for antal dBA
# sæt størrelse på marginer
par(mfrow=c(1,1))
par(oma=c(2.5,3.2,2.5,1.5))
par(mar=c(2.5,1.2,2.5,1))

sound.bar <- barplot(boot.mean, ylim=c(70,100),col=c("grey"), xpd = FALSE)

arrows(sound.bar, lowerbound, sound.bar, upperbound, length=0.05, angle=90, code=3, col = 'black')

mtext("UAV treatment", side=1, cex=1.3, line=1., outer=TRUE)   
mtext("Sound level (dB(A))", side=2, cex=1.3, line=1.3, outer=TRUE)
mtext("UAV noise emission", side=3, cex=1.3, line=-1.5, outer=TRUE)

# Omregn til forskel i procent: percentage <- (2^((dB_end - dB_start)/10))*100
# Find først forskel mellem hover og max for begge droner 

## % forskel phantom og mavic hover
mean.percent.diff.H <- (2^((boot.phantom.H$t0 - boot.mavic.H$t0)/10))*100
mean.percent.diff.H
# % forskel i nedre confidens intervaller
low.conf.percent.diff.H <- (2^((CI.phantom.H$bca[4] - CI.mavic.H$bca[4])/10))*100
low.conf.percent.diff.H
# % forskel i øvre confidens intervaller
upp.conf.percent.diff.H <- (2^((CI.phantom.H$bca[5] - CI.mavic.H$bca[5])/10))*100
upp.conf.percent.diff.H

## % forskel phantom og mavic max
mean.percent.diff.M <- (2^((boot.phantom.M$t0 - boot.mavic.M$t0)/10))*100
mean.percent.diff.M
# % forskel i nedre confidens intervaller
low.conf.percent.diff.M <- (2^((CI.phantom.M$bca[4] - CI.mavic.M$bca[4])/10))*100
low.conf.percent.diff.M
# % forskel i øvre confidens intervaller
upp.conf.percent.diff.M <- (2^((CI.phantom.M$bca[5] - CI.mavic.M$bca[5])/10))*100
upp.conf.percent.diff.M

## % forskel phantom hover og phantom max
mean.percent.diff.Phan_H.M <- (2^((boot.phantom.M$t0 - boot.phantom.H$t0)/10))*100
mean.percent.diff.Phan_H.M
# % forskel i nedre confidens intervaller
low.conf.percent.diff.Phan_H.M <- (2^((CI.phantom.M$bca[4] - CI.phantom.H$bca[4])/10))*100
low.conf.percent.diff.Phan_H.M
# % forskel i øvre confidens intervaller
upp.conf.percent.diff.Phan_H.M <- (2^((CI.phantom.M$bca[5] - CI.phantom.H$bca[5])/10))*100
upp.conf.percent.diff.Phan_H.M

## % forskel mavic hover og mavic max
mean.percent.diff.Mavic_H.M <- (2^((boot.mavic.M$t0 - boot.mavic.H$t0)/10))*100
mean.percent.diff.Mavic_H.M
# % forskel i nedre confidens intervaller
low.conf.percent.diff.Mavic_H.M <- (2^((CI.mavic.M$bca[4] - CI.mavic.H$bca[4])/10))*100
low.conf.percent.diff.Mavic_H.M
# % forskel i øvre confidens intervaller
upp.conf.percent.diff.Mavic_H.M <- (2^((CI.mavic.M$bca[5] - CI.mavic.H$bca[5])/10))*100
upp.conf.percent.diff.Mavic_H.M

percent.boot <- cbind(mean.percent.diff.H,mean.percent.diff.M,
                      mean.percent.diff.Phan_H.M,mean.percent.diff.Mavic_H.M)
colnames(percent.boot) <- c('Mavic - Phantom','Mavic - Phantom','Phantom','Mavic')
# minus med 100 for at få den egentlige procentvise stigning
percent.boot <- percent.boot-100
percent.boot
lowerbound.percent <- cbind(low.conf.percent.diff.H,low.conf.percent.diff.M,
                            low.conf.percent.diff.Phan_H.M,low.conf.percent.diff.Mavic_H.M)
lowerbound.percent <- lowerbound.percent-100
upperbound.percent <- cbind(upp.conf.percent.diff.H,upp.conf.percent.diff.M,
                            upp.conf.percent.diff.Phan_H.M,upp.conf.percent.diff.Mavic_H.M)
upperbound.percent <- upperbound.percent-100

### Lav barplot med percentage diff ###
percent.sound.bar <- barplot(percent.boot, ylim=c(0,250),col=c("grey"), xpd = FALSE)

arrows(percent.sound.bar, lowerbound.percent, percent.sound.bar, upperbound.percent,
       length=0.05, angle=90, code=3, col = 'black')

text(0.71, 10, "Hover")
text(1.92, 10, "Max")
text(3.13, 10, "Hover - Max")
text(4.29, 10, "Hover - Max")

mtext("Comparisons", side=1, cex=1.5, line=-2., outer=TRUE)   
mtext("Perceived sound increase (%)", side=2, cex=1.5, line=-1.5, outer=TRUE)
mtext("Perceived increase in sound emission between the used UAVs", side=3, cex=1.5, line=-2.5, outer=TRUE)


##### ******** Lav absolute forskelle******** 
##omregn til forskel i procent: percentage <- (2^((dB_end - dB_start)/10))*100
# Find først forskel mellem hover og max for begge droner 

m <- (2^((75 - 0)/10))
p <- (2^((85 - 0)/10))
q <- (2^((95 - 0)/10))

p-m
q-m

## % forskel phantom og mavic hover
mean.percent.abso.mavic.H <- (2^((boot.mavic.H$t0)/10))
mean.percent.abso.phan.H <- (2^((boot.phantom.H$t0)/10))
mean.percent.abso.diff.H <- mean.percent.abso.phan.H - mean.percent.abso.mavic.H 
mean.percent.abso.diff.H
# % forskel i nedre confidens intervaller
low.conf.percent.abso.mavic.H <- (2^((CI.mavic.H$bca[4])/10))
low.conf.percent.abso.phan.H <- (2^((CI.phantom.H$bca[4])/10))
low.conf.percent.abso.diff.H <- low.conf.percent.abso.phan.H - mean.percent.abso.mavic.H
low.conf.percent.abso.diff.H
# % forskel i øvre confidens intervaller
upp.conf.percent.abso.mavic.H <- (2^((CI.mavic.H$bca[5])/10))
upp.conf.percent.abso.phan.H <- (2^((CI.phantom.H$bca[5])/10))
upp.conf.percent.abso.diff.H <- upp.conf.percent.abso.phan.H - upp.conf.percent.abso.mavic.H
upp.conf.percent.abso.diff.H

## % forskel phantom og mavic max
mean.percent.abso.mavic.M <- (2^((boot.mavic.M$t0)/10))
mean.percent.abso.phan.M <- (2^((boot.phantom.M$t0)/10))
mean.percent.abso.diff.M <- mean.percent.abso.phan.M - mean.percent.abso.mavic.M 
mean.percent.abso.diff.M
# % forskel i nedre confidens intervaller
low.conf.percent.abso.mavic.M <- (2^((CI.mavic.M$bca[4])/10))
low.conf.percent.abso.phan.M <- (2^((CI.phantom.M$bca[4])/10))
low.conf.percent.abso.diff.M <- low.conf.percent.abso.phan.M - low.conf.percent.abso.mavic.M
low.conf.percent.abso.diff.M
# % forskel i øvre confidens intervaller
upp.conf.percent.abso.mavic.M <- (2^((CI.mavic.M$bca[5])/10))
upp.conf.percent.abso.phan.M <- (2^((CI.phantom.M$bca[5])/10))
upp.conf.percent.abso.diff.M <- upp.conf.percent.abso.phan.M - upp.conf.percent.abso.mavic.M
upp.conf.percent.abso.diff.M

## % forskel phantom hover og phantom max
mean.percent.abso.diff.phan_H.M <- mean.percent.abso.phan.M - mean.percent.abso.phan.H
mean.percent.abso.diff.phan_H.M
# % forskel i nedre confidens intervaller
low.conf.percent.abso.diff.phan_H.M <- low.conf.percent.abso.phan.M - low.conf.percent.abso.phan.H
low.conf.percent.abso.diff.phan_H.M
# % forskel i øvre confidens intervaller
upp.conf.percent.abso.diff.phan_H.M <- upp.conf.percent.abso.phan.M - upp.conf.percent.abso.phan.H
upp.conf.percent.abso.diff.phan_H.M

## % forskel mavic hover og mavic max
mean.percent.abso.diff.mavic_H.M <- mean.percent.abso.mavic.M - mean.percent.abso.mavic.H
mean.percent.abso.diff.mavic_H.M
# % forskel i nedre confidens intervaller
low.conf.percent.abso.diff.mavic_H.M <- low.conf.percent.abso.mavic.M - low.conf.percent.abso.mavic.H
low.conf.percent.abso.diff.mavic_H.M
# % forskel i øvre confidens intervaller
upp.conf.percent.abso.diff.mavic_H.M <- upp.conf.percent.abso.mavic.M - upp.conf.percent.abso.mavic.H
upp.conf.percent.abso.diff.mavic_H.M

# sammen dataframes
percent.boot.abso <- cbind(mean.percent.abso.diff.H,mean.percent.abso.diff.M,
                      mean.percent.abso.diff.phan_H.M,mean.percent.abso.diff.mavic_H.M)
colnames(percent.boot.abso) <- c('Mavic - Phantom','Mavic - Phantom','Phantom','Mavic')

lowerbound.percent.abso <- cbind(low.conf.percent.abso.diff.H,low.conf.percent.abso.diff.M,
                            low.conf.percent.abso.diff.phan_H.M,low.conf.percent.abso.diff.mavic_H.M)
upperbound.percent.abso <- cbind(upp.conf.percent.abso.diff.H,upp.conf.percent.abso.diff.M,
                            upp.conf.percent.abso.diff.phan_H.M,upp.conf.percent.abso.diff.mavic_H.M)

percent.boot.abso
lowerbound.percent.abso
upperbound.percent.abso

### Lav barplot med percentage diff ###
percent.sound.abso.bar <- barplot(percent.boot.abso, ylim=c(0,550),col=c("grey"), xpd = FALSE)

arrows(percent.sound.abso.bar, lowerbound.percent.abso, percent.sound.abso.bar, upperbound.percent.abso,
       length=0.05, angle=90, code=3, col = 'black')

text(0.71, 20, "Hover")
text(1.92, 20, "Max")
text(3.13, 20, "Hover - Max")
text(4.29, 20, "Hover - Max")

mtext("Comparisons", side=1, cex=1.3, line=-2., outer=TRUE)   
mtext("Perceived sound increase (x fold)", side=2, cex=1.3, line=-1.5, outer=TRUE)
mtext("Absolute perceived increase in sound emission between the used UAVs", side=3, cex=1.3, line=-2.5, outer=TRUE)

### Test percent der flyver ved over 75 m højde

new_FH_samlet$hoejde
sort(new_FH_samlet$hoejde, decreasing = T)

13/247



###### Dobbelt y-akse
#Eksempel


# final plot
par(mar = c(5, 5, 3, 5))
plot(beaver1[1:100, 3], type ="l", ylab = "beaver1 temperature",
     main = "Beaver Temperature Plot", xlab = "Time",
     col = "blue")
par(new = TRUE)
plot(beaver2[,3], type = "l", xaxt = "n", yaxt = "n",
     ylab = "", xlab = "", col = "red", lty = 2)
axis(side = 4)
mtext("beaver2 temperature", side = 4, line = 3)
legend("topleft", c("beaver1", "beaver2"),
       col = c("blue", "red"), lty = c(1, 2))



