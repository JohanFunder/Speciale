# Indlæs alle som salmet dataframe

relasyn <- rbind.data.frame(relasyn_09_26_f1_2_bramgås,
           relasyn_09_26_f1_2_gravand,
           relasyn_09_26_f1_2_spidsand,
           relasyn_09_26_f3_4_gravand,
           relasyn_09_26_f3_4_ryle,
           relasyn_09_26_f3_4_spidsand,
           relasyn_09_26_f3_4_stormmåge,
           relasyn_09_27_RD_1_gravand,
           relasyn_09_27_RD_1_grågås,
           relasyn_09_27_RD_1_havørn,
           relasyn_09_27_RD_1_ryle,
           relasyn_09_27_RD_1_spidsand,
           relasyn_09_27_RD_2_bramgås,
           relasyn_09_27_RD_2_gravand,
           relasyn_09_27_RD_2_grågås,
           relasyn_09_27_RD_2_klyde,
           relasyn_09_27_RD_2_li.kobbersneppe,
           relasyn_09_27_RD_2_ryle,
           relasyn_09_27_RD_2_spidsand,
           relasyn_09_27_RD_2_strandskade,
           relasyn_10_03_f1_gravand,
           relasyn_10_03_f2_gravand,
           relasyn_10_03_f2_stormmåge,
           relasyn_10_03_f2_sølvhejre,
           relasyn_10_03_f3_gravand,
           relasyn_10_03_f3_ryle,
           relasyn_10_03_f3_stormmåge,
           relasyn_10_03_f3_storspove,
           relasyn_10_03_f3_sølvhejre,
           relasyn_10_03_f4_gravand,
           relasyn_10_03_f4_li.kobbersneppe,
           relasyn_10_03_f4_stormmåge,
           relasyn_10_03_f4_strandskade,
           relasyn_10_03_f4_svartbag,
           relasyn_10_04_f1_stormmåge,
           relasyn_10_04_f2_stormmåge,
           relasyn_10_04_f3_gravand,
           relasyn_10_04_f3_grågås,
           relasyn_10_04_f3_pibeand_spidsand,
           relasyn_10_04_f3_ryle,
           relasyn_10_04_f3_stormmåge,
           relasyn_10_04_f3_svane,
           relasyn_10_04_f4_bramgås,
           relasyn_10_04_f4_Dunlin,
           relasyn_10_04_f4_grågås,
           relasyn_10_04_f4_hvidklire,
           relasyn_10_04_f4_stormmåge,
           relasyn_10_04_f4_storspove,
           relasyn_10_04_f4_vibe,
           relasyn_10_04_f5_gravand,
           relasyn_10_04_f5_grågås,
           relasyn_10_04_f5_ryle,
           relasyn_10_04_f5_stormmåge,
           relasyn_10_04_f5_storspove,
           relasyn_10_04_f5_sølvhejre,
           relasyn_10_17_f1_grågås,
           relasyn_10_17_f1_ryle,
           relasyn_10_17_f1_stormmåge,
           relasyn_10_17_f1_storspove,
           relasyn_10_17_f1_strandskade,
           relasyn_10_17_f1_sølvhejre,
           relasyn_10_17_f2_pibeand,
           relasyn_10_17_f2_sølvhejre,
           relasyn_10_17_f4_pibeand,
           relasyn_10_17_f4_sølvhejre,
           relasyn_10_27_RD_bramgås,
           relasyn_10_27_RD_gravand,
           relasyn_10_27_RD_grågås,
           relasyn_10_27_RD_hjejle,
           relasyn_10_27_RD_hvidklire,
           relasyn_10_27_RD_klyde,
           relasyn_10_27_RD_li.kobbersneppe,
           relasyn_10_27_RD_pibeand,
           relasyn_10_27_RD_ryle,
           relasyn_10_27_RD_spidsand,
           relasyn_10_27_RD_storspove,
           relasyn_10_27_RD_strandskade,
           relasyn_11_14_f1_2_bramgås,
           relasyn_11_14_f1_2_gravand,
           relasyn_11_14_f1_2_stormmåge,
           relasyn_11_14_f3_gravand,
           relasyn_11_14_f3_pibeand,
           relasyn_11_14_f3_stormmåge,
           relasyn_11_14_f3_storspove,
           relasyn_11_14_f3_v_gravand,
           relasyn_11_14_f3_v_pibeand,
           relasyn_11_14_f3_v_storspove,
           relasyn_11_14_f3_v_vibe,
           relasyn_11_14_f3_vibe,
           relasyn_11_15_f1_gravand,
           relasyn_11_15_f1_klyde,
           relasyn_11_15_v_fiskehejre,
           relasyn_11_15_v_gravand,
           relasyn_11_15_v_vibe)

# Write csv med relasyn_samlet
relasyn
write.csv(relasyn, file = "G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet_relasyn_fugle_csv/relasyn_samlet.csv")


NROW(relasyn$RASTERVALU)


## Indlæs csv med dist 
relasyn_dist <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/relasyn_geo_dist.csv',header = T)
# Udskift forkerte navne
relasyn_dist$art <- gsub('Common Gulle', 'Common Gull', relasyn_dist$art)
relasyn_dist$art <- gsub('Nothern Lapwing', 'Northern Lapwing', relasyn_dist$art)
relasyn_dist$art <- gsub('Wigeon & Pin-tailed Duck', 'Wigeon', relasyn_dist$art)


