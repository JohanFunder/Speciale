library(dplyr)
library(ggplot2)
#04_10
# indlæs CSV filer
directory <- "F:/Vadehavet/GIS_projekts/Projekter_prik/04_10_f3"

x <- file.path(directory,"/Dens_gravand_04_10.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
head(x)
mean(x$RASTERVALU)

# Giv unik artskode
x <- cbind(x[2], "Shelduck04")
colnames(x) <- c('RASTERVALU','id')

shelduck04 <- x
head(x)

qqnorm(x$RASTERVALU)
qqline(x$RASTERVALU)

boxplot(x$RASTERVALU)


ggplot(x, aes(RASTERVALU)) +
  geom_histogram(aes(x=RASTERVALU, y=..density..), bins=50, fill="#d3d3d3", color="black") + 
  theme_light()+
  ggtitle("Shelduck Kernel Density 04. Oct.") + theme(plot.title = element_text(hjust = 0.5)) +
  xlab("Density pr. m2") + ylab("Number of samples") +
  stat_function(fun=dnorm, args = list(mean=mean(x$RASTERVALU), sd=sd(x$RASTERVALU)), color="red", size=1) +
  geom_density(color="blue", size=1)

# 27_09_RYLE
# indlæs CSV filer
directory <- "F:/Vadehavet/GIS_projekts/Projekter_prik/09_27_RD_del_af"

x <- file.path(directory,"/Dens_Ryle_27_09.csv")
x <- read.csv(file=x, header= TRUE)
str(x)
head(x)

# Giv unik artskode
x <- cbind(x[2], "Dunlin27")
colnames(x) <- c('RASTERVALU','id')

Dunlin27 <- x
head(x)

mean(x$RASTERVALU)

qqnorm(x$RASTERVALU)
qqline(x$RASTERVALU)

boxplot(x$RASTERVALU)

v <- sort(x$RASTERVALU, decreasing = TRUE)

# View(v)
x[1:200,2]

ggplot(x, aes(RASTERVALU)) +
  geom_histogram(aes(x=RASTERVALU, y=..density..), bins=10000, fill="#d3d3d3", color="black") + 
  theme_light()+
  ggtitle("Dunlin Kernel Density 27. Sep.") + theme(plot.title = element_text(hjust = 0.5)) +
  xlab("Density pr. m2") + ylab("Number of samples") +
  stat_function(fun=dnorm, args = list(mean=mean(x$RASTERVALU), sd=sd(x$RASTERVALU)), color="red", size=1) +
  geom_density(color="blue", size=1)


# 27_09_Ryle
# indlæs CSV filer
directory <- "F:/Vadehavet/GIS_projekts/Projekter_prik/09_27_RD_del_af"

x <- file.path(directory,"/Dens_Gravand_27_09.csv")
x <- read.csv(file=x, header= TRUE)
str(x)

# Giv unik artskode
x <- cbind(x[2], "Shelduck27")
colnames(x) <- c('RASTERVALU','id')

shelduck27 <- x
head(x)


mean(x$RASTERVALU)

qqnorm(x$RASTERVALU)
qqline(x$RASTERVALU)

boxplot(x$RASTERVALU)


ggplot(x, aes(RASTERVALU)) +
  geom_histogram(aes(x=RASTERVALU, y=..density..), bins=50, fill="#d3d3d3", color="black") + 
  theme_light()+
  ggtitle("Shelduck Kernel Density 27. Sep.") + theme(plot.title = element_text(hjust = 0.5)) +
  xlab("Density pr. m2") + ylab("Number of samples") +
  stat_function(fun=dnorm, args = list(mean=mean(x$RASTERVALU), sd=sd(x$RASTERVALU)), color="red", size=1) +
  geom_density(color="blue", size=1)


############### Samlet plot gravand og ryle 27. sep.
# Først lav samlet dataframe
DS27 <- rbind(Dunlin27,shelduck27)
head(DS27)

SS04 <- rbind(shelduck27,shelduck04)


ggplot(DS27, aes(RASTERVALU, fill = id, colour = id)) +
  geom_density(alpha = 0.1)

ggplot(SS04, aes(RASTERVALU, fill = id, colour = id)) +
  geom_density(alpha = 0.1)

