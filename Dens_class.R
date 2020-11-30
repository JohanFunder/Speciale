Dens_class_27_09 <- read.csv('D:/Vadehavet_GIS/eCognition/Class/Class_27_09.csv',header = T)
Dens_class_23_10 <- read.csv('D:/Vadehavet_GIS/eCognition/Class/Class_23_10.csv',header = T)

str(Dens_class_27_09)
# orden på forkert RASTERVALU
head(Dens_class_27_09)
oy <- subset(Dens_class_27_09, (art=='Oystercatcher'))
oy$RASTERVALU <- oy$RASTERVALU/100000
Dens_class_27_09 <- subset(Dens_class_27_09, !(art=='Oystercatcher'))
Dens_class_27_09 <- rbind(Dens_class_27_09,oy)
Dens_class_27_09$RASTERVALU[Dens_class_27_09$RASTERVALU < 0] <- 0
min(Dens_class_27_09$RASTERVALU)
Dens_class_23_10$RASTERVALU[Dens_class_23_10$RASTERVALU < 0] <- 0
min(Dens_class_23_10$RASTERVALU)


# Udskift forkerte classer
Dens_class_27_09$Class_name[Dens_class_27_09$Class_name==""]<-"Water"
Dens_class_27_09$Class_name[Dens_class_27_09$Class_name=="<Null>"]<-"Water"
Dens_class_23_10$Class_name[Dens_class_23_10$Class_name==""]<-"Deep Water"
Dens_class_27_09 <- droplevels(Dens_class_27_09)
Dens_class_23_10 <- droplevels(Dens_class_23_10)

# Swap intertidal flat og vegetation
Dens_class_23_10$Class_name <- gsub("Vegetation", "swap", Dens_class_23_10$Class_name)
Dens_class_23_10$Class_name <- gsub("Intertidal flat", "Vegetation", Dens_class_23_10$Class_name)
Dens_class_23_10$Class_name <- gsub("swap", "Intertidal flat", Dens_class_23_10$Class_name)
Dens_class_23_10$Class_name <- as.factor(Dens_class_23_10$Class_name)

# Sæt endelige navne til plottet
Dens_class_23_10$Class_name <- gsub("Intertidal flat", "Mudflats", Dens_class_23_10$Class_name)
Dens_class_23_10$Class_name <- as.factor(Dens_class_23_10$Class_name)

Dens_class_27_09$Class_name <- gsub("Intertidal flat", "Mudflats", Dens_class_27_09$Class_name)
Dens_class_27_09$Class_name <- as.factor(Dens_class_27_09$Class_name)

Dens_class_27_09 <- droplevels(Dens_class_27_09)
Dens_class_23_10 <- droplevels(Dens_class_23_10)
levels(Dens_class_27_09$Class_name)
levels(Dens_class_23_10$Class_name)

# Lav rigigt factor rækkefølge
Dens_class_27_09$Class_name <- factor(Dens_class_27_09$Class_name, 
                                      levels=c("Deep Water","Vegetation","Mudflats","Water"))

Dens_class_23_10$Class_name <- factor(Dens_class_23_10$Class_name, 
                        levels=c("Deep Water","Vegetation","Mudflats","Water"))

plot(Dens_class_27_09$Class_name,Dens_class_27_09$RASTERVALU,ylim=range(0:12))
plot(Dens_class_23_10$Class_name,Dens_class_23_10$RASTERVALU,ylim=range(0:12))

#View(Dens_class_27_09)

length(Dens_class_23_10$art)

# Lav bootstrap CI
Table2 <- unique(Dens_class_27_09$Class_name)
Table2 <- data.frame(Table2)
colnames(Table2) <- c('Class')
Table2$LowerCI <- rep( NA, length(Table2) )
Table2$UpperCI <- rep( NA, nrow(Table2) )
Table2$mean <- rep( NA, nrow(Table2) )
Table2

#install.packages("bootBCa", repos="http://R-Forge.R-project.org")
library('bootBCa')
for( i in Table2$Class )  {
  bird.boot <- BCa(Dens_class_27_09$RASTERVALU[Dens_class_27_09$Class_name==i],0.01,mean,
                   alpha = c(0.025, 0.975),M = 25000, Mlimit = 1500000)
  bird.boot <- cbind.data.frame(bird.boot) 
  
  Table2$LowerCI[Table2$Class==i] <- bird.boot[4,]
  Table2$UpperCI[Table2$Class==i] <- bird.boot[5,]
  Table2$mean[Table2$Class==i] <- bird.boot[3,]
}
Class_27_09 <- Table2

