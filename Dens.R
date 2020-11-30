#Indlæs 27_09 f1
RD_27_09_1 <- read.csv('G:/Vadehavet/GIS_projekts/Dens/Sammenlagte_27_09_1.csv',header = T)

RD_27_09_1 <- cbind.data.frame(RD_27_09_1$art,rep('RD_27_09_1',length(RD_27_09_1$art)),RD_27_09_1$RASTERVALU,RD_27_09_1$NUMPOINTS,
                               RD_27_09_1$distance,RD_27_09_1$xcoord,RD_27_09_1$ycoord)
colnames(RD_27_09_1) <- c('art','id','RASTERVALU','NUMPOINTS','DISTANCE','xcoord','ycoord')
head(RD_27_09_1)

#Indlæs 27_09 f2
RD_27_09_2 <- read.csv('G:/Vadehavet/GIS_projekts/Dens/Sammenlagte_27_09_2.csv',header = T)

RD_27_09_2 <- cbind.data.frame(RD_27_09_2$art,rep('RD_27_09_2',length(RD_27_09_2$art)),RD_27_09_2$RASTERVALU,RD_27_09_2$NUMPOINTS,
                               RD_27_09_2$distance,RD_27_09_2$xcoord,RD_27_09_2$ycoord)
colnames(RD_27_09_2) <- c('art','id','RASTERVALU','NUMPOINTS','DISTANCE','xcoord','ycoord')
head(RD_27_09_2)

#Indlæs 23_10
RD_23_10 <- read.csv('G:/Vadehavet/GIS_projekts/Dens/Sammenlagte_23_10.csv',header = T)

RD_23_10 <- cbind.data.frame(RD_23_10$art,rep('RD_23_10',length(RD_23_10$art)),
                             RD_23_10$RASTERVALU,RD_23_10$NUMPOINTS,
                               RD_23_10$distance,RD_23_10$xcoord,RD_23_10$ycoord)
colnames(RD_23_10) <- c('art','id','RASTERVALU','NUMPOINTS','DISTANCE','xcoord','ycoord')
head(RD_23_10)

# Saml til et samlet dataframe
samlet_dens <- rbind.data.frame(RD_27_09_1,RD_27_09_2,RD_23_10)

# orden på forkert RASTERVALU
oy <- subset(samlet_dens, (art=='Oystercatcher' & id=='RD_27_09_2'))
oy$RASTERVALU <- oy$RASTERVALU/100000
oy
samlet_dens <- subset(samlet_dens, !(art=='Oystercatcher' & id=='RD_27_09_2'))
samlet_dens <- rbind(samlet_dens,oy)
samlet_dens$RASTERVALU[samlet_dens$RASTERVALU < 0] <- 0
min(samlet_dens$RASTERVALU)

# Fjern uønskede arter
samlet_dens <- subset(samlet_dens, !(art=='Greenshank'))
samlet_dens <- subset(samlet_dens, !(art=='Curlew'))
#View(samlet_dens)
samlet_dens
Dunlin <- subset(samlet_dens, (art=='Dunlin'))
Golden  <- subset(samlet_dens, (art=='Golden Plover'))
min(Golden$RASTERVALU)

# Plot
library('ggplot2')
addline_format <- function(x,...){
  gsub('\\s','\n',x)
}
samlet_dens$art <- factor(samlet_dens$art,
       levels=c("Dunlin","Golden Plover","Oystercatcher","Bar-tailed Godwit","Avocet",
                                  "Greenshank","Curlew","Wigeon",
                "Pin-tailed Duck","Shelduck","Barnacle Goose",
                                  "Greylag Goose"))
p_dens <- ggplot(data = samlet_dens, aes(x = RASTERVALU, group = art)) + facet_wrap(~art)


p_dens + geom_density(adjust=1.5) + xlim(0,12) + ylim(0,1) + theme_bw() +

  theme(strip.text = element_text(face=1, size=12),legend.text = element_text(size = 12),
        legend.title = element_text(size = 13), strip.background = element_rect(fill = 'grey98'),
        panel.border = element_rect(fill = NA, color = "black"),
        legend.background = element_rect(colour = 'black', fill = 'white', linetype ='blank'),
        legend.position = "top",
        panel.grid.minor = element_blank())
  


p_dens <- ggplot(data = samlet_dens, aes(x = RASTERVALU, y = art, group = UAS,
                                         color = UAS)) + facet_wrap(~art)


##################*********Prøveplot
library(ggplot2)
# install.packages('ggridges')
library(ggridges)
theme_set(theme_ridges())   

ggplot(samlet_dens, aes(x = RASTERVALU, y = art)) +
geom_density_ridges() +
  theme_ridges() + 
  theme(legend.position = "none") +
  scale_fill_grey() +
  scale_x_continuous(limits = c(-0.5,12),breaks = seq(0,12,1))+
  xlab(bquote('Density estimate ('~ m^2*')')) + ylab("") +
  theme(axis.title.x = element_text(hjust=.5))



