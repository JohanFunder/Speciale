#Installer nødvendige pakker
# installing/loading the package:
#if(!require(installr)) {
#  install.packages("installr"); require(installr)} #load / install+load installr
# using the package:
#updateR() # this will start the updating process of your R installation.  
#install.packages('ggplot2')
#install.packages("multipanelfigure")
#install.packages('Rcpp')
#install.packages('digest')
#install.packages('gginnards')
#install.packages('ggpmisc')
#install.packages('EnvStats')
#install.packages('flextable')
#install.packages("ggpubr")
#install.packages('multcompView')
#install.packages("micompr")
#install.packages('scmamp')
#install.packages('Rgraphviz')
#install.packages("asremlPlus")
#install.packages('plot.matrix')
#install.packages("ggcorrplot")
#install.packages('Matrix')
#require(Matrix)
#install.packages('Hmisc')
#install.packages("corrplot")
#install.packages("BiocManager")
#BiocManager::install("Rgraphviz")
#BiocManager::install("scmamp")
#install.packages("Rtools")
#install.packages('asremlPlus')
#install.packages('PMCMR')
#install.packages('psych')
require('corrplot')
#if (!requireNamespace("devtools")) install.packages("devtools")
#devtools::install_github("caijun/ggcorrplot2")
#library(ggcorrplot2)
#install.packages('digest')
#install.packages('lmerTest')
library(stringr)
library("lme4")
require(digest)
#install.packages('flextable')
library(ggcorrplot)
library(corrplot)
require(psych)
require(PMCMR)
library(plot.matrix)
library(ape)
library(corrplot)
library(Rgraphviz)
library(scmamp)
library(reshape2)
library(Hmisc)
library(stats)
library(ggcorrplot)
library('plot.matrix')
library(asremlPlus)
library(micompr)
library(ggpubr)
library(EnvStats)
library(multipanelfigure)
library(magrittr)
library(dplyr)
library(ggplot2)
library(ggpmisc)
library(tibble)
library(dplyr)
library(tidyr)
library(ggrepel)
library(data.table)
library(ggplot2)
library(flextable)
library('multcompView')

## Tilføj først arts id til hvert dataframe og cbind dem derefter 
#Gravand
names_Gravand <- rep("Shelduck",length(Gravand_dat$id))
latin_Gravand <- rep("Tadorna tadorna",length(Gravand_dat$id))
Gravand_d <- cbind(Gravand_dat,names_Gravand,latin_Gravand)
colnames(Gravand_d) <- c("hoejde", "percent","UAS","art","latin")
Gravand_d
# Stormmåge
names_Stormmåge <- rep("Common gull",length(Stormmåge_dat$id))
latin_Stormmåge <- rep("Larus canus",length(Stormmåge_dat$id))
Stormmåge_d <- cbind(Stormmåge_dat,names_Stormmåge,latin_Stormmåge)
colnames(Stormmåge_d) <- c("hoejde", "percent","UAS","art","latin")
Stormmåge_d
#Storspove
names_Storspove <- rep("Curlew",length(Storspove_dat$id))
latin_Storspove <- rep("Numenius arquata",length(Storspove_dat$id))
Storspove_d <- cbind(Storspove_dat,names_Storspove,latin_Storspove)
colnames(Storspove_d) <- c("hoejde", "percent","UAS","art","latin")
Storspove_d
#Ryle
names_Ryle <- rep("Dunlin",length(Ryle_dat$id))
latin_Ryle <- rep("Calidris alpina",length(Ryle_dat$id))
Ryle_d <- cbind(Ryle_dat,names_Ryle,latin_Ryle)
colnames(Ryle_d) <- c("hoejde", "percent","UAS","art","latin")
Ryle_d
#Vibe
names_Vibe <- rep("Northern Lapwing",length(Vibe_dat$id))
latin_Vibe <- rep("Vanellus vanellus",length(Vibe_dat$id))
Vibe_d <- cbind(Vibe_dat,names_Vibe,latin_Vibe)
colnames(Vibe_d) <- c("hoejde", "percent","UAS","art","latin")
#Kobbersneppe
names_Kobbersneppe <- rep("Bar-tailed Godwit",length(Kobbersneppe_dat$id))
latin_Kobbersneppe <- rep("Limosa lapponica",length(Kobbersneppe_dat$id))
Kobbersneppe_d <- cbind(Kobbersneppe_dat,names_Kobbersneppe,latin_Kobbersneppe)
colnames(Kobbersneppe_d) <- c("hoejde", "percent","UAS","art","latin")
#Hjejle
names_Hjejle <- rep("Golden Plover",length(Hjejle_dat$id))
latin_Hjejle <- rep("Pluvialis apricaria",length(Hjejle_dat$id))
Hjejle_d <- cbind(Hjejle_dat,names_Hjejle,latin_Hjejle)
colnames(Hjejle_d) <- c("hoejde", "percent","UAS","art","latin")
#Klyde
names_Klyde <- rep("Avocet",length(Klyde_dat$id))
latin_Klyde <- rep("Recurvirostra avosetta",length(Klyde_dat$id))
Klyde_d <- cbind(Klyde_dat,names_Klyde,latin_Klyde)
colnames(Klyde_d) <- c("hoejde", "percent","UAS","art","latin")
#Islandsk
names_Islandsk <- rep("Red Knot",length(Islandsk_dat$id))
latin_Islandsk <- rep("Calidris canutus",length(Islandsk_dat$id))
Islandsk_d <- cbind(Islandsk_dat,names_Islandsk,latin_Islandsk)
colnames(Islandsk_d) <- c("hoejde", "percent","UAS","art","latin")
#Grågås
names_Grågås <- rep("Greylag Goose",length(Grågås_dat$id))
latin_Grågås <- rep("Anser anser",length(Grågås_dat$id))
Grågås_d <- cbind(Grågås_dat,names_Grågås,latin_Grågås)
colnames(Grågås_d) <- c("hoejde", "percent","UAS","art","latin")
# Bramgås
names_Bramgås <- rep("Barnacle Goose",length(Bramgås_dat$id))
latin_Bramgås <- rep("Branta Leucopsis",length(Bramgås_dat$id))
Bramgås_d <- cbind(Bramgås_dat,names_Bramgås,latin_Bramgås)
colnames(Bramgås_d) <- c("hoejde", "percent","UAS","art","latin")
Bramgås_d
#Strandskade
names_Strandskade <- rep("Oystercatcher",length(Strandskade_dat$id))
latin_Strandskade <- rep("Haematopus ostralegus",length(Strandskade_dat$id))
Strandskade_d <- cbind(Strandskade_dat,names_Strandskade,latin_Strandskade)
colnames(Strandskade_d) <- c("hoejde", "percent","UAS","art","latin")
Strandskade_d
#Pibeand
names_Pibeand <- rep("Wigeon",length(Pibeand_dat$id))
latin_Pibeand <- rep("Mareca penelope",length(Pibeand_dat$id))
Pibeand_d <- cbind(Pibeand_dat,names_Pibeand,latin_Pibeand)
colnames(Pibeand_d) <- c("hoejde", "percent","UAS","art","latin")
Pibeand_d


# Saml til et samlet dataframe
FH_samlet <- rbind.data.frame(Klyde_d,Vibe_d,Hjejle_d,Kobbersneppe_d,Strandskade_d,
                              Ryle_d,Islandsk_d,Gravand_d,Pibeand_d,Stormmåge_d,Grågås_d,Bramgås_d)

# Hvis det skal laves om the procent (%)
#FH_samlet[, c(2)] <- FH_samlet[, c(2)]*100

# Skriv csv fil med samlet data
write.csv(FH_samlet, file = "G:/Vadehavet/Frames_geo/FH_samlet.csv")

# Find lavesete flyvehøjde for hver UAS
sub_phan <- subset(new_FH_samlet, subset=!(UAS=='Mavic'))
sub_mavic <- subset(new_FH_samlet, subset=!(UAS=='Phantom'))
sub_phan
# 5 %
quantile(sub_phan$hoejde, probs = seq(0.05, 1, by = .15))
quantile(sub_mavic$hoejde, probs = seq(0.05, 1, by = .15))
# 10 %
quantile(sub_phan$hoejde, probs = seq(0.10, 1, by = .1))
quantile(sub_mavic$hoejde, probs = seq(0.10, 1, by = .1))


# Udskift forkerte navne
FH_samlet$art <- gsub('Common gull', 'Common Gull', FH_samlet$art)
colnames(FH_samlet) <- c('hoejde','percent','UAS','art','latin')
# Lav samlet plot
# break lines in x-labels
addline_format <- function(x,...){
  gsub('\\(','\n',x)
}  

#Grupper i rigtigt rækkefølge efter speceis group
FH_samlet$art <- factor(FH_samlet$art, 
                         levels=c("Dunlin","Red Knot","Northern Lapwing","Golden Plover",
                                  "Avocet","Bar-tailed Godwit","Oystercatcher","Wigeon",
                                  "Shelduck","Barnacle Goose","Greylag Goose","Common Gull"))