for( i in Table2$Class )  {
  bird.boot <- BCa(Dens_class_23_10$RASTERVALU[Dens_class_23_10$Class_name==i],0.01,mean,
                   alpha = c(0.025, 0.975),M = 25000, Mlimit = 1500000)
  bird.boot <- cbind.data.frame(bird.boot) 
  
  Table2$LowerCI[Table2$Class==i] <- bird.boot[4,]
  Table2$UpperCI[Table2$Class==i] <- bird.boot[5,]
  Table2$mean[Table2$Class==i] <- bird.boot[3,]
}
Class_23_10 <- Table2

Class_27_09
Class_23_10

Final_table <- rbind.data.frame(Class_27_09,Class_23_10)
Date <- c('27. Sep','27. Sep','27. Sep','27. Sep',
          '23. Oct','23. Oct','23. Oct','23. Oct')
Labels <- c('Waterline','Mudflats','Vegetation','Water',
            'Waterline','Mudflats','Vegetation','Water')
Date
Final_table <- cbind.data.frame(Final_table,Date,Labels)
Final_table
# Række levels
Final_table$Labels <- factor(Final_table$Labels, 
          levels=c("Water","Vegetation","Mudflats","Waterline"))
Final_table$Date <- factor(Final_table$Date, 
                             levels=c("27. Sep","23. Oct"))

# plot nu
library('ggplot2')
ggplot(Final_table, aes(x=Labels, y=mean, fill=Date)) + 
  geom_bar(position=position_dodge(width = .7), stat="identity",
           colour="black", # Use black outlines,
           size=.5, width = .5) +      # Thinner lines) +
  geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI),
                width=.2,                    # Width of the error bars
                position=position_dodge(.7)) +
  xlab("Habitat Class") +
  ylab(bquote('Density estimate ('~ m^2*')')) +
  scale_fill_manual(values = c("grey100",'lightgrey'),
                    name="Date", # Legend label, use darker colors
                    breaks=c("27. Sep","23. Oct"),
                    labels=c("27. Sep","23. Oct")) +
  theme_bw() +
  theme(legend.text=element_text(size=13),legend.title=element_text(size=15),
        axis.text=element_text(size=13),
        axis.title=element_text(size = 15),
        panel.grid = element_blank(),
        panel.border = element_blank(),
        axis.line = element_line(colour = "black")) +
  theme(plot.margin = margin(0.1, 0.1, 0.1, 0.1, "cm")) +
  scale_y_continuous(limits=c(0.0,5.5),breaks=seq(0,5.5,0.5))


##### Se med frequencer
# install.packages('dplyr')
library(plyr)
count(samlet_dens, 'art')
count(Dens_class_27_09,"Class_name")

Samlet_dens_class <- rbind(Dens_class_27_09[c("art", "Class_name")],
                           Dens_class_23_10[c("art", "Class_name")])

count(Samlet_dens_class, c("art", "Class_name"))

count(Dens_class_27_09, c("art", "Class_name"))
freq_class_27_09 <- count(Dens_class_27_09, c("art", "Class_name"))
freq_class_23_10 <- count(Dens_class_23_10, c("art", "Class_name"))
freq_class_23_10
library(stats)
freq_class_27_09$Percentage
freq_class_27_09$Percentage <- freq_class_27_09$freq / ave(freq_class_27_09$freq,
                                                           freq_class_27_09$art, 
                                                           FUN = sum)
freq_class_23_10$Percentage <- freq_class_23_10$freq / ave(freq_class_23_10$freq,
                                                           freq_class_23_10$art, 
                                                           FUN = sum)
freq_class_23_10
# 100 procent
freq_class_27_09$Percentage <- freq_class_27_09$Percentage*100
freq_class_27_09
freq_class_23_10$Percentage <- freq_class_23_10$Percentage*100
freq_class_23_10

# TIl bilags tabel
freq_class_27_09$art <- factor(freq_class_27_09$art,
                          levels=c("Dunlin","Golden Plover","Oystercatcher","Bar-tailed Godwit","Avocet",
                                   "Wigeon",
                                   "Pin-tailed Duck","Shelduck","Barnacle Goose",
                                   "Greylag Goose"))