##### opdel i blandende/ikke-blandende flokke
Indbyrdes_afst_1 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_prik/Densitet/Dens_afstande/Indbyrdes_afstande_27_09_1.csv',header = T)
Indbyrdes_afst_2 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_prik/Densitet/Dens_afstande/Indbyrdes_afstande_27_09_2.csv',header = T)
Indbyrdes_afst_27_09 <- rbind(Indbyrdes_afst_1,Indbyrdes_afst_2)

quantile(Indbyrdes_afst_27_09$distance, probs = seq(0.05, 1, by = .15))

# Quantiler alle arter
Grågås <- subset(Indbyrdes_afst_1, (layer=='Indbyrde_afs_grÃ¥gÃ¥s'))
quantile(Grågås$distance, probs = seq(0.05, 1, by = .15))
Bramgås <- subset(Indbyrdes_afst_27_09, (layer=='bramgÃ¥s_09_27_f1_bramgÃ¥s_09_27_f1'))
quantile(Bramgås$distance, probs = seq(0.05, 1, by = .15))
gravand_1 <- subset(Indbyrdes_afst_27_09, (layer=='gravand_09_27_f1_gravand_09_27_f1'))
quantile(Bramgås$distance, probs = seq(0.05, 1, by = .15))
gravand_2 <- subset(Indbyrdes_afst_27_09, (layer=='Indbyrdes_afs_gravand'))
Gravand <- rbind(gravand_1,gravand_2)
Gravand$distance
quantile(Gravand$distance, probs = seq(0.05, 1, by = .15))
ryle_1 <- subset(Indbyrdes_afst_27_09, (layer=='ryle_09_27_f1_ryle_09_27_f1'))
quantile(Bramgås$distance, probs = seq(0.05, 1, by = .15))
ryle_2 <- subset(Indbyrdes_afst_27_09, (layer=='Indbyrdes_afs_ryle'))
ryle <- rbind(ryle_1,ryle_2)
ryle$distance
quantile(ryle$distance, probs = seq(0.05, 1, by = .15))
standskade <- subset(Indbyrdes_afst_27_09, (layer=='strandsakde_09_27_f1_strandsakde_09_27_f1'))
quantile(standskade$distance, probs = seq(0.05, 1, by = .15))
standskade <- subset(Indbyrdes_afst_27_09, (layer=='spidsand_09_27_f1_spidsand_09_27_f1'))
quantile(standskade$distance, probs = seq(0.05, 1, by = .15))

levels(Indbyrdes_afst_27_09$layer)

# Indlæs 23_10
Indbyrdes_afst_23_10 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_prik/Densitet/Dens_afstande/Indbyrdes_afstande_23_10.csv',header = T)
z <- subset(Indbyrdes_afst_23_10, (layer=='Dens_prik_gravand_Dens_prik_gravand'))
quantile(z$distance, probs = seq(0.05, 1, by = .15))



levels(Indbyrdes_afst_23_10$layer)



# Opdel nu dataframet
non_mix <- cbind((subset(samlet_dens, DISTANCE > 10)),'non_mix')
mix <- cbind((subset(samlet_dens, DISTANCE < 10)),'mix')
colnames(non_mix) <- c('art','id','RASTERVALU','NUMPOINTS','DISTANCE','xcoord','ycoord','Flock')
colnames(mix) <- c('art','id','RASTERVALU','NUMPOINTS','DISTANCE','xcoord','ycoord','Flock')
str(mix)
str(non_mix)
head(non_mix)
# Sammenbind igen
samlet_dens_mix <- rbind(non_mix,mix)
head(samlet_dens_mix)

# Percentage for mix and non-mixed
length(non_mix$art)/length(samlet_dens_mix$art)
length(mix$art)/length(samlet_dens_mix$art)

######## Plot nu mix ######
library(ggpubr)
p <- ggboxplot(samlet_dens_mix, x = "art", y = "RASTERVALU",
               color = "black", palette = c("black", "grey"),
               notch=T,fill = "Flock",alpha=0.5)
p +
stat_compare_means(aes(group = Flock), label = "p.signif",method ="wilcox.test",label.y =12,
                       size=4.5,paired = F,
                   symnum.args =  list(cutpoints = c(0,0.001,0.01, 0.05, 1), 
                                       symbols = c("***", "**", "*", "ns"))) +
  xlab(NULL) + ylab("Density per m2") + ylim(0,12) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=12) +
  scale_x_discrete(breaks=unique(samlet_dens$art),
                   labels=addline_format(unique(samlet_dens$art))) +
  theme(plot.margin = margin(0.1, 1, 0.1, 0.1, "cm"),axis.text=element_text(size=9),
        axis.title=element_text(size=14,face=1),
        strip.text = element_text(face=2, size=9.5),legend.text = element_text(size = 12),
        legend.title = element_text(size = 13),legend.position = "top")

