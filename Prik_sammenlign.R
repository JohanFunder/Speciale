# Instaler nødvendige pakker
library(ggplot2)




## Alles prik for Ryle
# Mads
prik_Ryle <- read.csv("G:/Vadehavet/Alle_prik_csv/Ryle_Mads.csv", header = TRUE)
prik_Ryle <- cbind('Ryle','Mads',prik_Ryle[2:3])
colnames(prik_Ryle) <- c("art","id",'xcoord','ycoord')
Ryle_mads <- prik_Ryle
head(Ryle_mads)

# Rune
prik_Ryle <- read.csv("G:/Vadehavet/Alle_prik_csv/Ryle_Rune.csv", header = TRUE)
prik_Ryle <- cbind('Ryle','Rune',prik_Ryle[2:3])
colnames(prik_Ryle) <- c("art","id",'xcoord','ycoord')
Ryle_rune <- prik_Ryle

# Jonas
prik_Ryle <- read.csv("G:/Vadehavet/Alle_prik_csv/Ryle_Jonas.csv", header = TRUE)
prik_Ryle <- cbind('Ryle','Jonas',prik_Ryle[2:3])
colnames(prik_Ryle) <- c("art","id",'xcoord','ycoord')
Ryle_jonas <- prik_Ryle

# Johan
prik_Ryle <- read.csv("G:/Vadehavet/Alle_prik_csv/Ryle_Johan.csv", header = TRUE)
prik_Ryle <- cbind('Ryle','Johan',prik_Ryle[2:3])
colnames(prik_Ryle) <- c("art","id",'xcoord','ycoord')
Ryle_johan <- prik_Ryle

## Samlet Ryle
samlet_Ryle <- rbind(Ryle_mads,Ryle_rune,Ryle_jonas,Ryle_johan)
str(samlet_Ryle)
head(samlet_Ryle)

## Alles prik for Gravand
# Mads
prik_Gravand <- read.csv("G:/Vadehavet/Alle_prik_csv/gravand_Mads.csv", header = TRUE)
prik_Gravand <- cbind('Gravand','Mads',prik_Gravand[2:3])
colnames(prik_Gravand) <- c("art","id",'xcoord','ycoord')
Gravand_mads <- prik_Gravand
head(Gravand_mads)

# Rune
prik_Gravand <- read.csv("G:/Vadehavet/Alle_prik_csv/Gravand_Rune.csv", header = TRUE)
prik_Gravand <- cbind('Gravand','Rune',prik_Gravand[2:3])
colnames(prik_Gravand) <- c("art","id",'xcoord','ycoord')
colnames(prik_Gravand) <- c("art","id",'xcoord','ycoord')
Gravand_rune <- prik_Gravand
head(Gravand_rune)

# Jonas
prik_Gravand <- read.csv("G:/Vadehavet/Alle_prik_csv/Gravand_Jonas.csv", header = TRUE)
prik_Gravand <- cbind('Gravand','Jonas',prik_Gravand[2:3])
colnames(prik_Gravand) <- c("art","id",'xcoord','ycoord')
Gravand_jonas <- prik_Gravand

# Johan
prik_Gravand <- read.csv("G:/Vadehavet/Alle_prik_csv/Gravand_Johan.csv", header = TRUE)
prik_Gravand <- cbind('Gravand','Johan',prik_Gravand[2:3])
colnames(prik_Gravand) <- c("art","id",'xcoord','ycoord')
Gravand_johan <- prik_Gravand

## Samlet Gravand
samlet_Gravand <- rbind(Gravand_mads,Gravand_rune,Gravand_jonas,Gravand_johan)
str(samlet_Gravand)
head(samlet_Gravand)

## Alles prik for Strandskade
# Mads
prik_Strandskade <- read.csv("G:/Vadehavet/Alle_prik_csv/strandskade_Mads.csv", header = TRUE)
prik_Strandskade <- cbind('Strandskade','Mads',prik_Strandskade[2:3])
colnames(prik_Strandskade) <- c("art","id",'xcoord','ycoord')
Strandskade_mads <- prik_Strandskade
head(Strandskade_mads)

