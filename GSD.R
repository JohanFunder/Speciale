## Udregn Grouns Sample distance for the two UAS models

# For phantom
(45*1.32*100)/(0.88*5472)

# For mavic
(45*0.63*100)/(0.47*4000)


# Indlæs GSD synlighed
GSD_Mavic_all <- read.csv('G:/Vadehavet/Ælligeforsøg/GSD_Mavic_all.csv',header = T)

# Indlæs GSD synlighed
GSD_Phan_all <- read.csv('G:/Vadehavet/Ælligeforsøg/GSD_Phan_all.csv',header = T)

GSD_Phan_class1_long <- cbind(GSD_Phan_all[1:2],GSD_Phan_all[3:4],'V')
colnames(GSD_Phan_class1_long) <- c('height','GSD','prob','class','Index')
GSD_Phan_class2_long <- cbind(GSD_Phan_all[1:2],GSD_Phan_all[5:6],'SV')
colnames(GSD_Phan_class2_long) <- c('height','GSD','prob','class','Index')
GSD_Phan_class3_long <- cbind(GSD_Phan_all[1:2],GSD_Phan_all[7:8],'NV')
colnames(GSD_Phan_class3_long) <- c('height','GSD','prob','class','Index')
GSD_Phan_class_all_long <- rbind(GSD_Phan_class1_long,GSD_Phan_class2_long,GSD_Phan_class3_long)
GSD_Phan_class_all_long <- cbind(GSD_Phan_class_all_long,'Phantom')
colnames(GSD_Phan_class_all_long) <- c('height','GSD','prob','class','Index','UAS')
head(GSD_Phan_class_all_long)

GSD_Mavic_class1_long <- cbind(GSD_Mavic_all[1:2],GSD_Mavic_all[3:4],'V')
colnames(GSD_Mavic_class1_long) <- c('height','GSD','prob','class','Index')
GSD_Mavic_class2_long <- cbind(GSD_Mavic_all[1:2],GSD_Mavic_all[5:6],'SV')
colnames(GSD_Mavic_class2_long) <- c('height','GSD','prob','class','Index')
GSD_Mavic_class3_long <- cbind(GSD_Mavic_all[1:2],GSD_Mavic_all[7:8],'NV')
colnames(GSD_Mavic_class3_long) <- c('height','GSD','prob','class','Index')
GSD_Mavic_class_all_long <- rbind(GSD_Mavic_class1_long,GSD_Mavic_class2_long,GSD_Mavic_class3_long)
GSD_Mavic_class_all_long <- cbind(GSD_Mavic_class_all_long,'Mavic')
colnames(GSD_Mavic_class_all_long) <- c('height','GSD','prob','class','Index','UAS')

# Combine i endeligt dataframe
GSD_all <- rbind.data.frame(GSD_Phan_class_all_long,GSD_Mavic_class_all_long)         
head(GSD_all)

# Skriv csv fil med samlet data Mavic
write.csv(GSD_all, file = "G:/Vadehavet/Ælligeforsøg/GSD_all.csv")


library(ggplot2)
p_GSD <- ggplot(data = GSD_all, aes(x = GSD, y = prob, group = class, color = UAS))
#  geom_point()

p_GSD
p_GSD + 
  #geom_point(alpha=0.5) +
  geom_smooth(method = "glm", se = F, fullrange = TRUE, method.args = list(family = "quasibinomial"),
              formula=y~x,
              aes(linetype=Index),size=1.2) +
  theme_bw() +
  theme(strip.text = element_text(face=1, size=12),legend.text = element_text(size = 12),
        legend.title = element_text(size = 13), strip.background =element_blank(),
        panel.border = element_rect(fill = NA, color = "black"),
        legend.background = element_rect(colour = 'black', fill = 'white', linetype ='blank'),
        legend.position = "right") +
  scale_color_manual(values = c('Phantom' = "red4",'Mavic' = "navyblue"))
         

############################VGAM#########
GSD_Mavic_all_plot <- read.csv('G:/Vadehavet/Ælligeforsøg/GSD_Mavic_all_plot.csv',header = T)
GSD_Phan_all_plot <- read.csv('G:/Vadehavet/Ælligeforsøg/GSD_Phan_all_plot.csv',header = T)
GSD_all_plot <- rbind(GSD_Phan_all_plot,GSD_Mavic_all_plot)
#install.packages('VGAM')
library(VGAM)
library(MASS)
library('DescTools')

### Hver for sig UAS **MAVIC**
head(GSD_Mavic_all_plot)