####### Indlæs csv med MEAS fra linear referencing workflow 
relasyn_RASTERVALU_MEAS <- read.csv("G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/relasyn_RASTERVALU_MEAS_trim.csv",header = T)
str(relasyn_RASTERVALU_MEAS)
# Udskift forkerte navne
relasyn_RASTERVALU_MEAS$art <- gsub('Nothern Lapwing', 'Northern Lapwing', relasyn_RASTERVALU_MEAS$art)
relasyn_RASTERVALU_MEAS$art <- gsub('Wigeon & Pin-tailed Duck', 'Wigeon', relasyn_RASTERVALU_MEAS$art)


## Indlæs csv med MEAS fra linear referencing workflow ***(altudenRD)***
relasyn_RASTERVALU_MEAS_altudenRD <- read.csv("G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/relasyn_RASTERVALU_MEAS_altudenRD.csv",header = T)
str(relasyn_RASTERVALU_MEAS_altudenRD)
relasyn_RASTERVALU_MEAS_altudenRD$art <- gsub('Wigeon & Pin-tailed Duck', 'Wigeon', relasyn_RASTERVALU_MEAS_altudenRD$art)




###############################******** Barplot
library(ggplot2)
library(dplyr)
library(ggpmisc)
# set up cut-off values 
# Først fjern na værdier
relasyn_RASTERVALU_MEAS <- relasyn_RASTERVALU_MEAS[rowSums(relasyn_RASTERVALU_MEAS['RASTERVALU'] < 1.9) > 0, ]
relasyn_RASTERVALU_MEAS <- relasyn_RASTERVALU_MEAS[!is.na(relasyn_RASTERVALU_MEAS$MEAS),]
relasyn_RASTERVALU_MEAS$RASTERVALU <- ifelse(relasyn_RASTERVALU_MEAS$RASTERVALU < 0, 0, 
                                             relasyn_RASTERVALU_MEAS$RASTERVALU)
relasyn_RASTERVALU_MEAS <-relasyn_RASTERVALU_MEAS[!is.na(relasyn_RASTERVALU_MEAS$RASTERVALU),]

# Fjern afstande over 1000 m fra forlandskanten
relasyn_RASTERVALU_MEAS <- relasyn_RASTERVALU_MEAS[rowSums(relasyn_RASTERVALU_MEAS['MEAS'] < 1000) > 0, ]


#relasyn_RASTERVALU_MEAS$bin_agl <- cut(relasyn_RASTERVALU_MEAS$RASTERVALU, 
#                                   breaks=c(-0.01,0.0,0.2,0.4,0.6,0.8,1.0,5.0))
bins_agl <- c(-0.01,0.0,0.2,0.4,0.6,0.8,1.0,2.0)
agl_2 <- as.numeric(gsub("\\$|,", "", relasyn_RASTERVALU_MEAS$RASTERVALU))
labels <- gsub("(?<!^)(\\d{3})$", ",\\1", bins_agl, perl=T)
rangelabels <- paste(head(labels,-1), tail(labels,-1), sep="-")
relasyn_RASTERVALU_MEAS$bin_agl <- cut(agl_2, bins_agl, rangelabels)


bins <- seq(0, 1000, by=50)
MEAS2 <- as.numeric(gsub("\\$|,", "", relasyn_RASTERVALU_MEAS$MEAS))
labels <- gsub("(?<!^)(\\d{3})$", ",\\1", bins, perl=T)
rangelabels <- paste(head(labels,-1), tail(labels,-1), sep="-")
relasyn_RASTERVALU_MEAS$bin_MEAS <- cut(MEAS2, bins, rangelabels)

# View(relasyn_RASTERVALU_MEAS)
min(relasyn_RASTERVALU_MEAS$RASTERVALU)
max(relasyn_RASTERVALU_MEAS$RASTERVALU)
max(relasyn_RASTERVALU_MEAS$MEAS)
min(relasyn_RASTERVALU_MEAS$MEAS)
max(relasyn_RASTERVALU_MEAS$MEAS)

# Tæl nr individuals
nrow(relasyn_RASTERVALU_MEAS)

#Then using ggplot, we can plot the counts:
ggplot(data = relasyn_RASTERVALU_MEAS, 
       aes(x=bin_MEAS,fill = bin_agl)) + geom_bar(position = position_stack(reverse = TRUE),
                                                               color="grey3", width = 0.7) +
  scale_y_continuous(limits = c(0, 20000), breaks = seq(0, 20000, by = 2000)) +
  theme_bw() +
  theme(legend.text=element_text(size=13),legend.title=element_text(size=15),
        axis.text.x = element_text(angle = -45,hjust = 0, vjust = 0.5), 
        strip.text = element_text(face=4, size=8),
        legend.background = element_rect(colour = 'black', fill = 'white', 
                                         linetype='solid'),
        axis.text=element_text(size=13),
        axis.title=element_text(size = 15)) +
  labs(fill="Level to be added (m)") +
  scale_fill_manual(values = c("white",'lightgrey','darkgrey','grey45','grey35','grey25','black')) +
  theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Distance from edge of foreland") + ylab("Number of observed bird positions")