# Rune
prik_Strandskade <- read.csv("G:/Vadehavet/Alle_prik_csv/Strandskade_Rune.csv", header = TRUE)
prik_Strandskade <- cbind('Strandskade','Rune',prik_Strandskade[2:3])
colnames(prik_Strandskade) <- c("art","id",'xcoord','ycoord')
Strandskade_rune <- prik_Strandskade

# Jonas
prik_Strandskade <- read.csv("G:/Vadehavet/Alle_prik_csv/Strandskade_Jonas.csv", header = TRUE)
prik_Strandskade <- cbind('Strandskade','Jonas',prik_Strandskade[2:3])
colnames(prik_Strandskade) <- c("art","id",'xcoord','ycoord')
Strandskade_jonas <- prik_Strandskade

# Johan
prik_Strandskade <- read.csv("G:/Vadehavet/Alle_prik_csv/Strandskade_Johan.csv", header = TRUE)
prik_Strandskade <- cbind('Strandskade','Johan',prik_Strandskade[2:3])
colnames(prik_Strandskade) <- c("art","id",'xcoord','ycoord')
Strandskade_johan <- prik_Strandskade

## Samlet Strandskade
samlet_Strandskade <- rbind(Strandskade_mads,Strandskade_rune,Strandskade_jonas,Strandskade_johan)
str(samlet_Strandskade)
head(samlet_Strandskade)

## Alles prik for Li.kobbersneppe
# Mads
prik_Li.kobbersneppe <- read.csv("G:/Vadehavet/Alle_prik_csv/li.kobbersneppe_Mads.csv", header = TRUE)
prik_Li.kobbersneppe <- cbind('Li.kobbersneppe','Mads',prik_Li.kobbersneppe[2:3])
colnames(prik_Li.kobbersneppe) <- c("art","id",'xcoord','ycoord')
Li.kobbersneppe_mads <- prik_Li.kobbersneppe
head(Li.kobbersneppe_mads)

# Rune
prik_Li.kobbersneppe <- read.csv("G:/Vadehavet/Alle_prik_csv/Li.kobbersneppe_Rune.csv", header = TRUE)
prik_Li.kobbersneppe <- cbind('Li.kobbersneppe','Rune',prik_Li.kobbersneppe[2:3])
colnames(prik_Li.kobbersneppe) <- c("art","id",'xcoord','ycoord')
Li.kobbersneppe_rune <- prik_Li.kobbersneppe

# Jonas
prik_Li.kobbersneppe <- read.csv("G:/Vadehavet/Alle_prik_csv/Li.kobbersneppe_Jonas.csv", header = TRUE)
prik_Li.kobbersneppe <- cbind('Li.kobbersneppe','Jonas',prik_Li.kobbersneppe[2:3])
colnames(prik_Li.kobbersneppe) <- c("art","id",'xcoord','ycoord')
Li.kobbersneppe_jonas <- prik_Li.kobbersneppe

# Johan
prik_Li.kobbersneppe <- read.csv("G:/Vadehavet/Alle_prik_csv/Li.kobbersneppe_Johan.csv", header = TRUE)
prik_Li.kobbersneppe <- cbind('Li.kobbersneppe','Johan',prik_Li.kobbersneppe[2:3])
colnames(prik_Li.kobbersneppe) <- c("art","id",'xcoord','ycoord')
Li.kobbersneppe_johan <- prik_Li.kobbersneppe

## Samlet Li.kobbersneppe
samlet_Li.kobbersneppe <- rbind(Li.kobbersneppe_mads,Li.kobbersneppe_rune,Li.kobbersneppe_jonas,Li.kobbersneppe_johan)
str(samlet_Li.kobbersneppe)
head(samlet_Li.kobbersneppe)

## Alles prik for Klyde
# Mads
prik_Klyde <- read.csv("G:/Vadehavet/Alle_prik_csv/klyde_Mads.csv", header = TRUE)
prik_Klyde <- cbind('Klyde','Mads',prik_Klyde[2:3])
colnames(prik_Klyde) <- c("art","id",'xcoord','ycoord')
Klyde_mads <- prik_Klyde
head(Klyde_mads)