#art_rækkefølge <- c("Dunlin (Small Wader)","Red Knot (Small Wader)","Northern Lapwing (Medium Wader)",
#                    "Golden Plover (Medium Wader)","Avocet (Large Wader)","Bar-tailed Godwit (Large Wader)",
#                    "Oystercatcher (Large Wader)","Wigeon (Duck)","Shelduck (Large Wader)",
#                    "Barnacle Goose (Goose)","Greylag Goose (Goose)","Common Gull (Gull)")

art_rækkefølge <- factor(levels=c("Dunlin","Red Knot","Northern Lapwing","Golden Plover","Avocet",
                    "Bar-tailed Godwit","Oyster- catcher","Wigeon","Shelduck",
                    "Barnacle Goose","Greylag Goose","Common Gull"))

#View(FH_samlet)
art_rækkefølge
p_Alle <- ggplot(data = FH_samlet, aes(x = percent, y = hoejde, group = UAS,
                                            color = UAS)) + 
  facet_wrap(~art, labeller = labeller(art = label_wrap_gen(40)))

p_Alle + geom_point(alpha=0.5) +
  geom_smooth(method = "loess", se = F,  fullrange = TRUE,span=1) +theme_bw() +
  theme(strip.text = element_text(face=1, size=12),legend.text = element_text(size = 12),
        legend.title = element_text(size = 13), strip.background =element_blank(),
        panel.border = element_rect(fill = NA, color = "black"),
        legend.background = element_rect(colour = 'black', fill = 'white', linetype ='blank'),
        legend.position = "top") +
  ylim(-0.01, 100.1) +
  scale_x_continuous(limits = c(-0.01,100.01),breaks = seq(0,100,10)) +
  scale_color_manual(values = c('Phantom' = "red4",'Mavic' = "navy")) +
  theme(plot.title = element_text(hjust = 0.5),axis.text=element_text(size=9),
        axis.title=element_text(size=14,face=1)) + 
  xlab("Percentage disturbed (i.e. flushed)") + ylab("Flying altitude (m)") +
  # Linje Phantom
  geom_hline(yintercept = 75, colour="red4", linetype="dashed") +
  # Linje Mavic
  geom_hline(yintercept = 60, colour="navyblue", linetype="dashed") +
  geom_text(data = plyr::count(FH_samlet, vars = c("art","UAS")),
          aes(x=-0, y=0, label=paste0("n = ",freq-1)) , inherit.aes=F, parse=F,
          nudge_x =c(90,90), nudge_y=c(97,83), size = 3.5, colour=c("red4","navy","red4","navy",
                                                                      "red4","navy","red4","navy",
                                                                      "red4","navy","red4","navy",
                                                                      "red4","navy","red4","navy",
                                                                      "red4","navy","red4","navy",
                                                                      "red4","navy","red4","navy"))

FH_samlet$percent<-as.numeric(as.character(FH_samlet$percent))
FH_samlet

############## Lav samlet plot (vendt om - respons op ad y-akse)
col_rep <- c(rep("red4",1920/24),rep("navy",1920/24),rep("red4",1920/24),rep("navy",1920/24),
             rep("red4",1920/24),rep("navy",1920/24),rep("red4",1920/24),rep("navy",1920/24),
             rep("red4",1920/24),rep("navy",1920/24),rep("red4",1920/24),rep("navy",1920/24),
             rep("red4",1920/24),rep("navy",1920/24),rep("red4",1920/24),rep("navy",1920/24),
             rep("red4",1920/24),rep("navy",1920/24),rep("red4",1920/24),rep("navy",1920/24),
             rep("red4",1920/24),rep("navy",1920/24),rep("red4",1920/24),rep("navy",1920/24))

p_Alle <- ggplot(data = FH_samlet, aes(x = as.numeric(hoejde), y = as.numeric(percent), group = UAS,
                                       color = UAS)) + facet_wrap(~art)

p_Alle + geom_point(alpha=0.5) +
  geom_smooth(method = "glm", method.args = list(family = quasibinomial(link = 'logit')),
              fullrange = T,fill = col_rep, alpha =.15) +
  theme_bw() +
  theme(strip.text = element_text(face=1, size=12),legend.text = element_text(size = 12),
        legend.title = element_text(size = 13), strip.background = element_rect(fill = 'grey98'),
        panel.border = element_rect(fill = NA, color = "black"),
        legend.background = element_rect(colour = 'black', fill = 'white', linetype ='blank'),
        legend.position = "top",
        panel.grid.minor = element_blank()) +
  scale_x_continuous(limits = c(-0.01,100.01),breaks = seq(0,100,10)) +
  scale_y_continuous(limits = c(-0.01,1.01),breaks = seq(0,1,0.20)) +
  scale_color_manual(values = c('Phantom' = "red4",'Mavic' = "navy")) +
  theme(plot.title = element_text(hjust = 0.5),axis.text=element_text(size=9),
        axis.title=element_text(size=14,face=1)) + 
  xlab("Flying altitude (m)") + ylab("Probability of disturbance (i.e. flushed)") +
  # Linje Phantom
  geom_vline(xintercept = 75, colour="red4", linetype="dashed",cex=0.75) +
  # Linje Mavic
  geom_vline(xintercept = 60, colour="navyblue", linetype="dashed",cex=0.75) +
  geom_text(data = plyr::count(FH_samlet, vars = c("art","UAS")),
            aes(x=-0, y=0, label=paste0("n = ",freq-1)) , inherit.aes=F, parse=F,
            nudge_x =c(90,90), nudge_y=c(0.97,0.83), size = 3.5, colour=c("red4","navy","red4","navy",
                                                                      "red4","navy","red4","navy",
                                                                      "red4","navy","red4","navy",
                                                                      "red4","navy","red4","navy",
                                                                      "red4","navy","red4","navy",
                                                                      "red4","navy","red4","navy"))


## Visualisering af forskelle imellem flugtafstande for undersøgte arter **Begge droner**
# først remove o procent rækkerne fra FH_samlet
r <- with(FH_samlet, which(hoejde==100, arr.ind=TRUE))
new_FH_samlet <- FH_samlet[-r, ]
write.csv(new_FH_samlet, file = "G:/Vadehavet/Frames_geo/new_FH_samlet.csv")
head(new_FH_samlet)

# Lav nu plot
par(mfrow=c(1,1))
par(oma=c(3,3,2,1))
par(mar=c(6.5,1,1,2))

labels_art <- unique(FH_samlet$art)
labels_art <- as.vector(labels_art)
labels_art <- c('Avocet','Northern Lapwing','Golden Plover','Bar-tailed Godwit','Oystercatcher',
                'Dunlin','Red Knot','Shelduck','Wigeon','Common Gull','Greylag Goose','Barnacle Goose')

boxplot(new_FH_samlet$hoejde ~ new_FH_samlet$art, xaxt='na',ylim=c(0,100))
axis(side=1, 1:length(labels_art), labels=FALSE)
text(1:length(labels_art), par("usr")[3] - 10.0, labels=labels_art, srt=-65,
     xpd=TRUE, adj=c(0,0.5),cex = 0.9)
mtext("Waterbird species", side=1, cex=1.5, line=1.5, outer=TRUE)   
mtext("Height", side=2, cex=1.5, line=1.5, outer=TRUE)
mtext("Minimum altitude before disturbance", side=3, cex=1.5, line=0.5, outer=TRUE)

## Visualisering af forskelle imellem flugtafstande for undersøgte arter **dronemodeller hver for sig**
# først remove MAVIC rækkerne fra new_FH_samlet
r_phantom <- with(new_FH_samlet, which(UAS=='Mavic', arr.ind=TRUE))
phantom_FH_samlet <- new_FH_samlet[-r_phantom, ]
head(phantom_FH_samlet)
# Lav nu plot
par(mfrow=c(2,1))
par(oma=c(7.,3,1.5,1))
par(mar=c(0.5,1,1,1.5))

labels_art <- unique(FH_samlet$art)
labels_art <- as.vector(labels_art)
labels_art <- c('Avocet','Northern Lapwing','Golden Plover','Bar-tailed Godwit','Oystercatcher',
                'Dunlin','Red Knot','Shelduck','Wigeon','Common Gull','Greylag Goose','Barnacle Goose')

boxplot(phantom_FH_samlet$hoejde ~ phantom_FH_samlet$art, xaxt='na',ylim=c(0,100))
axis(side=1, 1:length(labels_art), labels=FALSE)
# Tilføj text med drone id
text(0.7, 112, "Phantom", xpd=NA)

# først remove PHANTOM rækkerne fra new_FH_samlet
r_mavic <- with(new_FH_samlet, which(UAS=='Phantom', arr.ind=TRUE))
mavic_FH_samlet <- new_FH_samlet[-r_mavic, ]
head(mavic_FH_samlet)