#### ***** For alt uden RD
# set up cut-off values 
# Først fjern na værdier
relasyn_RASTERVALU_MEAS_altudenRD <- relasyn_RASTERVALU_MEAS_altudenRD[!is.na(relasyn_RASTERVALU_MEAS_altudenRD$MEAS),]
relasyn_RASTERVALU_MEAS_altudenRD$RASTERVALU <- ifelse(relasyn_RASTERVALU_MEAS_altudenRD$RASTERVALU < 0, 0, 
                                             relasyn_RASTERVALU_MEAS_altudenRD$RASTERVALU)
relasyn_RASTERVALU_MEAS_altudenRD <-relasyn_RASTERVALU_MEAS_altudenRD[!is.na(relasyn_RASTERVALU_MEAS_altudenRD$RASTERVALU),]



#relasyn_RASTERVALU_MEAS_altudenRD$bin_agl <- cut(relasyn_RASTERVALU_MEAS_altudenRD$RASTERVALU, 
#                                   breaks=c(-0.01,0.0,0.2,0.4,0.6,0.8,1.0,5.0))
bins_agl <- c(-0.01,0.0,0.2,0.4,0.6,0.8,1.0,5.0)
agl_2 <- as.numeric(gsub("\\$|,", "", relasyn_RASTERVALU_MEAS_altudenRD$RASTERVALU))
labels <- gsub("(?<!^)(\\d{3})$", ",\\1", bins_agl, perl=T)
rangelabels <- paste(head(labels,-1), tail(labels,-1), sep="-")
relasyn_RASTERVALU_MEAS_altudenRD$bin_agl <- cut(agl_2, bins_agl, rangelabels)


bins <- seq(0, 2050, by=50)
MEAS2 <- as.numeric(gsub("\\$|,", "", relasyn_RASTERVALU_MEAS_altudenRD$MEAS))
labels <- gsub("(?<!^)(\\d{3})$", ",\\1", bins, perl=T)
rangelabels <- paste(head(labels,-1), tail(labels,-1), sep="-")
relasyn_RASTERVALU_MEAS_altudenRD$bin_MEAS_altudenRD <- cut(MEAS2, bins, rangelabels)

# View(relasyn_RASTERVALU_MEAS_altudenRD)
min(relasyn_RASTERVALU_MEAS_altudenRD$RASTERVALU)
max(relasyn_RASTERVALU_MEAS_altudenRD$MEAS)


#Then using ggplot, we can plot the counts:
ggplot(data = relasyn_RASTERVALU_MEAS_altudenRD, 
       aes(x=bin_MEAS_altudenRD,fill = bin_agl)) + geom_bar(position = position_stack(reverse = TRUE),
                                                  color="grey3", width = 0.7) +
  scale_y_continuous(limits = c(0, 2000), breaks = seq(0, 2000, by = 200)) +
  theme_bw() +
  theme(axis.text.x = element_text(angle = -45,hjust = 0, vjust = 0.5), strip.text = element_text(face=4, size=8),
        legend.background = element_rect(colour = 'black', fill = 'white', 
                                         linetype='solid')) +
  labs(fill="Level to be added (m)") +
  scale_fill_manual(values = c("white",'lightgrey','darkgrey','grey45','grey35','grey15','grey2')) +
  theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Distance from edge of foreland") + ylab("Number of observed birds")





#### Lav boxplots med median afstande for hver art
library('ggplot2')
p <- ggplot(relasyn_RASTERVALU_MEAS, aes(x=art, y=RASTERVALU)) + 
  geom_boxplot() + ylim(0,3)
p
p + coord_flip()

# Boxplots med afstande, der ikke overgår 600 m afstand til forlandskanten
library(dplyr)
relasyn_dist_600m <- relasyn_RASTERVALU_MEAS

unique(relasyn_RASTERVALU_MEAS$art)
unique(relasyn_dist_600m$art)
relasyn_dist_600m <- relasyn_dist_600m[rowSums(relasyn_dist_600m['MEAS'] < 600) > 0, ]
# Definer alle inden for 600 m
relasyn_dist_600m_org <- relasyn_dist_600m
# Fjern alle værdier under 0.1 fra datasættet
relasyn_dist_600m <- relasyn_dist_600m[rowSums(relasyn_dist_600m['RASTERVALU'] > 0.1) > 0, ]
# Fjern svane og sildemåge fra datasæt
relasyn_dist_600m = filter(relasyn_dist_600m, art != "Whopper Swan")
relasyn_dist_600m_org = filter(relasyn_dist_600m_org, art != "Whopper Swan")
relasyn_dist_600m = filter(relasyn_dist_600m, art != "Black-backed Gull")
relasyn_dist_600m_org = filter(relasyn_dist_600m_org, art != "Black-backed Gull")

relasyn_dist_600m <- data.frame(relasyn_dist_600m)

str(relasyn_dist_600m)

# Reorder artsrækkefølgen
# Reorder dataframe
relasyn_dist_600m$art <- factor(relasyn_dist_600m$art, 
                                levels=c("Common Gull", "Egret", "Barnacle Goose",
                                         "Greylag Goose","Pin-tailed Duck","Wigeon",
                                         "Shelduck","Oystercatcher","Curlew",
                                         "Avocet",
                                         "Northern Lapwing", "Golden Plover",
                                         "Greenshank","Dunlin"))