# Prøv at opdele i vadefugle og ænde/gæs
art_vade <- c("Dunlin","Golden Plover","Avocet","Bar-tailed Godwit",
              "Oystercatcher")
art_ande <- c("Wigeon","Pin-tailed Duck",
       "Shelduck","Barnacle Goose",
       "Greylag Goose")
samlet_dens_mix_vade <-  samlet_dens_mix[is.element(samlet_dens_mix$art, art_vade),]
samlet_dens_mix_ande <-  samlet_dens_mix[is.element(samlet_dens_mix$art, art_ande),]

#vadefugle
p <- ggboxplot(samlet_dens_mix_vade, x = "art", y = "RASTERVALU",
               color = "black", palette = c("black", "grey"),
               notch=T,fill = "Flock",alpha=0.5)
p +
  stat_compare_means(aes(group = Flock), label = "p.signif",method ="wilcox.test",label.y =12,
                     size=4.5,paired = F,
                     symnum.args =  list(cutpoints = c(0,0.001,0.01, 0.05, 1), 
                                         symbols = c("***", "**", "*", "ns"))) +
  xlab(NULL) + ylab(bquote('Density estimate ('~ m^2*')')) + ylim(0,12) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=12) +
  scale_x_discrete(breaks=unique(samlet_dens$art),
                   labels=addline_format(unique(samlet_dens$art))) +
  theme(plot.margin = margin(0.1, 1, 0.1, 0.1, "cm"),axis.text=element_text(size=9),
        axis.title=element_text(size=14,face=1),
        strip.text = element_text(face=2, size=9.5),legend.text = element_text(size = 12),
        legend.title = element_text(size = 13),legend.position = "top") +
  scale_fill_manual(values = c("black", "grey"),
                    name="Flock", # Legend label, use darker colors
                    labels=c("Non-mixed","Mixed"))

# andefulge
p <- ggboxplot(samlet_dens_mix_ande, x = "art", y = "RASTERVALU",
               color = "black", palette = c("black", "grey"),
               notch=T,fill = "Flock",alpha=0.5)
p +
  stat_compare_means(aes(group = Flock), label = "p.signif",method ="wilcox.test",label.y =1,
                     size=4.5,paired = F,
                     symnum.args =  list(cutpoints = c(0,0.001,0.01, 0.05, 1), 
                                         symbols = c("***", "**", "*", "ns"))) +
  xlab(NULL) + ylab(bquote('Density estimate ('~ m^2*')')) + ylim(0,1) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=12) +
  scale_x_discrete(breaks=unique(samlet_dens$art),
                   labels=addline_format(unique(samlet_dens$art))) +
  theme(plot.margin = margin(0.1, 1, 0.1, 0.1, "cm"),axis.text=element_text(size=9),
        axis.title=element_text(size=14,face=1),
        strip.text = element_text(face=2, size=9.5),legend.text = element_text(size = 12),
        legend.title = element_text(size = 13),legend.position = "top") +
  scale_fill_manual(values = c("black", "grey"),
                    name="Flock", # Legend label, use darker colors
                    labels=c("Non-mixed","Mixed"))



# Find variance difference between mix/non-mixed
#install.packages('lawstat')
library(lawstat)
library(car)
levene.test(samlet_dens_mix$RASTERVALU, samlet_dens_mix$Flock, location=c("median"),
            bootstrap = T, num.bootstrap=10, kruskal.test=T) 

leveneTest(RASTERVALU ~ Flock, samlet_dens_mix)
# Tag Dunlin ud
samlet_dens_mix_minus_dunlin <- subset(samlet_dens_mix, !(art=='Dunlin' | art=='Wigeon'))

var_dens <- aggregate(RASTERVALU ~ Flock, samlet_dens_mix_minus_dunlin, function(x) c(Var = var(x), Count = length(x)))

var_dens <- aggregate(RASTERVALU ~ Flock + art, samlet_dens_mix, function(x) c(Var = var(x), Count = length(x)))
var_dens
leveneTest(RASTERVALU ~ Flock, samlet_dens_mix_minus_dunlin)

var_dens$delta = rep(
  sapply(seq(1, nrow(var_dens), by=2 ),
         function(i){ var_dens[i+1,"RASTERVALU[,1]"] - var_dens[i,"RASTERVALU[,1]"] }
  ),
  each=2)

var_dens


df.new_non_mix = var_dens[seq(1, nrow(var_dens), 2), ]
df.new_mix = var_dens[seq(2, nrow(var_dens), 2), ]
df.new_mix

((df.new_mix$RASTERVALU - df.new_non_mix$RASTERVALU) / df.new_non_mix$RASTERVALU) * 100