# Rune
prik_Klyde <- read.csv("G:/Vadehavet/Alle_prik_csv/Klyde_Rune.csv", header = TRUE)
prik_Klyde <- cbind('Klyde','Rune',prik_Klyde[2:3])
colnames(prik_Klyde) <- c("art","id",'xcoord','ycoord')
Klyde_rune <- prik_Klyde

# Jonas
prik_Klyde <- read.csv("G:/Vadehavet/Alle_prik_csv/Klyde_Jonas.csv", header = TRUE)
prik_Klyde <- cbind('Klyde','Jonas',prik_Klyde[2:3])
colnames(prik_Klyde) <- c("art","id",'xcoord','ycoord')
Klyde_jonas <- prik_Klyde

# Johan
prik_Klyde <- read.csv("G:/Vadehavet/Alle_prik_csv/Klyde_Johan.csv", header = TRUE)
prik_Klyde <- cbind('Klyde','Johan',prik_Klyde[2:3])
colnames(prik_Klyde) <- c("art","id",'xcoord','ycoord')
Klyde_johan <- prik_Klyde

## Samlet Klyde
samlet_Klyde <- rbind(Klyde_mads,Klyde_rune,Klyde_jonas,Klyde_johan)
str(samlet_Klyde)
head(samlet_Klyde)

## Alles prik for Vibe
# Mads
prik_Vibe <- read.csv("G:/Vadehavet/Alle_prik_csv/vibe_Mads.csv", header = TRUE)
prik_Vibe <- cbind('Vibe','Mads',prik_Vibe[2:3])
colnames(prik_Vibe) <- c("art","id",'xcoord','ycoord')
Vibe_mads <- prik_Vibe
head(Vibe_mads)

# Rune
prik_Vibe <- read.csv("G:/Vadehavet/Alle_prik_csv/Vibe_Rune.csv", header = TRUE)
prik_Vibe <- cbind('Vibe','Rune',prik_Vibe[2:3])
colnames(prik_Vibe) <- c("art","id",'xcoord','ycoord')
Vibe_rune <- prik_Vibe

# Jonas
prik_Vibe <- read.csv("G:/Vadehavet/Alle_prik_csv/Vibe_Jonas.csv", header = TRUE)
prik_Vibe <- cbind('Vibe','Jonas',prik_Vibe[2:3])
colnames(prik_Vibe) <- c("art","id",'xcoord','ycoord')
Vibe_jonas <- prik_Vibe

# Johan
prik_Vibe <- read.csv("G:/Vadehavet/Alle_prik_csv/Vibe_Johan.csv", header = TRUE)
prik_Vibe <- cbind('Vibe','Johan',prik_Vibe[2:3])
colnames(prik_Vibe) <- c("art","id",'xcoord','ycoord')
Vibe_johan <- prik_Vibe
Vibe_johan

## Samlet Vibe
samlet_Vibe <- rbind(Vibe_mads,Vibe_rune,Vibe_jonas,Vibe_johan)
str(samlet_Vibe)
head(samlet_Vibe)

## Lav særskilte histogrammer
plot(samlet_Ryle$id,ylim=c(0,600))
plot(samlet_Gravand$id,ylim=c(0,200))
plot(samlet_Li.kobbersneppe$id,ylim=c(0,600))
plot(samlet_Strandskade$id,ylim=c(0,200))
plot(samlet_Klyde$id,ylim=c(0,200))
plot(samlet_Vibe$id,ylim=c(0,200))

##### Samlet alle arter alle personer prik
Alle_samlet <- rbind(samlet_Gravand,samlet_Ryle,samlet_Li.kobbersneppe,samlet_Strandskade,
                     samlet_Klyde,samlet_Vibe)
head(Alle_samlet)

write.csv(Alle_samlet, file = 'G:/Vadehavet/Alle_prik_csv/Alle_prik.csv')


################ Lav simpelt grupperet barplot ###
barplot( table(Alle_samlet$id, Alle_samlet$art),
         legend = levels(Alle_samlet$id),           
         beside = TRUE,
         names.arg=c('Shelduck','Dunlin','Bar-tailed Godwit','Oystercatcher'
                     ,'Avocet','Northern Lapwing'))  