unique(relasyn_dist_600m$art)
# Sæt max RASTERVALU på 1.9 m
relasyn_dist_600m_trim <- relasyn_dist_600m[rowSums(relasyn_dist_600m['RASTERVALU'] < 1.9) > 0, ]
nrow(relasyn_dist_600m_trim)
#View(relasyn_dist_600m)
p <- ggplot(relasyn_dist_600m_trim, aes(x=art, y=RASTERVALU)) + 
  geom_boxplot(fill='grey90', color="grey3",
               outlier.size = 1.5,
               outlier.shape = 1) +
ylim(0,2.) +
  theme_bw() +
  theme(axis.text=element_text(size=13),
        axis.title=element_text(size = 15)) + 
  xlab("Waterbird species") + ylab("Level to be added for visibility (m)")
#  geom_signif(comparisons = list(c("Avocet", "Bar-tailed Godwit")), size = 0.8,
#              map_signif_level=TRUE,test = "wilcox.test",y_position = 3.5) +
#  geom_signif(comparisons = list(c("Curlew", "Dunlin")), size = 0.8,
#              map_signif_level=TRUE,test = "wilcox.test",y_position = 3.5) +
#  geom_signif(comparisons = list(c("Greenshank", "Golden Plover")), size = 0.8,
#              map_signif_level=TRUE,test = "wilcox.test",y_position = 3.5) +
#  geom_signif(comparisons = list(c("Oystercatcher", "Common Gull")), size = 0.8,
#              map_signif_level=TRUE,test = "wilcox.test",y_position = 3.8) +
#  geom_signif(comparisons = list(c("Wigeon & Pin-tailed Duck", "Wigeon")), size = 0.8,
#              map_signif_level=TRUE,test = "wilcox.test",y_position = 3.5) +
#  geom_signif(comparisons = list(c("Shelduck", "Wigeon")), size = 0.8,
#              map_signif_level=TRUE,test = "wilcox.test",y_position = 3.5)

p + coord_flip()






#####*** Barplot
### Brug funktion til udregning af mean og CI
alle_relasyn_mean_ci <- summarySE(relasyn_dist_600m, measurevar="RASTERVALU", 
                          groupvars=c("art"))
alle_relasyn_mean_ci

# Use 95% confidence intervals instead of SEM
p <- ggplot(alle_relasyn_mean_ci, aes(x=art, y=RASTERVALU)) + 
  geom_bar(position=position_dodge(width = .7), stat="identity",
           colour="black", fill="grey85", # Use black outlines,
           size=.5, width = .6) +      # Thinner lines) +
  geom_errorbar(aes(ymin=RASTERVALU-ci, ymax=RASTERVALU+ci),
                width=.2,                    # Width of the error bars
                position=position_dodge(.7)) +
  xlab("Waterbird species") +
  ylab("level to be added for visibility (m)") +
  scale_fill_manual(values = c("white",'lightgrey','darkgrey','grey45','grey25'),
                    name="Field location", # Legend label, use darker colors
                    breaks=c("d", "c","e", "a", "b"),
                    labels=c("Ribe Kammersluse (N)","Kærkælling Klint",
                             "Ballum Sluse","Ribe Kammersluse (S)",
                             "Ribe Kammersluse (S)")) +
  theme_bw() + ylim(-0.06,1.) +
  theme(axis.text.x = element_text(angle = -45, hjust = 0))
p
p + coord_flip()


########################### Gør det med psoudomedian
library(broom)
## Definer først funktion for at køre alle arter på en gang!

# Empty list to hold our results
L <- list()
for (i in unique(relasyn_dist_600m$art)) {
  # Run Wilcoxon test, "tidy" the result, and assign it to element i of L
  L[[i]] <- tidy(wilcox.test(relasyn_dist_600m[relasyn_dist_600m$art == i,
                                                     "RASTERVALU"],
                             conf.int = TRUE, conf.level = 0.95))
}
L
# Combine the results
results <- do.call(rbind, L)  # Same as rbind(L[[1]], L[[2]], ...)
# Add a column identifying the subsets
results$art <- names(L)
results <- data.frame(results)
results = results[!is.na(results$estimate), ]
#View(results)


# Tegn nu barplots
p <- ggplot(results, aes(x=art, y=estimate)) + 
  geom_bar(position=position_dodge(width = .7), stat="identity",
           colour="black", fill="grey85", # Use black outlines,
           size=.5, width = .6) +      # Thinner lines) +
  geom_errorbar(aes(ymin=conf.low, ymax=conf.high),
                width=.2, size=0.6,                    # Width of the error bars
                position=position_dodge(.7)) +
  xlab("Waterbird species") +
  ylab("level to be added for visibility (m)") +
  scale_fill_manual(values = c("white",'lightgrey','darkgrey','grey45','grey25'),
                    name="Field location", # Legend label, use darker colors
                    breaks=c("d", "c","e", "a", "b"),
                    labels=c("Ribe Kammersluse (N)","Kærkælling Klint",
                             "Ballum Sluse","Ribe Kammersluse (S)",
                             "Ribe Kammersluse (S)")) +
  theme_bw() + ylim(-0.06,1.) +
  theme(axis.text.x = element_text(angle = -45, hjust = 0)) +
  theme(plot.margin = margin(0.1, 1.8, 0.1, 0.1, "cm"))