marital.nz <- cbind(GSD_Mavic_all_plot[2],GSD_Mavic_all_plot[10])
head(marital.nz)

summary(marital.nz)

fit.ms <- vgam(ident ~ s(GSD, df = 2), multinomial(refLevel = 2),
               data = marital.nz)

fit.ms
head(depvar(fit.ms), 4)
colSums(depvar(fit.ms))
PseudoR2(fit.ms, which = "all")

summary(fit.ms)

glm(formula = GSD ~ prob + prob.1 + prob.2, family = "binomial", 
    data = GSD_all_plot)

head(GSD_all_plot)
# color
mycol <- c("black")
ooo
ooo <- with(marital.nz, order(GSD))
with(marital.nz, matplot(GSD[ooo], fitted(fit.ms)[ooo, ],
                         type = "l", las = 1, lwd = 2, ylim = 0:1,
                         ylab = "Probability for identification",
                         xlab = "Ground sample distance (mm)", # main="Marital status amongst NZ Male Europeans",
                         col = c(mycol[1], "black", mycol[-1]),
                         xlim = c(0,3.3)))
abline(v = seq(0,4,by = 0.5), h = seq(0,1,by = 0.1), col = "gray", lty = "dashed")
#legend(x = .1, y = 0.85, # x="topright",
#       col = c(mycol[1], "black", mycol[-1]),
#       lty = 1:4,
#       legend = colnames(fit.ms@y), lwd = 2, title = 'Identification')



### Hver for sig UAS **PHANTOM**
head(GSD_Phan_all_plot)

marital.nz <- cbind(GSD_Phan_all_plot[2],GSD_Phan_all_plot[10])
head(marital.nz)

summary(marital.nz)

fit.ms <- vgam(ident ~ s(GSD, df = 2), multinomial(refLevel = 2),
               data = marital.nz)

residuals(fit.ms)
fit.ms
summary(fit.ms)


library(stats)
PseudoR2(fit.ms, which = "all")

AIC(fit.ms)

AIC(vgam(formula = ident ~ s(GSD, df = 2), family = multinomial(refLevel = 2), 
         data = marital.nz))
head(depvar(fit.ms), 4)

fit.ms

colSums(depvar(fit.ms))



# color
mycol <- c("black")
ooo
ooo <- with(marital.nz, order(GSD))
with(marital.nz, matplot(GSD[ooo], fitted(fit.ms)[ooo, ],
                         type = "l", las = 1, lwd = 2, ylim = 0:1,
                         ylab = "Probability for identification",
                         xlab = "Ground sample distance (mm)", # main="Marital status amongst NZ Male Europeans",
                         col = c(mycol[1], "black", mycol[-1]),
                         xlim = c(0,3.3)))
abline(v = seq(0,4,by = 0.5), h = seq(0,1,by = 0.1), col = "gray", lty = "dashed")
#legend(x = .1, y = 0.85, # x="topright",
#       col = c(mycol[1], "black", mycol[-1]),
#       lty = 1:4,
#       legend = colnames(fit.ms@y), lwd = 2, title = 'Identification')



legend(x = .1, y = 0.85, # x="topright",
              col = c(mycol[1], "black", mycol[-1]),
            lty = 1:4,
            legend = colnames(fit.ms@y), lwd = 2, title = 'Identification')
       




PseudoR2(fit.ms, which = "McFadden")










### For begge UAS samlet
head(GSD_all_plot)

marital.nz <- cbind(GSD_all_plot[2],GSD_all_plot[10])
head(marital.nz)
nrow(marital.nz)
summary(marital.nz)

fit.ms <- vgam(ident ~ s(GSD, df = 2), multinomial(refLevel = 2),
               data = marital.nz)

fit.ms
head(depvar(fit.ms), 4)
colSums(depvar(fit.ms))

summary(fit.ms)

# color
mycol <- c("red", "darkgreen", "blue")
ooo
ooo <- with(marital.nz, order(GSD))
with(marital.nz, matplot(GSD[ooo], fitted(fit.ms)[ooo, ],
                         type = "l", las = 1, lwd = 2, ylim = 0:1,
                         ylab = "Probability for identification",
                         xlab = "Ground sample distance (mm)", # main="Marital status amongst NZ Male Europeans",
                         col = c(mycol[1], "black", mycol[-1])))
abline(v = seq(0,4,by = 0.5), h = seq(0,1,by = 0.1), col = "gray", lty = "dashed")
legend(x = 3.0, y = 0.62, # x="topright",
       col = c(mycol[1], "black", mycol[-1]),
       lty = 1:4,
       legend = colnames(fit.ms@y), lwd = 2)