mtext("Species", side=1, cex=1.5, line=1.5, outer=TRUE)   
mtext("Absolute counted number", side=2, cex=1.5, line=1.5, outer=TRUE)
mtext("Precision between operators", side=3, cex=1.5, line=1.5, outer=TRUE)

##### Subset efter art og person
Li.kobbersneppe <- rbind(length(Li.kobbersneppe_johan$art),length(Li.kobbersneppe_jonas$art),
                         length(Li.kobbersneppe_mads$art),length(Li.kobbersneppe_rune$art))
Gravand <- rbind(length(Gravand_johan$art),length(Gravand_jonas$art),
                 length(Gravand_mads$art),length(Gravand_rune$art))
Ryle <- rbind(length(Ryle_johan$art),length(Ryle_jonas$art),
              length(Ryle_mads$art),length(Ryle_rune$art))
Strandskade <- rbind(length(Strandskade_johan$art),length(Strandskade_jonas$art),
                     length(Strandskade_mads$art),length(Strandskade_rune$art))
Vibe <- rbind(length(Vibe_johan$art),length(Vibe_jonas$art),
              length(Vibe_mads$art),length(Vibe_rune$art))
Klyde <- rbind(length(Klyde_johan$art),length(Klyde_jonas$art),
               length(Klyde_mads$art),length(Klyde_rune$art))
Navne <- c('Johan','Jonas','Mads','Rune')
Alle_prik <- cbind.data.frame(Navne,Gravand,Ryle,Li.kobbersneppe,Strandskade,Vibe,Klyde)
colnames(Alle_prik) <- c("Navne","Gravand", "Ryle","Li.kobbersneppe","Strandskade","Vibe","Klyde")
Alle_prik

## find mean, var og std.err
# først definer funktioner
std <- function(x) sd(x)/sqrt(length(x))

std.mean <- function(x)  x/mean(x)

std.mean(Alle_prik$Gravand)
std.mean(Alle_prik$Ryle)
std.mean(Alle_prik$Li.kobbersneppe)

Alle_prik$Gravand/mean(Alle_prik$Gravand)

prik_mean <- rbind(mean(Alle_prik$Gravand),
                   mean(Alle_prik$Ryle),
                   mean(Alle_prik$Li.kobbersneppe),
                   mean(Alle_prik$Strandskade),
                   mean(Alle_prik$Klyde),
                   mean(Alle_prik$Vibe))
prik_mean

prik_var <- rbind(var(Alle_prik$Gravand),var(Alle_prik$Ryle),var(Alle_prik$Li.kobbersneppe),
                   var(Alle_prik$Strandskade),var(Alle_prik$Klyde),var(Alle_prik$Vibe))
prik_var
prik_std <- rbind(std(Alle_prik$Gravand),std(Alle_prik$Ryle),std(Alle_prik$Li.kobbersneppe),
      std(Alle_prik$Strandskade),std(Alle_prik$Klyde),std(Alle_prik$Vibe))
prik_conf <- 1.96*prik_std
prik_conf

arter <- c("Shelduck","Dunlin","Bar-tailed Godwit","Oystercatcher"
           ,"Avocet","Northern Lapwing")

prik_mean_var_conf <- cbind.data.frame(arter,prik_mean,prik_var,prik_std,prik_conf)
colnames(prik_mean_var_conf) <- c('arter','mean','var','std','conf')
prik_mean_var_conf

################ Lav simpelt grupperet barplot med standardiseret mean (obs-mean(x))/obs ###
Alle_prik
prik_std.mean <- rbind((Alle_prik$Gravand-mean(Alle_prik$Gravand))/Alle_prik$Gravand,
                   (Alle_prik$Ryle-mean(Alle_prik$Ryle))/Alle_prik$Ryle,
                   (Alle_prik$Li.kobbersneppe-mean(Alle_prik$Li.kobbersneppe))/Alle_prik$Li.kobbersneppe,
                   (Alle_prik$Strandskade-mean(Alle_prik$Strandskade))/Alle_prik$Strandskade,
                   (Alle_prik$Klyde-mean(Alle_prik$Klyde))/Alle_prik$Vibe,
                   (Alle_prik$Vibe-mean(Alle_prik$Vibe))/Alle_prik$Klyde)