p



####################***************** Prøv nu med bootstrap for median *****##########
# Først lav vektorer for resultater
Table1 <- unique(relasyn_dist_600m$art)
Table1 <- data.frame(Table1)
colnames(Table1) <- c('art')
Table1$LowerCI <- rep( NA, length(Table1) )
Table1$UpperCI <- rep( NA, nrow(Table1) )
Table1$median <- rep( NA, nrow(Table1) )
Table1

#Now you can loop over your habitats and store the results into the appropriate columns:
fun.boot <- function(x, i) {median(x[i])}
library(boot)
  for( i in Table1$art )  {
    bird.boot <- boot(data = relasyn_dist_600m$RASTERVALU[relasyn_dist_600m$art==i],
                      statistic = function(x,i) median(x[i]),R = 10000)
    bird.ci <- boot.ci(boot.out = bird.boot, conf = 0.95, type = c('perc'))
    Table1$LowerCI[Table1$art==i] <- bird.ci$percent[4]
    Table1$UpperCI[Table1$art==i] <- bird.ci$percent[5]
    Table1$median[Table1$art==i] <- bird.boot$t0
  }

Table1


# Tegn nu barplots med bootstrap!!!
p <- ggplot(Table1, aes(x=art, y=median)) + 
  geom_bar(position=position_dodge(width = .7), stat="identity",
           colour="black", fill="grey85", # Use black outlines,
           size=.5, width = .6) +      # Thinner lines) +
  geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI),
                width=.2, size=0.6,                    # Width of the error bars
                position=position_dodge(.7)) +
  xlab("Waterbird species") +
  ylab("level to be added for visibility (m)") +
  scale_fill_manual(values = c("white",'lightgrey','darkgrey','grey45','grey25'),
                    name="Field location", # Legend label, use darker colors
                    breaks=c("d", "c","e", "a", "b"),
                    labels=c("Ribe Kammersluse (N)","Kærkælling Klint",
                             "Ballum Sluse","Ribe Kammersluse (S)",
                             "Ribe Kammersluse (S)")) +
  theme_bw() + ylim(-0.06,1.) +
  theme(axis.text.x = element_text(angle = -45, hjust = 0)) +
  theme(plot.margin = margin(0.1, 1.8, 0.1, 0.1, "cm"))

p

####################***************** Prøv nu med bootstrap for MEAN *****##########


relasyn_dist_600m_body$RASTERVALU

# Først lav vektorer for resultater
Table2 <- unique(relasyn_dist_600m$art)
Table2 <- data.frame(Table2)
colnames(Table2) <- c('art')
Table2$LowerCI <- rep( NA, length(Table2) )
Table2$UpperCI <- rep( NA, nrow(Table2) )
Table2$mean <- rep( NA, nrow(Table2) )
Table2

#Now you can loop over your habitats and store the results into the appropriate columns:
fun.boot <- function(x, i) {mean(x[i])}
library(boot)
for( i in Table2$art )  {
  bird.boot <- boot(data = relasyn_dist_600m$RASTERVALU[relasyn_dist_600m$art==i],
                    statistic = function(x,i) mean(x[i]),R = 10000)
  bird.ci <- boot.ci(boot.out = bird.boot, conf = 0.95, type = c('perc'))
  Table2$LowerCI[Table2$art==i] <- bird.ci$percent[4]
  Table2$UpperCI[Table2$art==i] <- bird.ci$percent[5]
  Table2$mean[Table2$art==i] <- bird.boot$t0
}

Table2


# Tegn nu barplots med bootstrap!!!
p <- ggplot(Table2, aes(x=art, y=mean)) + 
  geom_bar(position=position_dodge(width = .7), stat="identity",
           colour="black", fill="grey85", # Use black outlines,
           size=.5, width = .6) +      # Thinner lines) +
  geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI),
                width=.2, size=0.6,                    # Width of the error bars
                position=position_dodge(.7)) +
  xlab("Waterbird species") +
  ylab("level to be added for visibility (m)") +
  scale_fill_manual(values = c("white",'lightgrey','darkgrey','grey45','grey25'),
                    name="Field location", # Legend label, use darker colors
                    breaks=c("d", "c","e", "a", "b"),
                    labels=c("Ribe Kammersluse (N)","Kærkælling Klint",
                             "Ballum Sluse","Ribe Kammersluse (S)",
                             "Ribe Kammersluse (S)")) +
  theme_bw() + ylim(-0.06,1.) +
  theme(axis.text.x = element_text(angle = -45, hjust = 0)) +
  theme(plot.margin = margin(0.1, 1.8, 0.1, 0.1, "cm"))

p






##########***** Indlæs vektor med body heights
arter <- c('Dunlin','Greenshank','Avocet','Redknot',
                 'Golden Plover','Northern Lapwing', 
                 'Bar-tailed Godwit','Oystercatcher',
                 'Curlew','Shelduck','Wigeon','Pin-tailed Duck',
                 'Common Gull','Greylag Goose',
                 'Barnacle Goose','Grey Heron','Egret')