# Lav nu plot
boxplot(mavic_FH_samlet$hoejde ~ mavic_FH_samlet$art, xaxt='na',ylim=c(0,100))
axis(side=1, 1:length(labels_art), labels=FALSE)
text(1:length(labels_art), par("usr")[3] - 10.0, labels=labels_art, srt=-65,
     xpd=NA, adj=c(0,0.5),cex = 0.9)
mtext("Waterbird species", side=1, cex=1.3, line=5.8, outer=TRUE)   
mtext("Height", side=2, cex=1.5, line=1.3, outer=TRUE)
mtext("Minimum altitude before disturbance", side=3, cex=1.3, line=0.3, outer=TRUE)
# Tilføj text med drone id
text(0.5, 112, "Mavic", xpd=NA)


# Lav plot for foskelle mellem de to anvendte dronemodeller
par(mfrow=c(1,1))
par(oma=c(3,3,2,1))
par(mar=c(2,1,1,2))

boxplot(new_FH_samlet$hoejde ~ new_FH_samlet$UAS, ylim=c(0,100) )
mtext("UAS model", side=1, cex=1.5, line=1.5, outer=TRUE)   
mtext("Height", side=2, cex=1.5, line=1.5, outer=TRUE)
mtext("Differences in used model of UAS", side=3, cex=1.5, line=0.5, outer=TRUE)

## Med ggplot **DE TO UAS MODELLER
p_UAS <- ggboxplot(new_FH_samlet, x = "UAS", y = "hoejde",
               color = "UAS", palette = c("red4", "navyblue"),
               add = "jitter",size = 1, bxp.errorbar = T,bxp.errorbar.width = 0.1,
               notch=T)
# Tilføj signifikansniveauer  
p_UAS + geom_signif(comparisons = list(c("Phantom", "Mavic")), size = 0.8,
            map_signif_level=TRUE,test = "wilcox.test",y_position = 105) +

  xlab(NULL) + ylab("Flying altitude (m)") +
  rotate_x_text(angle = 0, hjust = c(.5,.5), vjust = c(1.,1.), size=15) +
  scale_x_discrete(breaks=unique(new_FH_samlet$UAS),
                   labels=unique(new_FH_samlet$UAS)) +
  theme(plot.margin = margin(0.1, 1, 0.1, 0.1, "cm"),axis.text=element_text(size=13),
        axis.title=element_text(size=14,face=1),
        strip.text = element_text(face=2, size=9.5),legend.text = element_text(size = 15),
        legend.title = element_text(size = 13),legend.position = "top") +
  scale_y_continuous(limits=c(0,105),breaks=seq(0,100,10))

######*** Vendt om til horizontal####
## Med ggplot **DE TO UAS MODELLER
p_UAS <- ggboxplot(new_FH_samlet, x = "UAS", y = "hoejde",
                   color = "UAS", palette = c("red4", "navyblue"),
                   add = "jitter",size = 1, bxp.errorbar = T,bxp.errorbar.width = 0.1,
                   notch=T,orientation = "horizontal")
p_UAS
# Tilføj signifikansniveauer  
p_UAS + geom_signif(comparisons = list(c("Phantom", "Mavic")), size = 0.8,
                    map_signif_level=TRUE,test = "wilcox.test",y_position = 105) +
  
  xlab(NULL) + ylab("Flying altitude (m)") +
  rotate_x_text(angle = 0, hjust = c(.5,.5), vjust = c(1.,1.), size=15) +
  scale_x_discrete(breaks=unique(new_FH_samlet$UAS),
                   labels=unique(new_FH_samlet$UAS)) +
  theme(plot.margin = margin(0.1, 1, 0.1, 0.1, "cm"),axis.text=element_text(size=13),
        axis.title=element_text(size=14,face=1),
        strip.text = element_text(face=2, size=9.5),legend.text = element_text(size = 15),
        legend.title = element_text(size = 18),legend.position = "top") +
  scale_y_continuous(limits=c(0,105),breaks=seq(0,100,10))


#######***** Tjek for normalitet
phan <- new_FH_samlet[new_FH_samlet$UAS %in% 'Phantom',]
mavic <- new_FH_samlet[new_FH_samlet$UAS %in% 'Mavic',]
shapiro.test(phan$hoejde)
shapiro.test(mavic$hoejde)

# Lav F-test for at tjekke for forskelle mellem varianser
var.test(phan$hoejde,mavic$hoejde)

# Lav levene's test for varians forskelle
#install.packages('car')
library(car)
leveneTest(new_FH_samlet[,"hoejde"], new_FH_samlet[,"UAS"], location="median", correction.method="zero.correction")

# Fin median
median(phan$hoejde)
median(mavic$hoejde)
mean(phan$hoejde)
mean(mavic$hoejde)

## ******* Grupperet Boxplot med signifikans - wilcoxon *******************
# Box plot facetted by "art"
p <- ggboxplot(new_FH_samlet, x = "UAS", y = "hoejde",
               color = "UAS", palette = "jco",
               add = "jitter",
               facet.by = "art", short.panel.labs = T)
# Use only p.format as label. Remove method name.
p + stat_compare_means(label = "p.signif", label.x = 1.5,label.y =92) + ylim(0,100) +
  ylab("Flying altitude (m)")

# I samlet boxplot vindue
# break lines in x-labels
addline_format <- function(x,...){
  gsub('\\s','\n',x)
}

#addline_format <- function(x,...){
#  gsub('\\(','expression(paste(italic(x$latin)))',x)
#}


add_char_latin <- nchar(unique(as.character(new_FH_samlet$latin)))
add_char_art <- nchar(unique(as.character(new_FH_samlet$art)))
add_char_latin
add_char_art
add_char_latin_1 <- add_char_latin

add_char_latin <- add_char_latin - add_char_art
add_char_latin
add_char_art_til <- add_char_art - add_char_latin_1
add_char_art_til

name <- c(bquote(atop(NA,atop("Avocet                        ",italic(.("Recurvirostra avosetta"))))),
          bquote(atop(NA,atop(" Northern Lapwing ",italic(.("Vanellus vanellus"))))),
          bquote(atop(NA,atop("Golden Plover      ",italic(.("Pluvialis apricaria" ))))),
          bquote(atop(NA,atop("Bar-tailed Godwit",italic(.("Limosa lapponica "))))),
          bquote(atop(NA,atop("Oystercatcher               ",italic(.("Haematopus ostralegus"))))),
          bquote(atop(NA,atop("Dunlin          ",italic(.("Calidris alpina"))))),
          bquote(atop(NA,atop("Red Knot        ",italic(.("Calidris canutus"))))),
          bquote(atop(NA,atop("Shelduck        ",italic(.("Tadorna tadorna" ))))),
          bquote(atop(NA,atop("Wigeon            ",italic(.("Mareca penelope"))))),
          bquote(atop(NA,atop("  Common gull",italic(.("Larus canus"))))),
          bquote(atop(NA,atop(" Greylag Goose",italic(.("Anser anser   "))))),
          bquote(atop(NA,atop("Barnacle Goose  ",italic(.("Branta Leucopsis"))))))

# Udskift Oystercather med Oyster- catcher
new_FH_samlet$art <- gsub('Oystercatcher', 'Oyster- catcher', new_FH_samlet$art)
#Grupper i rigtigt rækkefølge efter species group
new_FH_samlet$art <- factor(new_FH_samlet$art, 
                        levels=c("Dunlin","Red Knot","Northern Lapwing","Golden Plover",
                                 "Avocet","Bar-tailed Godwit","Oyster- catcher","Wigeon",
                                 "Shelduck","Barnacle Goose","Greylag Goose","Common Gull"))

p <- ggboxplot(new_FH_samlet, x = "art", y = "hoejde",
               color = "UAS", palette = c("red4", "navyblue"),
               add = "jitter")
p + stat_compare_means(aes(group = UAS), label = "p.signif",method ="wilcox.test",label.y =100,
                       size=4.5) +
#  stat_boxplot(aes(group = interaction(UAS, art)),geom ='errorbar', width = 0.2, size=0.25, color="black") +
#  stat_compare_means(method = 'kruskal.test', label.y = 100)+ 
  xlab(NULL) + ylab("Flying altitude (m)") + ylim(0,100) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=12) +
  scale_x_discrete(breaks=unique(new_FH_samlet$art),
                   labels=addline_format(unique(new_FH_samlet$art))) +
  theme(plot.margin = margin(0.1, 1, 0.1, 0.1, "cm"),axis.text=element_text(size=9),
        axis.title=element_text(size=14,face=1),
        strip.text = element_text(face=2, size=9.5),legend.text = element_text(size = 12),
        legend.title = element_text(size = 13),legend.position = "top")

levels(new_FH_samlet$latin)