prik_std.mean
################ Lav simpelt grupperet barplot med standardiseret mean (obs/mean(x)) ###
prik_std.mean <- rbind((Alle_prik$Gravand/mean(Alle_prik$Gravand)),
                       (Alle_prik$Ryle/mean(Alle_prik$Ryle)),
                       (Alle_prik$Li.kobbersneppe/mean(Alle_prik$Li.kobbersneppe)),
                       (Alle_prik$Strandskade/mean(Alle_prik$Strandskade)),
                       (Alle_prik$Klyde/mean(Alle_prik$Klyde)),
                       (Alle_prik$Vibe/mean(Alle_prik$Vibe)))

colnames(prik_std.mean) <- c('Johan','Jonas','Mads','Rune')
rownames(prik_std.mean) <- c('Shelduck','Dunlin','Bar-tailed Godwit','Oystercatcher'
                    ,'Avocet','Northern Lapwing')
prik_std.mean

par(mfrow=c(1, 1), mar=c(1, 1, 1, 8),oma=c(5,5,3,2))
barplot(t(prik_std.mean),           
        beside = TRUE,
        legend.text = c('Johan','Jonas','Mads','Rune'),
        args.legend = list(x ='topright', inset=c(-0.18,0)),
        names.arg=c('Shelduck','Dunlin','Bar-tailed Godwit','Oystercatcher'
                    ,'Avocet','Northern Lapwing'))  

mtext("Species", side=1, cex=1.5, line=2, outer=TRUE)   
mtext("Standardized counts", side=2, cex=1.5, line=2., outer=TRUE)
mtext("Precision between operators", side=3, cex=1.5, line=1, outer=TRUE)


## Lav barplot
prik_bar <- barplot(prik_mean_var_conf$mean, ylim=c(0,450),
                    names.arg=c('Shelduck','Dunlin','Bar-tailed Godwit','Oystercatcher'
                                ,'Avocet','Northern Lapwing'))

#confi
arrows(prik_bar, prik_mean_var_conf$mean+prik_mean_var_conf$conf,
       prik_bar, prik_mean_var_conf$mean-prik_mean_var_conf$conf, code = 3, angle = 90, length = 0.05)

mtext("Species", side=1, cex=1.5, line=1.5, outer=TRUE)   
mtext("Absolute counted number", side=2, cex=1.5, line=1.5, outer=TRUE)
mtext("Precision between operators", side=3, cex=1.5, line=1.5, outer=TRUE)

################# Spatial join ########################
Geo_prik <- read.csv("G:/Vadehavet/GIS_projekts/projekter_prik/sammenlign.udprik/Spatial_join/Geo_geo.csv", header = TRUE)
Geo <- cbind.data.frame(Geo_prik$Join_Count,Geo_prik$art,Geo_prik$id)
colnames(Geo) <- c("count","art",'id')

## erstat værdier >4 med 4
Geo <- cbind(apply(Geo[1], 2, function(x) ifelse(x > 4, 4, x)), Geo[,2:3])
head(Geo)

## Subset
Geo_gravand <- Geo[Geo$art == "Gravand", ]
Geo_ryle <- Geo[Geo$art == "Ryle", ]
Geo_strandskade <- Geo[Geo$art == "Strandskade", ]
Geo_klyde <- Geo[Geo$art == "Klyde", ]
Geo_vibe <- Geo[Geo$art == "Vibe", ]
Geo_li.kobbersneppe <- Geo[Geo$art == "Li.kobbersneppe", ]

## Omregn til procenter 
Geo_percent <- cbind(
  (sum(Geo_gravand$count)/length(Geo_gravand$count))/4*100,
  (sum(Geo_ryle$count)/length(Geo_ryle$count))/4*100,
  (sum(Geo_li.kobbersneppe$count)/length(Geo_li.kobbersneppe$count))/4*100,
  (sum(Geo_strandskade$count)/length(Geo_strandskade$count))/4*100,
  (sum(Geo_klyde$count)/length(Geo_klyde$count))/4*100,
  (sum(Geo_vibe$count)/length(Geo_vibe$count))/4*100
  )