Body_height <- c(0.10,0.20,0.30,0.20,0.20,0.20,0.30,0.20,0.40,0.30,0.20,
                 0.20,0.30,0.40,0.40,0.50,0.50)
Body_height <- cbind.data.frame(arter,Body_height)

Body_height
unique(relasyn_dist_600m$art)
unique(arter)

# Combine bodyheight med RASTERVALU
relasyn_dist_600m_body <- merge(relasyn_dist_600m, Body_height, 
                                 by=0, all.x=TRUE, all.y=FALSE, by.x = "art", by.y = "arter",
                                 sort = TRUE)  # merge by row names (by=0 or by="row.names")
# Substract RASTERVALU by Bodyheight
relasyn_dist_600m_body$RASTERVALU_Body <- (relasyn_dist_600m_body$RASTERVALU - relasyn_dist_600m_body$Body_height)
# Sæt RASTERVALU to min. 0
relasyn_dist_600m_body$RASTERVALU_Body[relasyn_dist_600m_body$RASTERVALU_Body<0.0001] <- 0.0001
#View(relasyn_dist_600m_body)
min(relasyn_dist_600m_body$RASTERVALU_Body)
relasyn_dist_600m_body

# Kør nu bootstrap på datasættet -> først for RASTERVALU
Table2 <- unique(relasyn_dist_600m_body$art)
Table2 <- data.frame(Table2)
colnames(Table2) <- c('art')
Table2$LowerCI <- rep( NA, length(Table2) )
Table2$UpperCI <- rep( NA, nrow(Table2) )
Table2$mean <- rep( NA, nrow(Table2) )
Table2$ID <- rep( 'Original', nrow(Table2) )
Table2

unique(relasyn_dist_600m_body$art)

#Now you can loop over your habitats and store the results into the appropriate columns:
library(boot)
for( i in Table2$art )  {
  bird.boot <- boot(data = relasyn_dist_600m_body$RASTERVALU[relasyn_dist_600m_body$art==i],
                    statistic = function(x,i) mean(x[i]),R = 10000)
  bird.ci <- boot.ci(boot.out = bird.boot, conf = 0.95, type = c('perc'))
  Table2$LowerCI[Table2$art==i] <- bird.ci$percent[4]
  Table2$UpperCI[Table2$art==i] <- bird.ci$percent[5]
  Table2$median[Table2$art==i] <- bird.boot$t0
}

# Kør nu bootstrap på datasættet -> så for RASTERVALU_Body
# Prøv at fjerne Egret fra datasæt før kørsel af 'bca'
relasyn_dist_600m_body = filter(relasyn_dist_600m_body, art != "Egret")  %>%
  droplevels
relasyn_dist_600m_body = filter(relasyn_dist_600m_body, art != "Oystercatcher")  %>%
  droplevels
relasyn_dist_600m_body = filter(relasyn_dist_600m_body, art != "Dunlin")  %>%
  droplevels
unique(relasyn_dist_600m_body$art)


Table3

Table3 <- unique(relasyn_dist_600m_body$art)
Table3 <- data.frame(Table3)
colnames(Table3) <- c('art')
Table3$LowerCI <- rep( NA, length(Table3) )
Table3$UpperCI <- rep( NA, nrow(Table3) )
Table3$mean <- rep( NA, nrow(Table3) )
Table3$ID <- rep( 'Body_cor', nrow(Table3) )
Table3
#Now you can loop over your habitats and store the results into the appropriate columns:
library(boot)
for( i in Table3$art )  {
  bird.boot <- boot(data = relasyn_dist_600m_body$RASTERVALU_Body[relasyn_dist_600m_body$art==i],
                    statistic = function(x,i) mean(x[i]),R = 10000)
  bird.ci <- boot.ci(boot.out = bird.boot, conf = 0.95, type = c("perc"))
  Table3$LowerCI[Table3$art==i] <- bird.ci$percent[4]
  Table3$UpperCI[Table3$art==i] <- bird.ci$percent[5]
  Table3$mean[Table3$art==i] <- bird.boot$t0
}


# Gør det med BCa bootstrap
#install.packages("bootBCa", repos="http://R-Forge.R-project.org")
library('bootBCa')

for( i in Table2$art )  {
  bird.boot <- BCa(relasyn_dist_600m_body$RASTERVALU[relasyn_dist_600m_body$art==i],0.01,mean,
                   alpha = c(0.025, 0.975),M = 25000, Mlimit = 1500000)
  bird.boot <- cbind.data.frame(bird.boot) 
  
  Table2$LowerCI[Table2$art==i] <- bird.boot[4,]
  Table2$UpperCI[Table2$art==i] <- bird.boot[5,]
  Table2$mean[Table2$art==i] <- bird.boot[3,]
}
Table2


for( i in Table3$art )  {
  bird.boot <- BCa(relasyn_dist_600m_body$RASTERVALU_Body[relasyn_dist_600m_body$art==i],0.01,mean,
                   alpha = c(0.025, 0.975))
  bird.boot <- cbind.data.frame(bird.boot) 
  
  Table3$LowerCI[Table3$art==i] <- bird.boot[4,]
  Table3$UpperCI[Table3$art==i] <- bird.boot[5,]
  Table3$mean[Table3$art==i] <- bird.boot[3,]
}
Table3


unique(relasyn_dist_600m_body$art)