cxy = par("cxy")
d = 3*cxy[1]
ypos = par("usr")[3] - 2.75*cxy[2]
segments(c(1,5)-d,c(ypos,ypos),c(3,7)+d,c(ypos,ypos),xpd=NA,lwd=2,col="red")

######*** Artikel - Ret y-akse meter intervaller
#Grupper i rigtigt rækkefølge efter species group
new_FH_samlet$art <- factor(new_FH_samlet$art, 
                            levels=c("Dunlin","Red Knot","Northern Lapwing","Golden Plover",
                                     "Avocet","Bar-tailed Godwit","Oyster- catcher","Wigeon",
                                     "Shelduck","Barnacle Goose","Greylag Goose","Common Gull"))

p <- ggboxplot(new_FH_samlet, x = "art", y = "hoejde",
               color = "UAS", palette = c("red4", "navyblue"),
               add = "jitter")

p + stat_compare_means(aes(group = UAS), label = "p.signif",method ="wilcox.test",label.y =100,
                       size=4.5) +
  #  stat_boxplot(aes(group = interaction(UAS, art)),geom ='errorbar', width = 0.2, size=0.25, color="black") +
  #  stat_compare_means(method = 'kruskal.test', label.y = 100)+ 
  xlab(NULL) + ylab("Flying altitude (m)") +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=12) +
  scale_x_discrete(breaks=unique(new_FH_samlet$art),
                   labels=addline_format(unique(new_FH_samlet$art))) +
  scale_y_continuous(breaks = seq(0, 100, by=10), limits=c(0,100))+
  theme(plot.margin = margin(0.1, 1, 0.1, 0.1, "cm"),axis.text=element_text(size=9),
        axis.title=element_text(size=14,face=1),
        strip.text = element_text(face=2, size=9.5),legend.text = element_text(size = 12),
        legend.title = element_text(size = 13),legend.position = "top")

# Og tilbage igen Oystercather med Oyster- catcher
new_FH_samlet$art <- gsub('Oyster- catcher', 'Oystercatcher', new_FH_samlet$art)
new_FH_samlet$art
#*********************************************
# pairwise multicomparisons - wilcoxon unpaired - Mann-Whitney

p_value_phan <- compare_means(hoejde ~ art, data = sub_phan, 
              group.by = "UAS", method = "wilcox.test", paired = F,
              p.adjust.method = "holm")
p_value_mavic <- compare_means(hoejde ~ art, data = sub_mavic, 
                              group.by = "UAS", method = "wilcox.test", paired = F,
                              p.adjust.method = "holm")
p_value_mavic
#View(p_value)
head(p_value)
#View(p_value_mavic)
new_FH_samlet
new_FH_samlet$pair <- interaction(new_FH_samlet$art,new_FH_samlet$UAS)

library(forcats)

## Lav rigtig grupperet rækkefølge
new_FH_samlet$art <- factor(new_FH_samlet$art, 
                            levels=rev(c("Dunlin","Red Knot","Northern Lapwing","Golden Plover",
                                         "Avocet","Bar-tailed Godwit","Oystercatcher","Wigeon",
                                         "Shelduck","Barnacle Goose","Greylag Goose","Common Gull")))
new_FH_samlet <- new_FH_samlet[order(new_FH_samlet$art,decreasing = T),]
#View(new_FH_samlet)
# Opdel i UAS type
sub_phan <- subset(new_FH_samlet, subset=!(UAS=='Mavic'))
sub_mavic <- subset(new_FH_samlet, subset=!(UAS=='Phantom'))
#View(subset(new_FH_samlet, subset=!(UAS=='Phantom')))

## Lav rigtig grupperet rækkefølge
new_FH_samlet$art <- factor(new_FH_samlet$art, 
                            levels=rev(c("Dunlin","Red Knot","Northern Lapwing","Golden Plover",
                                         "Avocet","Bar-tailed Godwit","Oystercatcher","Wigeon",
                                         "Shelduck","Barnacle Goose","Greylag Goose","Common Gull")))
new_FH_samlet <- new_FH_samlet[order(new_FH_samlet$art,decreasing = F),]
sub_phan$art <- factor(sub_phan$art, 
                        levels=rev(c("Dunlin","Red Knot","Northern Lapwing","Golden Plover",
                                     "Avocet","Bar-tailed Godwit","Oystercatcher","Wigeon",
                                     "Shelduck","Barnacle Goose","Greylag Goose","Common Gull")))
sub_phan <- sub_phan[order(sub_phan$art,decreasing = T),]
sub_mavic$art <- factor(sub_mavic$art, 
                       levels=rev(c("Dunlin","Red Knot","Northern Lapwing","Golden Plover",
                                    "Avocet","Bar-tailed Godwit","Oystercatcher","Wigeon",
                                    "Shelduck","Barnacle Goose","Greylag Goose","Common Gull")))
sub_mavic <- sub_mavic[order(sub_mavic$art,decreasing = T),]
sub_mavic

wil_phan <- pairwise.wilcox.test(sub_phan$hoejde,sub_phan$art,p.adjust.method="none",
                                  paired = F)
wil_phan
wil_phan <- cbind(wil_phan$p.value,c(NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
wil_phan <- rbind(c(NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA),wil_phan)
colnames(wil_phan) <- unique(new_FH_samlet$art)
rownames(wil_phan) <- unique(new_FH_samlet$art)
unique(new_FH_samlet$art)
wil_mavic <- pairwise.wilcox.test(sub_mavic$hoejde,sub_mavic$art,p.adjust.method="none",
                                   paired = F,alternative='t')
wil_mavic <- cbind(wil_mavic$p.value,c(NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
wil_mavic <- rbind(c(NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA),wil_mavic)
colnames(wil_mavic) <- unique(new_FH_samlet$art)
rownames(wil_mavic) <- unique(new_FH_samlet$art)

#View(wil_mavic)

# Combine de to halve matrixer til en hel
wil_combi <- lowerUpper(t(wil_mavic), wil_phan)
wil_combi_UAS <- lowerUpper(t(-wil_mavic), wil_phan)
wil_combi_UAS_forsk <- lowerUpper(t(wil_mavic-2), wil_phan+2)
#View(wil_combi)
#View(wil_combi_forsk)

wil_combi_forsk <- wil_combi
wil_combi_forsk[wil_combi_forsk < 0.05] <- 5
wil_combi_forsk[wil_combi_forsk < 5] <- 0

# Samlet plot
plt_combi <-ggcorrplot(wil_combi, lab = T, p.mat = wil_combi, sig.level = 0.05, 
                       hc.order = F, outline.col = "white", digits = 3, tl.srt = 60,
                       pch.col = 'red4', pch.cex = 6, lab_size = 3, pch = 4)

plt_combi + labs(title="Independent Wilcoxon comparisons for both UAS") + 
  scale_fill_gradientn(limit=c(0, 1),"p-values" , 
                       colours = c("darkgreen","grey","grey","grey",
                                   "grey","grey","grey","grey","grey","grey","grey","grey")) +
  scale_x_discrete(labels=addline_format(unique(new_FH_samlet$art))) +
  scale_y_discrete(labels=addline_format(unique(new_FH_samlet$art))) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=8.5) +
  rotate_y_text(angle = 0, hjust = c(0,0), vjust = c(0.,0.), size=8.5)

# ændre til signi.niveauer

wil_combi_sig <- wil_combi
wil_combi_sig[wil_combi_sig < 0.001] <- '***'
wil_combi_sig[wil_combi_sig < c(0.001,0.01)] <- '**'
wil_combi_sig[wil_combi_sig < c(0.01,0.05)] <- '*'
wil_combi_sig[wil_combi_sig > 0.05] <- 'ns'
wil_combi_sig

# Samlet plot (sig. ***)
install.packages('gplots')
library('gplots')

# show the alphabet as a matrix
textplot(wil_combi_sig, halign = c("left"),
         
         valign = c("center"), cex=.5,cmar = 1,
         rmar = 1, show.rownames = TRUE, show.colnames = TRUE,
         hadj = 1, vadj = 0, mar = c(0, 0, 0, 0),srt=0 )

         
                  col.data = par("col"), col.rownames = par("col"), 
         col.colnames = par("col"), ...) 



textplot(wil_combi_sig)

plt_combi <-ggcorrplot(wil_combi_sig, lab = T, p.mat = wil_combi, sig.level = 0.05, 
                       hc.order = F, outline.col = "white", digits = 3, tl.srt = 60,
                       pch.col = 'red4', pch.cex = 4, lab_size = 3, pch = 4)

plt_combi + labs(title="Independent Wilcoxon comparisons for both UAS") + 
  scale_fill_gradientn(limit=c(0, 1),"p-values" , 
                       colours = c("darkgreen","grey","grey","grey","grey")) +
  scale_x_discrete(labels=addline_format(unique(new_FH_samlet$art))) +
  scale_y_discrete(labels=addline_format(unique(new_FH_samlet$art))) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=8.5) +
  rotate_y_text(angle = 0, hjust = c(0,0), vjust = c(0.,0.), size=8.5)


# anden visualisering
plt_combi_forsk <-ggcorrplot(wil_combi, lab = T, p.mat = wil_combi_forsk, sig.level = 0.005, 
                       hc.order = F, outline.col = "white",digits = 3, tl.srt = 60,
                       pch.col = 'green4', pch.cex = 3, pch = 8, lab_size = 3)
#insig = "blank",
plt_combi_forsk + labs(title="Independent Wilcoxon comparisons for both UASs") + 
  scale_fill_gradientn(limit=c(0, 1),"p-values" , 
                       colours = c("lightgrey","orange","orange","orange","orange")) +
  scale_x_discrete(labels=addline_format(unique(new_FH_samlet$art))) +
  scale_y_discrete(labels=addline_format(unique(new_FH_samlet$art))) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=8.5) +
  rotate_y_text(angle = 0, hjust = c(0,0), vjust = c(0.,0.), size=8.5)