freq_class_27_09 <- freq_class_27_09[order(freq_class_27_09$art),]

freq_class_23_10$art <- factor(freq_class_23_10$art,
                               levels=c("Dunlin","Golden Plover","Oystercatcher","Bar-tailed Godwit","Avocet",
                                        "Wigeon",
                                        "Pin-tailed Duck","Shelduck","Barnacle Goose",
                                        "Greylag Goose"))
freq_class_23_10 <- freq_class_23_10[order(freq_class_23_10$art),]

freq_class_27_09
freq_class_23_10

library('rcompanion')

hab_freq_27_09 <- groupwiseMean(
  formula = Percentage ~ Class_name,
  data = freq_class_27_09,
  var = "Percentage",
  group = c("Class_name"),
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
hab_freq_27_09

hab_freq_23_10 <- groupwiseMean(
  formula = Percentage ~ Class_name,
  data = freq_class_23_10,
  var = "Percentage",
  group = c("Class_name"),
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
hab_freq_23_10

# Saml til et dataframe
hab_freq_27_09$date <- c('27_09','27_09','27_09','27_09')
hab_freq_23_10$date <- c('23_10','23_10','23_10','23_10')
Labels <- c('Waterline','Vegetation','Mudflats','Water',
            'Waterline','Mudflats','Vegetation','Water')
hab_freq_samlet <- rbind(hab_freq_27_09,hab_freq_23_10)
hab_freq_samlet <- cbind(hab_freq_samlet,Labels)

hab_freq_samlet$Labels <- factor(hab_freq_samlet$Labels, 
                             levels=c("Water","Vegetation","Mudflats","Waterline"))
hab_freq_samlet$date <- factor(hab_freq_samlet$date, 
                           levels=c("27_09","23_10"))
hab_freq_samlet <- data.frame(hab_freq_samlet)
hab_freq_samlet$date <- hab_freq_samlet$date 
hab_freq_samlet

# Plot
library('ggplot2')
ggplot(hab_freq_samlet, aes(x=Labels, y=Boot.mean, fill=date)) + 
  geom_bar(position=position_dodge(width = .7), stat="identity",
           colour="black", # Use black outlines,
           size=.5, width = .5) +      # Thinner lines) +
  geom_errorbar(aes(ymin=Bca.lower, ymax=Bca.upper),
                width=.2,                    # Width of the error bars
                position=position_dodge(.7)) +
  xlab("Habitat Class") +
  ylab('Roosting individals (%)') +
  scale_fill_manual(values = c("grey100",'lightgrey'),
                    name="Date", # Legend label, use darker colors
                    breaks=c("27_09","23_10"),
                    labels=c("27. Sep","23. Oct")) +
  theme_bw() +
  theme(legend.text=element_text(size=13),legend.title=element_text(size=15),
        axis.text=element_text(size=13),
        axis.title=element_text(size = 15),
        panel.grid = element_blank(),
        panel.border = element_blank(),
        axis.line = element_line(colour = "black"),
        legend.position = "right") +
  scale_y_continuous(limits=c(0,100),breaks=seq(0,100,10))







# Frequence for hver gruppe habitat
#habitat_freq <- count(freq_class_27_09, c("Class_name","Percentage"))


#summary(habitat_freq)

#freq_class_27_09$Percentage/sum(freq_class_27_09$Percentage)


#habitat_freq_27_09 <- aggregate(.~Class_name, freq_class_27_09, sum, na.rm = TRUE, na.action=NULL)
#habitat_freq_27_09$Percentage <- habitat_freq_27_09$Percentage/sum(freq_class_27_09$Percentage)
#habitat_freq_27_09$date <- c('27_09','27_09','27_09','27_09')
#colnames(habitat_freq_27_09) <- c('Class_name','art','freq','Percentage','Date')
#habitat_freq_23_10 <- aggregate(.~Class_name, freq_class_23_10, sum, na.rm = TRUE, na.action=NULL)
#habitat_freq_23_10$Percentage <- habitat_freq_23_10$Percentage/sum(freq_class_23_10$Percentage)
#habitat_freq_23_10$date <- c('23_10','23_10','23_10','23_10')
#colnames(habitat_freq_23_10) <- c('Class_name','art','freq','Percentage','Date')

#habitat_samlet <- rbind(habitat_freq_27_09,habitat_freq_23_10)
#habitat_samlet