# Combine tables til samlet med og uden body korrektion
Final_table <- rbind(Table2[1:5],Table3[1:5])

# Reorder dataframe
Final_table$ID <- factor(Final_table$ID, 
                                 levels=c("Original", "Body_cor"))

Final_table$art <- factor(Final_table$art, 
                         levels=c("Dunlin","Greenshank","Red Knot",
                                  "Golden Plover","Northern Lapwing",
                                  "Avocet","Curlew","Oystercatcher",
                                  "Shelduck","Wigeon","Pin-tailed Duck",
                                  "Greylag Goose","Barnacle Goose",
                                  "Egret","Common Gull"))
art_rækkefølge <- c("Dunlin","Greenshank",
         "Golden Plover","Northern Lapwing",
         "Avocet","Curlew","Oystercatcher",
         "Shelduck","Wigeon","Pin-tailed Duck",
         "Greylag Goose","Barnacle Goose",
         "Egret","Common Gull")
Final_table

#Plot nu med body_height korrektion
# Break labels i to linjer
addline_format <- function(x,...){
  gsub('\\s','\n',x)
}
# Tæl n
library(plyr)
library(dplyr)
count <- summarySE(relasyn_dist_600m_body, measurevar="RASTERVALU", 
                   groupvars=c("art"))
count
# plot nu
library('ggplot2')
ggplot(Final_table, aes(x=art, y=mean, fill=ID)) + 
  geom_bar(position=position_dodge(width = .7), stat="identity",
           colour="black", # Use black outlines,
           size=.5, width = .5) +      # Thinner lines) +
  geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI),
                width=.2,                    # Width of the error bars
                position=position_dodge(.7)) +
  xlab("Waterbird species") +
  ylab("Median height to be added for visibility (m)") +
  scale_fill_manual(values = c("grey100",'lightgrey'),
                    name="Relative Invisibility", # Legend label, use darker colors
                    breaks=c("Original", "Body_cor"),
                    labels=c("Original", "Body height corrected")) +
  theme_bw() +
  theme(legend.text=element_text(size=10),legend.title=element_text(size=13),
        axis.text=element_text(size=10),
        axis.title=element_text(size = 13)) +
  theme(axis.text.x = element_text(angle = -45, hjust = 0)) +
  theme(plot.margin = margin(0.1, 0.1, 0.1, 0.1, "cm")) +
  geom_text(data = count, aes(x = art, y = -0.03, label =paste("n =",N))
          ,inherit.aes = F,cex=3.1) +
  scale_x_discrete(labels=addline_format(unique(art_rækkefølge)))+
  scale_y_continuous(limits=c(-0.06,1.),breaks=seq(0,1.5,0.1))






########################### Gør det med psoudomedian
library(broom)
## Definer først funktion for at køre alle arter på en gang!

# Empty list to hold our results
L <- list()
for (i in unique(relasyn_dist_600m_body$art)) {
  # Run Wilcoxon test, "tidy" the result, and assign it to element i of L
  L[[i]] <- tidy(wilcox.test(relasyn_dist_600m[relasyn_dist_600m$art == i,
                                               "RASTERVALU"],
                             conf.int = TRUE, conf.level = 0.95))
}
L
# Combine the results
results_UCOR <- do.call(rbind, L)  # Same as rbind(L[[1]], L[[2]], ...)
# Add a column identifying the subsets
results_UCOR$art <- names(L)
results_UCOR <- data.frame(results_UCOR)
results_UCOR = results_UCOR[!is.na(results_UCOR$estimate), ]
results_UCOR$ID <- c('Original')
#View(results_UCOR)

####*** Med correction for body height
## Definer først funktion for at køre alle arter på en gang!

# Empty list to hold our results
L <- list()
for (i in unique(relasyn_dist_600m_body$art)) {
  # Run Wilcoxon test, "tidy" the result, and assign it to element i of L
  L[[i]] <- tidy(wilcox.test(relasyn_dist_600m_body[relasyn_dist_600m_body$art == i,
                                               "RASTERVALU_Body"],
                             conf.int = TRUE, conf.level = 0.95))
}
L
# Combine the results
results_COR <- do.call(rbind, L)  # Same as rbind(L[[1]], L[[2]], ...)
# Add a column identifying the subsets
results_COR$art <- names(L)
results_COR <- data.frame(results_COR)
results_COR = results_COR[!is.na(results_COR$estimate), ]
results_COR$ID <- c('Body_cor')
#View(results_COR)


# Combine tables til samlet med og uden body korrektion

Final_results <- rbind(results_UCOR,results_COR)
Final_results

# Reorder dataframe
Final_results$ID <- factor(Final_results$ID, 
                         levels=c("Original", "Body_cor"))

Final_results$art <- factor(Final_results$art, 
                          levels=c("Dunlin","Greenshank","Red Knot",
                                   "Golden Plover","Northern Lapwing",
                                   "Avocet","Curlew","Oystercatcher",
                                   "Shelduck","Wigeon","Pin-tailed Duck",
                                   "Greylag Goose","Barnacle Goose",
                                   "Egret","Common Gull"))
art_rækkefølge <- c("Dunlin","Greenshank",
                    "Golden Plover","Northern Lapwing",
                    "Avocet","Curlew","Oystercatcher",
                    "Shelduck","Wigeon","Pin-tailed Duck",
                    "Greylag Goose","Barnacle Goose",
                    "Egret","Common Gull")