plt_combi <-ggcorrplot(wil_combi_UAS_forsk, lab = F, p.mat = wil_combi, sig.level = 0.05, 
                       hc.order = F, outline.col = "white",digits = 2, tl.srt = 60,
                       pch.col = 'red4', pch.cex = 4,insig = "blank")

#insig = "blank",
plt_combi + labs(title="Independent Wilcoxon comparisons for both UASs") + 
  scale_fill_gradientn(limit=c(-1, 1),"p-values" , 
                       colours = c("red4","red4","red4","red4","green4",
                                   "skyblue4","orange","orange","orange","orange")) +
  scale_x_discrete(labels=addline_format(unique(new_FH_samlet$art))) +
  scale_y_discrete(labels=addline_format(unique(new_FH_samlet$art))) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=8.5) +
  rotate_y_text(angle = 0, hjust = c(0,0), vjust = c(0.,0.), size=8.5)


# PlotPvalues
plt <- plotPvalues(p_value_p,p = 'p', x='group2', y='group1', sections= 'UAS', 
                   show.sig = T, font.size = 5, triangles = "upper",
                   gridspacing = 1,hc.order = T)

plt + labs(title="Corrected p-values for Phantom comparisons") + 
  scale_fill_gradientn("Corrected p-values" , colours = c("skyblue4" , "orange")) +
  ggplot2::scale_x_discrete(breaks=unique(new_FH_samlet$art),
                   labels=addline_format(unique(new_FH_samlet$art))) +
  scale_y_discrete(breaks=unique(new_FH_samlet$art),
                   labels=addline_format(unique(new_FH_samlet$art))) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=10.5) +
  rotate_y_text(angle = 0, hjust = c(0,0), vjust = c(0.,0.), size=10.5)



#plt_Pvalue <- plotPvalues.data.frame(p_value_phan$p,p_value_mavic$group1,
#                                     p_value_mavic$group2,
#                                     triangles = "lower")

# data(data_gh_2008)
# pvalues <- friedmanPost(data.gh.2008)
# ordering <- order(summarizeData(data.gh.2008))
# plotPvalues(pvalues, alg.order=ordering)
# plotPvalues(pvalues, )


wilcox.test(hoejde ~ art, data = subset(sub_mavic,art=='Greylag Goose (Anser anser)'
                                        |art=='Common gull (Larus canus)'),
            exact = F, paired=F, alternative='t')

#*******************************
new_FH_samlet

sign.UAS <- wilcox.test(hoejde ~ UAS, data = new_FH_samlet,
                   exact = F,paired=F,alternative='t')
sign.UAS

sign.UAS <- wilcox.test(hoejde ~ UAS, data = new_FH_samlet,
                        exact = F,paired=F,alternative='t')

test <- subset(new_FH_samlet,
       art=='Barnacle Goose (Branta Leucopsis)' | art=='Greylag Goose (Anser anser)')
test
x <- wilcox.test(hoejde ~ art, data =  test,exact=F,paired=F,alternative='t')
x
new_FH_samlet$art

################## For nr/altal pr overflyvning
# Sørg først for ens navne/headers for alle dataframes
Gravand_nr_dat
Gravand_nr_dat$navn <- c('Shelduck')
colnames(Gravand_nr_dat) <- c("flight_nr", "height","nr_birds","UAS","date","art","navn")
Stormmåge_nr_dat$navn <- c('Common Gull')
colnames(Stormmåge_nr_dat) <- c("flight_nr", "height","nr_birds","UAS","date","art","navn")
Storspove_nr_dat
Storspove_nr_dat$navn <- c('Curlew')
colnames(Storspove_nr_dat) <- c("flight_nr", "height","nr_birds","UAS","date","art","navn")
Ryle_nr_dat
Ryle_nr_dat$navn <- c('Dunlin')
colnames(Ryle_nr_dat) <- c("flight_nr", "height","nr_birds","UAS","date","art","navn")
Vibe_nr_dat
Vibe_nr_dat$navn <- c('Northern Lapwing')
colnames(Vibe_nr_dat) <- c("flight_nr", "height","nr_birds","UAS","date","art","navn")
Kobbersneppe_nr_dat
Kobbersneppe_nr_dat$navn <- c('Bar-tailed Godwit')
colnames(Kobbersneppe_nr_dat) <- c("flight_nr", "height","nr_birds","UAS","date","art","navn")
Hjejle_nr_dat
Hjejle_nr_dat$navn <- c('Golden Plover')
colnames(Hjejle_nr_dat) <- c("flight_nr", "height","nr_birds","UAS","date","art","navn")
Klyde_nr_dat
Klyde_nr_dat$navn <- c('Avocet')
colnames(Klyde_nr_dat) <- c("flight_nr", "height","nr_birds","UAS","date","art","navn")
Islandsk_nr_dat
Islandsk_nr_dat$navn <- c('Red Knot')
colnames(Islandsk_nr_dat) <- c("flight_nr", "height","nr_birds","UAS","date","art","navn")
Grågås_nr_dat
Grågås_nr_dat$navn <- c('Greylag Goose')
colnames(Grågås_nr_dat) <- c("flight_nr", "height","nr_birds","UAS","date","art","navn")
Bramgås_nr_dat
Bramgås_nr_dat$navn <- c('Barnacle Goose')
colnames(Bramgås_nr_dat) <- c("flight_nr", "height","nr_birds","UAS","date","art","navn")
Strandskade_nr_dat
Strandskade_nr_dat$navn <- c('Oystercatcher')
colnames(Strandskade_nr_dat) <- c("flight_nr", "height","nr_birds","UAS","date","art","navn")
Pibeand_nr_dat$navn <- c('Wigeon')
colnames(Pibeand_nr_dat) <- c("flight_nr", "height","nr_birds","UAS","date","art","navn")
Pibeand_nr_dat

# Saml til et samlet dataframe
FH_samlet_nr <- rbind.data.frame(Klyde_nr_dat,Vibe_nr_dat,Hjejle_nr_dat,Kobbersneppe_nr_dat,
                                 Strandskade_nr_dat,Ryle_nr_dat,Islandsk_nr_dat,Gravand_nr_dat,
                                 Pibeand_nr_dat,Stormmåge_nr_dat,Grågås_nr_dat,Bramgås_nr_dat)
FH_samlet_nr

# Skriv csv fil med samlet data (nr/antal)
write.csv(FH_samlet_nr, file = "G:/Vadehavet/Frames_geo/FH_samlet_nr.csv")

# Byt om på rækkeføljen af UAS
FH_samlet_nr$UAS <- factor(FH_samlet_nr$UAS, levels = rev(levels(FH_samlet_nr$UAS)))
FH_samlet_nr

#Grupper i rigtigt rækkefølge efter speceis group
FH_samlet_nr$navn <- factor(FH_samlet_nr$navn, 
                        levels=c("Dunlin","Red Knot","Northern Lapwing","Golden Plover",
                                 "Avocet","Bar-tailed Godwit","Oystercatcher","Wigeon",
                                 "Shelduck","Barnacle Goose","Greylag Goose","Common Gull"))


View(FH_samlet_nr)

# Lav samlet plot over nr/antal individer pr overflyvning
p_Alle_nr <- ggplot(data = FH_samlet_nr, aes(x = nr_birds, y = height, group = UAS,
                                       color = UAS)) + 
  facet_wrap(~navn, labeller = labeller(navn = label_wrap_gen(25)))
my.formula <- y ~ x