colnames(Geo_percent) <- c('Shelduck','Dunlin','Bar-tailed Godwit','Oystercatcher',
                           'Avocet','Northern Lapwing')
Geo_percent

## find confi
std <- function(x) sd(x)/sqrt(length(x))
st.err.mean <- function(x) sd(x)/sqrt(length(x)/4)
conf <- function(x) 1.96*x
Geo_std <- cbind(
  std(Geo_gravand$count)/4*100,
  std(Geo_ryle$count)/4*100,
  std(Geo_strandskade$count)/4*100,
  std(Geo_klyde$count)/4*100,
  std(Geo_vibe$count)/4*100,
  std(Geo_li.kobbersneppe$count)/4*100)

Geo_confi <- conf(Geo_std)
Geo_confi

#Find confi for mean antal pr art
Geo_std.mean <- cbind(
  st.err.mean(Geo_gravand$count)/4*200,
  st.err.mean(Geo_ryle$count)/4*100,
  st.err.mean(Geo_strandskade$count)/4*100,
  st.err.mean(Geo_klyde$count)/4*100,
  st.err.mean(Geo_vibe$count)/4*100,
  st.err.mean(Geo_li.kobbersneppe$count)/4*100)

Geo_confi.mean <- conf(Geo_std.mean)
Geo_confi.mean

## Lav barplot for spatial præcision
par(mfrow=c(1,1))
par(oma=c(3.5,3.5,3.5,3.5))
par(mar=c(2.5,1.2,2.5,1))

Geo_bar <- barplot(Geo_percent,ylim=c(0,100),col = "grey")

#confi
arrows(Geo_bar, Geo_percent+Geo_confi,
       Geo_bar, Geo_percent-Geo_confi, code = 3, angle = 90, length = 0.05)

mtext("Species", side=1, cex=1.5, line=1.5, outer=TRUE)   
mtext("Spatial precision (%)", side=2, cex=1.5, line=1.5, outer=TRUE)
mtext("Spatial precision between operators", side=3, cex=1.5, line=1.5, outer=TRUE)

## barplot med confi med mean pr art
Geo_bar <- barplot(Geo_percent,ylim=c(0,110),col = "grey")

#confi mean pr art
arrows(Geo_bar, Geo_percent+Geo_confi.mean,
       Geo_bar, Geo_percent-Geo_confi.mean, code = 3, angle = 90, length = 0.05)

mtext("Species", side=1, cex=1.5, line=1.5, outer=TRUE)   
mtext("Spatial precision (%)", side=2, cex=1.5, line=1.5, outer=TRUE)
mtext("Spatial precision between operators", side=3, cex=1.5, line=1.5, outer=TRUE)

barplot( table(Geo$count, Geo$art),
         legend = levels(Geo$count),           
         beside = TRUE) 


plot(Geo$art,Geo$count)


bartlett.test(count  ~ id,data = Geo)

bartlett.test(count ~ interaction(id,art), data=Geo)


# Kruskal wallis test
anova.Geo <- aov(count  ~ art,data =  Geo)
summary(anova.Geo)

plot(TukeyHSD(anova.Geo))

kruskal.test(count  ~ id,data = Geo)

shapiro.test(Geo$count)






## Normaliser data for at kunne sammenligne ##

normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

Alle_prik_norm <- cbind(
  Gravand_norm <- normalize(Alle_prik$Gravand),
  Ryle_norm <- normalize(Alle_prik$Ryle),
  Li.kobbersneppe_norm <- normalize(Alle_prik$Li.kobbersneppe),
  Strandskade_norm <- normalize(Alle_prik$Strandskade),
  Vibe_norm <- normalize(Alle_prik$Vibe),
  Klyde_norm <- normalize(Alle_prik$Klyde))

colnames(Alle_prik_norm) <- c('Gravand','Ryle','Li.kobbersneppe','Strandskade','Vibe','Klyde')
Alle_prik_norm

barplot(Alle_prik_norm,beside=T)

Alle_prik_norm <- (data.frame(Alle_prik_norm))
mean(Alle_prik_norm$Gravand)