Final_results

#Plot nu med body_height korrektion
# Break labels i to linjer
addline_format <- function(x,...){
  gsub('\\s','\n',x)
}
# Tæl n
count <- summarySE(relasyn_dist_600m_body, measurevar="RASTERVALU", 
                   groupvars=c("art"))
count
sum(count$N)

# plot nu
library('ggplot2')
ggplot(Final_results, aes(x=art, y=estimate, fill=ID)) + 
  geom_bar(position=position_dodge(width = .7), stat="identity",
           colour="black", # Use black outlines,
           size=.5, width = .5) +      # Thinner lines) +
  geom_errorbar(aes(ymin=conf.low, ymax=conf.high),
                width=.2,                    # Width of the error bars
                position=position_dodge(.7)) +
  xlab("Waterbird species") +
  ylab("Median height to be added for visibility (m)") +
  scale_fill_manual(values = c("grey100",'lightgrey'),
                    name="Relative Invisibility", # Legend label, use darker colors
                    breaks=c("Original", "Body_cor"),
                    labels=c("Original", "Body height corrected")) +
  theme_bw() +
  theme(legend.text=element_text(size=10),legend.title=element_text(size=13),
        axis.text=element_text(size=10),
        axis.title=element_text(size = 13)) +
  theme(axis.text.x = element_text(angle = -45, hjust = 0)) +
  theme(plot.margin = margin(0.1, 0.1, 0.1, 0.1, "cm")) +
  geom_text(data = count, aes(x = art, y = -0.03, label =paste("n =",N))
            ,inherit.aes = F,cex=3.1) +
  scale_x_discrete(labels=addline_format(unique(art_rækkefølge))) +
  scale_y_continuous(limits=(-0.06:1.6),breaks=seq(0,1.5,0.1))









#####~~~~~~************ Til opsummerende tabel ******************###############
rela_sum <- summarySE(relasyn_dist_600m_org, measurevar="RASTERVALU", 
          groupvars=c("art"))
rela_sum
relasyn_dist_600m_org
intervals <- cut(relasyn_dist_600m_org$RASTERVALU, breaks=c(-0.1, 0.1,0.5, 1.0,5.0))
intervals

summary_relasyn <- cbind(table(intervals),
              table(intervals, relasyn_dist_600m_org$art))

summary_relasyn <- data.frame(RASTERVALU.category = rownames(summary_relasyn),
                   as.data.frame(summary_relasyn, row.names = 1:nrow(summary_relasyn)))
names(summary_relasyn)[2] <- "Total"

total_col = apply(summary_relasyn[,-1], 2, sum)
total_col
pct_relasyn <- summary_relasyn %>%
  mutate_at(vars(2:17), funs(paste0(round(100*./sum(.), 1))))

# View både reelle tal og procenter
#View(summary_relasyn)
#View(pct_relasyn)

329 / sum(rela_sum$N)

#######**** Correted body height table
# Combine bodyheight med RASTERVALU
relasyn_dist_600m_body_org <- merge(relasyn_dist_600m_org, Body_height, 
                                by=0, all.x=TRUE, all.y=FALSE, by.x = "art", by.y = "arter",
                                sort = TRUE)  # merge by row names (by=0 or by="row.names")
# Substract RASTERVALU by Bodyheight
relasyn_dist_600m_body_org$RASTERVALU_Body <- (relasyn_dist_600m_body_org$RASTERVALU - relasyn_dist_600m_body_org$Body_height)
# Sæt RASTERVALU to min. 0
relasyn_dist_600m_body_org$RASTERVALU_Body[relasyn_dist_600m_body_org$RASTERVALU_Body < 0] <- 0.0
# View(relasyn_dist_600m_body_org)
min(relasyn_dist_600m_body_org$RASTERVALU_Body)
relasyn_dist_600m_body_org$RASTERVALU_Body
max(relasyn_dist_600m_body_org$RASTERVALU_Body)
NA.test <- relasyn_dist_600m_body_org[is.na(relasyn_dist_600m_body_org$RASTERVALU_Body),]
NA.test
Body_height
rela_sum <- summarySE(relasyn_dist_600m_body_org, measurevar="RASTERVALU_Body", 
                      groupvars=c("art"))
rela_sum
relasyn_dist_600m_body_org
intervals <- cut(relasyn_dist_600m_body_org$RASTERVALU_Body, breaks=c(-1.1, 0.1,0.5, 1.0,5.0))
intervals

summary_relasyn <- cbind(table(intervals),
                         table(intervals, relasyn_dist_600m_body_org$art))

summary_relasyn <- data.frame(RASTERVALU.category = rownames(summary_relasyn),
                              as.data.frame(summary_relasyn, row.names = 1:nrow(summary_relasyn)))
names(summary_relasyn)[2] <- "Total"

total_col = apply(summary_relasyn[,-1], 2, sum)
total_col
pct_relasyn <- summary_relasyn %>%
  mutate_at(vars(2:17), funs(paste0(round(100*./sum(.), 1))))

# View både reelle tal og procenter
#View(summary_relasyn)
#View(pct_relasyn)

1482  / sum(rela_sum$N)
  