p_Alle_nr + geom_point() + 
  geom_smooth(method = "lm", se = T,  fullrange = TRUE, span = 0.7, 
              fill = col_rep, alpha =.2, show.legend = T) + theme_bw()+
  ylim(-19, 100) + xlim(0,1500.01) +
  theme(strip.text = element_text(face=1, size=10.5),legend.text = element_text(size = 12),
        legend.title = element_text(size = 13), strip.background = element_rect(fill = 'grey98'),
        legend.background = element_rect(colour = 'black', fill = 'white', linetype ='blank'),
        legend.position = "top") + 
  theme(plot.title = element_text(hjust = 0.5),axis.text=element_text(size=9),
        axis.title=element_text(size=14,face=1),axis.title.x = element_text(size=14,face=1)) + 
  xlab("Flock size disturbed (i.e. flushed)") + ylab("Flying altitude") + 
  scale_color_manual(values = c('Phantom' = "red4",'Mavic' = "navy")) +
  stat_poly_eq(formula = my.formula, aes(label=paste(..rr.label.., sep = "~~~")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               label.x.npc = c(0.96,0.96), label.y = c(0.16, 0.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(305,350), label.y = c(2.0, -15.5), size = 3.5) 
#  stat_fit_tb(method = "lm",
#              method.args = list(formula = my.formula),
#              tb.vars = c(Parameter = "term", Slope = "estimate"),
#              parse = TRUE, label.x.npc = c(0.5,0.1)) 
  
#stat_compare_means(label = "p.signif")

###################################################################
# Lav samlet plot over nr/antal individer pr overflyvning (Bytte om på akser)
FH_samlet_nr$height <- as.numeric(as.character(FH_samlet_nr$height))
FH_samlet_nr$nr_birds <- as.numeric(as.character(FH_samlet_nr$nr_birds))

p_Alle_nr <- ggplot(data = FH_samlet_nr, aes(x = height, y = nr_birds, group = UAS,
                                             color = UAS)) + 
  facet_wrap(~navn, labeller = labeller(navn = label_wrap_gen(25)))
my.formula <- y ~ x
p_Alle_nr + geom_point(alpha =.5) + 
  geom_smooth(method = "lm", se = T,  fullrange = TRUE, 
              fill = col_rep, alpha =.15, show.legend = T) + theme_bw()+
  scale_x_continuous(limits = c(-0.01,100.01),breaks = seq(0,100,10)) +
  scale_y_continuous(limits = c(-600,1500),breaks = seq(0,1500,300)) +
  theme(strip.text = element_text(face=1, size=10.5),legend.text = element_text(size = 12),
        legend.title = element_text(size = 13), strip.background = element_rect(fill = 'grey98'),
        legend.background = element_rect(colour = 'black', fill = 'white', linetype ='blank'),
        legend.position = "top") + 
  theme(plot.title = element_text(hjust = 0.5),axis.text=element_text(size=9),
        axis.title=element_text(size=14,face=1),axis.title.x = element_text(size=14,face=1),
        panel.grid.minor = element_blank()) + 
  xlab("Flying altitude") + ylab("Flock size disturbed (i.e. flushed)") + 
  scale_color_manual(values = c('Phantom' = "red4",'Mavic' = "navy")) +
  stat_poly_eq(formula = my.formula, aes(label=paste(..rr.label.., sep = "~~~")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               label.x.npc = c(0.96,0.96), label.y = c(0.16, 0.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(50,50), label.y = c(-200.0, -500.0), size = 3.5) 
#  stat_fit_tb(method = "lm",
#              method.args = list(formula = my.formula),
#              tb.vars = c(Parameter = "term", Slope = "estimate"),
#              parse = TRUE, label.x.npc = c(0.5,0.1)) 

#stat_compare_means(label = "p.signif")

###################################################################


# create comparing dataframe for Phantom

tom_hoejde <- unique(FH_samlet_nr$height)
tom_hoejde <- cbind(tom_hoejde, rep('NA',length(tom_hoejde)),rep('NA',length(tom_hoejde))
                    ,rep('NA',length(tom_hoejde)),rep('NA',length(tom_hoejde)),rep('NA',length(tom_hoejde))
                    ,rep('NA',length(tom_hoejde)),rep('NA',length(tom_hoejde)),rep('NA',length(tom_hoejde))
                    ,rep('NA',length(tom_hoejde)),rep('NA',length(tom_hoejde)),rep('NA',length(tom_hoejde))
                    ,rep('NA',length(tom_hoejde)))
tom_hoejde



######**************** Residualplot på den linære model********************

#### Obtain predicted and residual values
# Først subset til UAS model
phan_nr <- subset(FH_samlet_nr, subset=!(UAS=='Mavic'))
mavic_nr <- subset(FH_samlet_nr, subset=!(UAS=='Phantom'))
# Lav så lm særskilt
phan_fit <- lmList(height~nr_birds|navn,phan_nr)
mavic_fit <- lmList(height~nr_birds|navn,mavic_nr)
phan_fit
# Indsæt fittede værdier
phan_nr$predicted <- predict(phan_fit)
phan_nr$residuals <- residuals(phan_fit)
mavic_nr$predicted <- predict(mavic_fit)
mavic_nr$residuals <- residuals(mavic_fit)
# saml til et dataframe igen
fit_samlet <- rbind(phan_nr,mavic_nr)
fit_samlet$navn <- factor(fit_samlet$navn, 
                          levels=c("Dunlin","Red Knot","Northern Lapwing","Golden Plover",
                                   "Avocet","Bar-tailed Godwit","Oystercatcher","Wigeon",
                                   "Shelduck","Barnacle Goose","Greylag Goose","Common Gull"))
fit_samlet <- fit_samlet[order(fit_samlet$navn,decreasing = F),]
fit_samlet

#View(FH_samlet_nr)

######################### Create plot
# Formular for r^2
my.formula <- y ~ x
# farvekoder for UAS
col_rep <- c(rep("red4",1920/24),rep("navy",1920/24),rep("red4",1920/24),rep("navy",1920/24),
             rep("red4",1920/24),rep("navy",1920/24),rep("red4",1920/24),rep("navy",1920/24),
             rep("red4",1920/24),rep("navy",1920/24),rep("red4",1920/24),rep("navy",1920/24),
             rep("red4",1920/24),rep("navy",1920/24),rep("red4",1920/24),rep("navy",1920/24),
             rep("red4",1920/24),rep("navy",1920/24),rep("red4",1920/24),rep("navy",1920/24),
             rep("red4",1920/24),rep("navy",1920/24),rep("red4",1920/24),rep("navy",1920/24))

# plot ggplottet
p_residual <- ggplot(data = fit_samlet, aes(x = nr_birds, y = height, group = UAS)) +
  facet_wrap(~navn, labeller = labeller(navn = label_wrap_gen(25)))

p_residual + geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE,
                         color =col_rep) +
  geom_segment(aes(xend = nr_birds, yend = predicted), alpha = .7, show.legend = T) +
  xlim(0,1000) + ylim(-18,100) +
  theme(legend.background = element_rect(colour = 'black', fill = 'white', linetype='solid'),
        strip.text = element_text(face=4, size=8)) +
  # Color adjustments made here...
  geom_point(aes(color = residuals)) +  # Color mapped here
  scale_color_gradient2(low = "blue", mid = "green4", high = "red") +  # Colors to use here
  guides(color = FALSE) +
  # < 
  geom_point(aes(y = predicted), shape = 1) +
  theme_bw() +
  ggtitle("Escape distance") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Flock size disturbed (i.e. flushed)") + ylab("Flying altitude (m)") + 
  stat_poly_eq(formula = my.formula, aes(label = paste(..rr.label.., sep = "~~~")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               label.x.npc = c(0.96,0.96), label.y = c(0.03, 0.16), colour=c("navy","red4","navy","red4",
                                                                             "navy","red4","navy","red4",
                                                                             "navy","red4","navy","red4",
                                                                             "navy","red4","navy","red4",
                                                                             "navy","red4","navy","red4",
                                                                             "navy","red4","navy","red4"))


################# *************Lav plot med predicted / obs værdier ***********###########
fit_samlet$x_indeks <- fit_samlet$predicted/fit_samlet$height

fit_samlet
fit_samlet$navn <- factor(fit_samlet$navn, 
                             levels=c("Dunlin","Red Knot","Northern Lapwing","Golden Plover",
                                      "Avocet","Bar-tailed Godwit","Oystercatcher","Wigeon",
                                      "Shelduck","Barnacle Goose","Greylag Goose","Common Gull"))

# Lav scatterplot
plot(x=fit_samlet$nr_birds, y=x_indeks, xlim=c(0,1000))

opdelt <- split(fit_samlet, fit_samlet$navn)
opdelt
klyde <- opdelt$`Avocet`
klyde
klyde_phan <- klyde[klyde$UAS %in% 'Phantom',]
klyde_mavic <- klyde[klyde$UAS %in% 'Mavic',]
vibe <-  opdelt$`Northern Lapwing`
vibe_phan <- vibe[vibe$UAS %in% 'Phantom',]
vibe_mavic <- vibe[vibe$UAS %in% 'Mavic',]
hjejle <- opdelt$`Golden Plover`
hjejle_phan <- hjejle[hjejle$UAS %in% 'Phantom',]
hjejle_mavic <- hjejle[hjejle$UAS %in% 'Mavic',]
kobbersneppe <- opdelt$`Bar-tailed Godwit`
kobbersneppe_phan <- kobbersneppe[kobbersneppe$UAS %in% 'Phantom',]
kobbersneppe_mavic <- kobbersneppe[kobbersneppe$UAS %in% 'Mavic',]
strandskade <- opdelt$`Oystercatcher`
strandskade_phan <- strandskade[strandskade$UAS %in% 'Phantom',]
strandskade_mavic <- strandskade[strandskade$UAS %in% 'Mavic',]
ryle <- opdelt$`Dunlin`
ryle_phan <- ryle[ryle$UAS %in% 'Phantom',]
ryle_mavic <- ryle[ryle$UAS %in% 'Mavic',]
islandsk <- opdelt$`Red Knot`
islandsk_phan <- islandsk[islandsk$UAS %in% 'Phantom',]
islandsk_mavic <- islandsk[islandsk$UAS %in% 'Mavic',]
gravand <- opdelt$`Shelduck`
gravand_phan <- gravand[gravand$UAS %in% 'Phantom',]
gravand_mavic <- gravand[gravand$UAS %in% 'Mavic',]
pibeand <- opdelt$`Wigeon`
pibeand_phan <- pibeand[pibeand$UAS %in% 'Phantom',]
pibeand_mavic <- pibeand[pibeand$UAS %in% 'Mavic',]
stormmåge <- opdelt$`Common Gull`
stormmåge_phan <- stormmåge[stormmåge$UAS %in% 'Phantom',]
stormmåge_mavic <- stormmåge[stormmåge$UAS %in% 'Mavic',]
grågås <- opdelt$`Greylag Goose`
grågås_phan <- grågås[grågås$UAS %in% 'Phantom',]
grågås_mavic <- grågås[grågås$UAS %in% 'Mavic',]
bramgås <- opdelt$`Barnacle Goose`
bramgås_phan <- bramgås[bramgås$UAS %in% 'Phantom',]
bramgås_mavic <- bramgås[bramgås$UAS %in% 'Mavic',]
vibe
pred_obs <- cbind(mean(klyde$x_indeks),mean(vibe$x_indeks),mean(hjejle$x_indeks),
                 mean(kobbersneppe$x_indeks),mean(strandskade$x_indeks),mean(ryle$x_indeks),
                 mean(islandsk$x_indeks),mean(gravand$x_indeks),mean(pibeand$x_indeks),
                 mean(stormmåge$x_indeks),mean(grågås$x_indeks),mean(bramgås$x_indeks))
colnames(pred_obs) <- unique(fit_samlet$navn)
pred_obs
str(hjejle$x_indeks)

# UAS'er hver for sig
pred_obs_phan <- cbind(mean(klyde_phan$x_indeks),mean(vibe_phan$x_indeks),
                       mean(hjejle_phan$x_indeks),mean(kobbersneppe_phan$x_indeks),
                       mean(strandskade_phan$x_indeks),mean(ryle_phan$x_indeks),
                       mean(islandsk_phan$x_indeks),mean(gravand_phan$x_indeks),
                       mean(pibeand_phan$x_indeks),mean(stormmåge_phan$x_indeks),
                       mean(grågås_phan$x_indeks),mean(bramgås_phan$x_indeks))
pred_obs_mavic <- cbind(mean(klyde_mavic$x_indeks),mean(vibe_mavic$x_indeks),
                        mean(hjejle_mavic$x_indeks),mean(kobbersneppe_mavic$x_indeks),
                        mean(strandskade_mavic$x_indeks),mean(ryle_mavic$x_indeks),
                        mean(islandsk_mavic$x_indeks),mean(gravand_mavic$x_indeks),
                        mean(pibeand_mavic$x_indeks),mean(stormmåge_mavic$x_indeks),
                        mean(grågås_mavic$x_indeks),mean(bramgås_mavic$x_indeks))

pred_obs_mavic
# Lav bootstrap confidens intervaller
library(boot)
meanfun <- function(data, i){
  d <- data[i, ]
  return(mean(d))   
}

# frequentist
boot.klyde <- boot(klyde[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.klyde <-  boot.ci(boot.klyde, conf=0.95, type="bca")
boot.vibe <- boot(vibe[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.vibe <-  boot.ci(boot.vibe, conf=0.95, type="bca")
boot.hjejle <- boot(hjejle[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.hjejle <-  boot.ci(boot.hjejle, conf=0.95, type="bca")
boot.kobbersneppe <- boot(kobbersneppe[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.kobbersneppe <-  boot.ci(boot.kobbersneppe, conf=0.95, type="bca")
boot.strandskade <- boot(strandskade[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.strandskade <-  boot.ci(boot.strandskade, conf=0.95, type="bca")
boot.strandskade <- boot(strandskade[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.ryle <-  boot.ci(boot.ryle, conf=0.95, type="bca")
boot.ryle <- boot(ryle[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.ryle <-  boot.ci(boot.ryle, conf=0.95, type="bca")
boot.islandsk <- boot(islandsk[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.islandsk <-  boot.ci(boot.islandsk, conf=0.95, type="bca")
boot.gravand <- boot(gravand[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.gravand <-  boot.ci(boot.gravand, conf=0.95, type="bca")
boot.pibeand <- boot(pibeand[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.pibeand <-  boot.ci(boot.pibeand, conf=0.95, type="bca")
boot.stormmåge <- boot(stormmåge[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.stormmåge <-  boot.ci(boot.stormmåge, conf=0.95, type="bca")
boot.grågås <- boot(grågås[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.grågås <-  boot.ci(boot.grågås, conf=0.95, type="bca")
boot.bramgås <- boot(bramgås[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.bramgås <-  boot.ci(boot.bramgås, conf=0.95, type="bca")

lowerbound <- cbind(CI.klyde$bca[4],CI.vibe$bca[4],CI.hjejle$bca[4],CI.kobbersneppe$bca[4],
                    CI.strandskade$bca[4],CI.ryle$bca[4],CI.islandsk$bca[4],CI.gravand$bca[4],
                    CI.pibeand$bca[4],CI.stormmåge$bca[4],CI.grågås$bca[4],CI.bramgås$bca[4])
upperbound <- cbind(CI.klyde$bca[5],CI.vibe$bca[5],CI.hjejle$bca[5],CI.kobbersneppe$bca[5],CI.strandskade$bca[5],
                    CI.ryle$bca[5],CI.islandsk$bca[5],CI.gravand$bca[5],CI.pibeand$bca[5],
                    CI.stormmåge$bca[5],CI.grågås$bca[5],CI.bramgås$bca[5])
boot.mean <- cbind(CI.klyde$t0,CI.vibe$t0,CI.hjejle$t0,CI.kobbersneppe$t0,CI.strandskade$t0,
                    CI.ryle$t0,CI.islandsk$t0,CI.gravand$t0,CI.pibeand$t0,
                    CI.stormmåge$t0,CI.grågås$t0,CI.bramgås$t0)

colnames(boot.mean) <- c(levels(fit_samlet$navn))

# Bootstrap UAS'er hver for sig
# frequentist "PHANTOM"
boot.klyde_phan <- boot(klyde_phan[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.klyde_phan <-  boot.ci(boot.klyde_phan, conf=0.95, type="bca")
boot.vibe_phan <- boot(vibe_phan[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.vibe_phan <-  boot.ci(boot.vibe_phan, conf=0.95, type="bca")
boot.hjejle_phan <- boot(hjejle_phan[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.hjejle_phan <-  boot.ci(boot.hjejle_phan, conf=0.95, type="bca")
boot.kobbersneppe_phan <- boot(kobbersneppe_phan[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.kobbersneppe_phan <-  boot.ci(boot.kobbersneppe_phan, conf=0.95, type="bca")
boot.strandskade_phan <- boot(strandskade_phan[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.strandskade_phan <-  boot.ci(boot.strandskade_phan, conf=0.95, type="bca")
boot.ryle_phan <- boot(ryle_phan[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.ryle_phan <-  boot.ci(boot.ryle_phan, conf=0.95, type="bca")
boot.islandsk_phan <- boot(islandsk_phan[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.islandsk_phan <-  boot.ci(boot.islandsk_phan, conf=0.95, type="bca")
boot.gravand_phan <- boot(gravand_phan[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.gravand_phan<-  boot.ci(boot.gravand_phan, conf=0.95, type="bca")
boot.pibeand_phan <- boot(pibeand_phan[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.pibeand_phan <-  boot.ci(boot.pibeand_phan, conf=0.95, type="bca")
boot.stormmåge_phan <- boot(stormmåge_phan[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.stormmåge_phan <-  boot.ci(boot.stormmåge_phan, conf=0.95, type="bca")
boot.grågås_phan <- boot(grågås_phan[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.grågås_phan <-  boot.ci(boot.grågås_phan, conf=0.95, type="bca")
boot.bramgås_phan <- boot(bramgås_phan[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.bramgås_phan <-  boot.ci(boot.bramgås_phan, conf=0.95, type="bca")

lowerbound_phan <- cbind(CI.klyde_phan$bca[4],CI.vibe_phan$bca[4],CI.hjejle_phan$bca[4],
                    CI.kobbersneppe_phan$bca[4],CI.strandskade_phan$bca[4],CI.ryle_phan$bca[4],
                    CI.islandsk_phan$bca[4],CI.gravand_phan$bca[4],CI.pibeand_phan$bca[4],
                    CI.stormmåge_phan$bca[4],CI.grågås_phan$bca[4],CI.bramgås_phan$bca[4])
upperbound_phan <- cbind(CI.klyde_phan$bca[5],CI.vibe_phan$bca[5],CI.hjejle_phan$bca[5],
                    CI.kobbersneppe_phan$bca[5],CI.strandskade_phan$bca[5],CI.ryle_phan$bca[5],
                    CI.islandsk_phan$bca[5],CI.gravand_phan$bca[5],CI.pibeand_phan$bca[5],
                    CI.stormmåge_phan$bca[5],CI.grågås_phan$bca[5],CI.bramgås_phan$bca[5])
boot.mean_phan <- cbind(CI.klyde_phan$t0,CI.vibe_phan$t0,CI.hjejle_phan$t0,CI.kobbersneppe_phan$t0,
                   CI.strandskade_phan$t0,CI.ryle_phan$t0,CI.islandsk_phan$t0,CI.gravand_phan$t0,
                   CI.pibeand_phan$t0,CI.stormmåge_phan$t0,CI.grågås_phan$t0,CI.bramgås_phan$t0)

boot.mean_phan <- data.frame(t(boot.mean_phan))
boot.mean_phan <- cbind(levels(fit_samlet$navn),boot.mean_phan,'Phantom')
colnames(boot.mean_phan) <- c('navn','mean','UAS')
boot.mean_phan

# frequentist "MAVIC"
boot.klyde_mavic <- boot(klyde_mavic[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.klyde_mavic <-  boot.ci(boot.klyde_mavic, conf=0.95, type="bca")
boot.vibe_mavic <- boot(vibe_mavic[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.vibe_mavic <-  boot.ci(boot.vibe_mavic, conf=0.95, type="bca")
boot.hjejle_mavic <- boot(hjejle_mavic[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.hjejle_mavic <-  boot.ci(boot.hjejle_mavic, conf=0.95, type="bca")
boot.kobbersneppe_mavic <- boot(kobbersneppe_mavic[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.kobbersneppe_mavic <-  boot.ci(boot.kobbersneppe_mavic, conf=0.95, type="bca")
boot.strandskade_mavic <- boot(strandskade_mavic[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.strandskade_mavic <-  boot.ci(boot.strandskade_mavic, conf=0.95, type="bca")
boot.ryle_mavic <- boot(ryle_mavic[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.ryle_mavic <-  boot.ci(boot.ryle_mavic, conf=0.95, type="bca")
boot.islandsk_mavic <- boot(islandsk_mavic[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.islandsk_mavic <-  boot.ci(boot.islandsk_mavic, conf=0.95, type="bca")
boot.gravand_mavic <- boot(gravand_mavic[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.gravand_mavic<-  boot.ci(boot.gravand_mavic, conf=0.95, type="bca")
boot.pibeand_mavic <- boot(pibeand_mavic[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.pibeand_mavic <-  boot.ci(boot.pibeand_mavic, conf=0.95, type="bca")
boot.stormmåge_mavic <- boot(stormmåge_mavic[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.stormmåge_mavic <-  boot.ci(boot.stormmåge_mavic, conf=0.95, type="bca")
boot.grågås_mavic <- boot(grågås_mavic[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.grågås_mavic <-  boot.ci(boot.grågås_mavic, conf=0.95, type="bca")
boot.bramgås_mavic <- boot(bramgås_mavic[, "x_indeks", drop = FALSE], statistic=meanfun, R=10000)
CI.bramgås_mavic <-  boot.ci(boot.bramgås_mavic, conf=0.95, type="bca")

lowerbound_mavic <- cbind(CI.klyde_mavic$bca[4],CI.vibe_mavic$bca[4],CI.hjejle_mavic$bca[4],
                    CI.kobbersneppe_mavic$bca[4],CI.strandskade_mavic$bca[4],CI.ryle_mavic$bca[4],
                    CI.islandsk_mavic$bca[4],CI.gravand_mavic$bca[4],CI.pibeand_mavic$bca[4],
                    CI.stormmåge_mavic$bca[4],CI.grågås_mavic$bca[4],CI.bramgås_mavic$bca[4])
upperbound_mavic <- cbind(CI.klyde_mavic$bca[5],CI.vibe_mavic$bca[5],CI.hjejle_mavic$bca[5],
                    CI.kobbersneppe_mavic$bca[5],CI.strandskade_mavic$bca[5],CI.ryle_mavic$bca[5],
                    CI.islandsk_mavic$bca[5],CI.gravand_mavic$bca[5],CI.pibeand_mavic$bca[5],
                    CI.stormmåge_mavic$bca[5],CI.grågås_mavic$bca[5],CI.bramgås_mavic$bca[5])
boot.mean_mavic <- cbind(CI.klyde_mavic$t0,CI.vibe_mavic$t0,CI.hjejle_mavic$t0,CI.kobbersneppe_mavic$t0,
                   CI.strandskade_mavic$t0,CI.ryle_mavic$t0,CI.islandsk_mavic$t0,CI.gravand_mavic$t0,
                   CI.pibeand_mavic$t0,CI.stormmåge_mavic$t0,CI.grågås_mavic$t0,CI.bramgås_mavic$t0)

boot.mean_mavic <- data.frame(t(boot.mean_mavic))
boot.mean_mavic <- cbind(levels(fit_samlet$navn),boot.mean_mavic,'Mavic')
colnames(boot.mean_mavic) <- c('navn','mean','UAS')

## Lav nu samlet dataframe for boot.mean
upperbound_UASs <- rbind(t(upperbound_phan),t(upperbound_mavic))
lowerbound_UASs <- rbind(t(lowerbound_phan),t(lowerbound_mavic))
boot.mean_UASs <- rbind(boot.mean_phan,boot.mean_mavic)
all_boot.UASs <- cbind(boot.mean_UASs,upperbound_UASs,lowerbound_UASs)
all_boot.UASs

#############**** Lav plot
# sæt størrelse på marginer
par(mfrow=c(1,1))
par(oma=c(.5,3.2,2.5,1))
par(mar=c(8.5,1.2,1,2))
# break lines in x-labels
addline_format <- function(x,...){
  gsub('\\(','\n',x)
}
x <- 1:length(unique(fit_samlet$navn))
label <- levels(fit_samlet$navn)
pred.bar <- plot(x,boot.mean, ylim=c(0,3),col=c("grey"), xpd = T,xaxt='n',xlab='')
tck <- axis(1,x, labels=FALSE)
arrows(x, lowerbound, x, upperbound, length=0.05, angle=90, code=3,col = 'black')
text(tck, par("usr")[3]- 0.2, labels=addline_format(label), srt=310,
     xpd=TRUE, adj=c(0.,0.9), cex=0.9)

mtext("pred/obs", side=2, cex=1.3, line=1.3, outer=TRUE)
mtext("lm pred/obs", side=3, cex=1.3, line=-.5, outer=TRUE)

all_boot.UASs
all_boot.UASs$navn <- factor(all_boot.UASs$navn, 
                        levels=c("Dunlin","Red Knot","Northern Lapwing","Golden Plover",
                                 "Avocet","Bar-tailed Godwit","Oystercatcher","Wigeon",
                                 "Shelduck","Barnacle Goose","Greylag Goose","Common Gull"))
all_boot.UASs <- all_boot.UASs[order(all_boot.UASs$navn,decreasing = F),]
##***** ggplot
pd = position_dodge(0.6)    ### How much to jitter the points on the plot
ggplot(all_boot.UASs,aes(x=navn, y=mean, color=UAS),
       add = "jitter") + theme_bw() +
  geom_point(size = 3,position = pd)  +
  geom_errorbar(aes(ymin  =  all_boot.UASs$lowerbound_UASs, 
                    ymax  =  all_boot.UASs$upperbound_UASs),
                width =  0.2, size  =  0.8,position = pd) + 
  xlab(NULL) + ylab("pred/obs variance") + ylim(0.5,4) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=10.5) +
  scale_x_discrete(breaks=unique(boot.mean_UASs$navn),
                   labels=unique(boot.mean_UASs$navn)) +
  theme(legend.background = element_rect(colour = 'black', fill = 'white', linetype='solid')) +
  scale_color_manual(values = c("red4", "navyblue")) +
  theme(plot.title = element_text(hjust = 0.5),legend.position = 'top')



