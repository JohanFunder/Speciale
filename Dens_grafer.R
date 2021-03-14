# Samlet dataframe
samlet_dens_date$art <- droplevels(samlet_dens_date$art)
samlet_dens_date_DIST <- samlet_dens_date[rowSums(samlet_dens_date['DISTANCE'] < 10) > 0, ]

length(samlet_dens_date_DIST$DISTANCE)
samlet_dens_date_DIST

#install.packages('ggplot2')
require(ggplot2)
library(ggplot2)
library(ggpmisc)
# For n?rmeste individ
lm <- lm(DISTANCE ~ RASTERVALU, samlet_dens_date_DIST)
summary(lm)

samlet_dens_date_DIST

library('data.table')
CorrData <- as.data.table(samlet_dens_date_DIST)
DNOS <- CorrData[, cor(DISTANCE, RASTERVALU,method = 'spearman'), art]
NOOS <- CorrData[, cor(NUMPOINTS, RASTERVALU,method = 'spearman'), art]
NOOS

# Function for calculating R^2
# Adjust the lm call as required
lm_eqn = function(samlet_dens_date_DIST){
  m = lm(DISTANCE ~ RASTERVALU, samlet_dens_date_DIST);
  eq <- substitute(r2, 
                   list(r2 = format(summary(m)$r.squared, digits = 3)))
  as.character(as.expression(eq));                 
}
# put equations for each roi_size into a dataframe (as with Sven's solution),

eqns <- by(samlet_dens_date_DIST, samlet_dens_date_DIST$art, lm_eqn)
eqns
samlet_dens_date_DIST2 <- data.frame(eq = unclass(eqns), art = as.character(names(eqns)))
# but then concatenate them with the roi_size in a new column

samlet_dens_date_DIST2$lab = paste("R^2 =", samlet_dens_date_DIST2$eq, sep=" ")
# make a labeling function that will refer to your data frame of labels

r2_labeller <- function(variable,value){
  return(samlet_dens_date_DIST2$lab)
}
samlet_dens_date_DIST2

# Lav seperate x-axis breaks 
my_breaks <- function(x) { if (max(x) < 2) seq(0, 3, 0.2) else seq(0, 12, 2) }


my.formula <- y ~ x
p_heat <- ggplot(data = samlet_dens_date_DIST, aes(x = DISTANCE, y = RASTERVALU)) +
  facet_wrap(~art, scales = "free_y",ncol = 3) +
  scale_y_continuous(breaks = my_breaks, expand =  expand_scale(mult = c(.05, .2)),
                     name = bquote('Density estimation ('~ m^2*')'))

p_heat + geom_point(cex=.05, alpha=0.2) +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) + theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Distance to nearest other species (m)") + 
  xlim(0,10) +
  theme(strip.text = element_text(face=1, size=12),legend.text = element_text(size = 12),
        panel.grid = element_blank(), axis.title = element_text(face=1, size=15),
        legend.title = element_text(size = 13), strip.background = element_rect(fill = 'grey98'))



# 10 m bufferzone (alle obs)
my.formula <- y ~ x
p_heat <- ggplot(data = samlet_dens_date, aes(x = NUMPOINTS, y = RASTERVALU)) +
  facet_wrap(~art, scales = "free",ncol = 3) +
  scale_y_continuous(breaks = my_breaks, expand =  expand_scale(mult = c(.05, .2)),
                     name = bquote('Density estimation ('~ m^2*')'))

p_heat + geom_point(cex=.05, alpha=0.2) +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) + theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Individuals (N) of other species within 10 m") + 
  theme(strip.text = element_text(face=1, size=12),legend.text = element_text(size = 12),
        panel.grid = element_blank(), axis.title = element_text(face=1, size=15),
        legend.title = element_text(size = 13), strip.background = element_rect(fill = 'grey98'))



# Function for calculating R^2
# Adjust the lm call as required
lm_eqn = function(samlet_dens_date){
  m = lm(NUMPOINTS ~ RASTERVALU, samlet_dens_date);
  eq <- substitute(r2, 
                   list(r2 = format(summary(m)$r.squared, digits = 3)))
  as.character(as.expression(eq));                 
}
# put equations for each roi_size into a dataframe (as with Sven's solution),

eqns <- by(samlet_dens_date, samlet_dens_date$art, lm_eqn)
eqns
samlet_dens_date2 <- data.frame(eq = unclass(eqns), art = as.character(names(eqns)))
# but then concatenate them with the roi_size in a new column

samlet_dens_date2$lab = paste("R^2 =", samlet_dens_date2$eq, sep=" ")
# make a labeling function that will refer to your data frame of labels

r2_labeller <- function(variable,value){
  return(samlet_dens_date2$lab)
}
samlet_dens_date2



################################################################################
########################### Lav error bars horizontalt/vertitalt og gruppér ###

############################## Lav cuts med inters-species afstande ############
#### Lav bins med cuts per 0.1 m
# Brug dataset med > 10 m inter-species distances
samlet_dens_date_DIST
# Først defener levels rækkefølge
samlet_dens_date_DIST$art <- factor(samlet_dens_date_DIST$art,
                          levels=c("Dunlin","Golden Plover","Oystercatcher","Bar-tailed Godwit","Avocet",
                                   "Greenshank","Curlew","Wigeon",
                                   "Pin-tailed Duck","Shelduck","Barnacle Goose",
                                   "Greylag Goose"))

eks_samlet_dens_date_DIST <- samlet_dens_date_DIST

head(eks_samlet_dens_date_DIST)




nrow(eks_samlet_dens_date_DIST)

###### Opdel dataframe efter arter for lettere Bca og lav cuts - artsspecifikt
## min= 5 obs og højst 20 cuts
library(magrittr)
library(Hmisc)

part1 <- subset(samlet_dens_date_DIST , art == "Dunlin")
part1$DIST_cuts <- cut2(part1$DISTANCE, m=5 , g=20,)

## Tæl antal obs i hvert bin
aggregate(part1["art"], 
          by=part1["DIST_cuts"],FUN=NROW)

part2 <- subset(samlet_dens_date_DIST , art == "Golden Plover")
part2$DIST_cuts <- cut2(part2$DISTANCE, m=5 , g=20,)

part3 <- subset(samlet_dens_date_DIST , art == "Oystercatcher")
part3$DIST_cuts <- cut2(part3$DISTANCE, m=5 , g=20,)

part4 <- subset(samlet_dens_date_DIST , art == "Bar-tailed Godwit")
part4$DIST_cuts <- cut2(part4$DISTANCE, m=5 , g=20,)

part5 <- subset(samlet_dens_date_DIST , art == "Avocet")
part5$DIST_cuts <- cut2(part5$DISTANCE, m=5 , g=20,)

part6 <- subset(samlet_dens_date_DIST , art == "Wigeon")
part6$DIST_cuts <- cut2(part6$DISTANCE, m=5 , g=20,)

part7 <- subset(samlet_dens_date_DIST , art == "Pin-tailed Duck")
part7$DIST_cuts <- cut2(part7$DISTANCE, m=5 , g=20,)

part8 <- subset(samlet_dens_date_DIST , art == "Shelduck")
part8$DIST_cuts <- cut2(part8$DISTANCE, m=5 , g=20,)

part9 <- subset(samlet_dens_date_DIST , art == "Barnacle Goose")
part9$DIST_cuts <- cut2(part9$DISTANCE, m=5 , g=20,)

part10 <- subset(samlet_dens_date_DIST , art == "Greylag Goose")
part10$DIST_cuts <- cut2(part10$DISTANCE, m=5 , g=20,)


# Saml til håndterlige dataframes for boot
part1 <- part1
part2 <- part2
part3 <- rbind(part3,part4,part5)
part4 <- rbind(part6,part7,part8,part9,part10)

##########################**************** Bootsrap Bca *********###############
####### bootstrap - DISTANCE
#Sys.setenv(R_REMOTES_NO_ERRORS_FROM_WARNINGS="true")
#install.packages("devtools", dependencies = TRUE)
#install.packages('rcompanion')

library('rcompanion')

memory.limit()
memory.limit(100000)

### Lav først mean og confidence for DENSITET
# part1
# mean
part1_boot_mean <- groupwiseMean(
  formula = RASTERVALU ~ art + DIST_cuts,
  data = part1,
  var = "RASTERVALU",
  group = c("art","DIST_cuts"),
  conf = 0.95,
  R = 10000,
  boot = T,
  normal = T,
  basic = T,
  percentile = T,
  bca = F,
  digits = 3
)
# Giv samme navne
part1_boot_mean <- as.data.frame(part1_boot_mean)
colnames(part1_boot_mean) <- c('art','DIST_cuts','n','Mean','Boot.mean',
                               'Conf.level','Trad.lower','Trad.upper',
                               'Basic.lower','Basic.upper','Normal.lower',
                               'Normal.upper','Bca.lower','Bca.upper')
str(part1_boot_mean)
part1_boot_mean

# part2
# mean
part2_boot_mean <- groupwiseMean(
  formula = RASTERVALU ~ art + DIST_cuts,
  data = part2,
  var = "RASTERVALU",
  group = c("art","DIST_cuts"),
  conf = 0.95,
  R = 10000,
  boot = T,
  normal = T,
  basic = T,
  percentile = T,
  bca = T,
  digits = 3
)


# part3
# mean
part3_boot_mean <- groupwiseMean(
  formula = RASTERVALU ~ art + DIST_cuts,
  data = part3,
  var = "RASTERVALU",
  group = c("art","DIST_cuts"),
  conf = 0.95,
  R = 10000,
  boot = T,
  normal = T,
  basic = T,
  percentile = T,
  bca = T,
  digits = 3
)

# part4
# mean
part4_boot_mean <- groupwiseMean(
  formula = RASTERVALU ~ art + DIST_cuts,
  data = part4,
  var = "RASTERVALU",
  group = c("art","DIST_cuts"),
  conf = 0.95,
  R = 20000,
  boot = T,
  normal = T,
  basic = T,
  percentile = T,
  bca = T,
  digits = 3
)


## Sammensæt parts med relevante kolonner
str(part1_boot_mean)

DENS_boot_mean <- rbind.data.frame(part1_boot_mean[c(1:5,13:14)],
                                         part2_boot_mean[c(1:5,15:16)],
                                         part3_boot_mean[c(1:5,15:16)],
                                         part4_boot_mean[c(1:5,15:16)])

colnames(DENS_boot_mean) <- c('art','DIST_cuts','n','DENS_Mean','DENS_Boot.mean',
                               'Bca.lower','Bca.upper')


str(DENS_boot_mean)
nrow(DENS_boot_mean)
DENS_boot_mean




### Lav herefter mean og confidence for AFSTAND
part1
# part1
# mean
D_part1_boot_mean <- groupwiseMean(
  formula = DISTANCE ~ art + DIST_cuts,
  data = part1,
  var = "DISTANCE",
  group = c("art","DIST_cuts"),
  conf = 0.95,
  R = 10000,
  boot = T,
  normal = T,
  basic = T,
  percentile = T,
  bca = F,
  digits = 3
)
# Giv samme navne
D_part1_boot_mean <- as.data.frame(D_part1_boot_mean)
colnames(D_part1_boot_mean) <- c('art','DIST_cuts','n','Mean','Boot.mean',
                               'Conf.level','Trad.lower','Trad.upper',
                               'Basic.lower','Basic.upper','Normal.lower',
                               'Normal.upper','Bca.lower','Bca.upper')
str(D_part1_boot_mean)

# part2
# mean
D_part2_boot_mean <- groupwiseMean(
  formula = DISTANCE ~ art + DIST_cuts,
  data = part2,
  var = "DISTANCE",
  group = c("art","DIST_cuts"),
  conf = 0.95,
  R = 10000,
  boot = T,
  normal = T,
  basic = T,
  percentile = T,
  bca = T,
  digits = 3
)

# part3
# mean
D_part3_boot_mean <- groupwiseMean(
  formula = DISTANCE ~ art + DIST_cuts,
  data = part3,
  var = "DISTANCE",
  group = c("art","DIST_cuts"),
  conf = 0.95,
  R = 10000,
  boot = T,
  normal = T,
  basic = T,
  percentile = T,
  bca = T,
  digits = 3
)

# part4
# mean
D_part4_boot_mean <- groupwiseMean(
  formula = DISTANCE ~ art + DIST_cuts,
  data = part4,
  var = "DISTANCE",
  group = c("art","DIST_cuts"),
  conf = 0.95,
  R = 20000,
  boot = T,
  normal = T,
  basic = T,
  percentile = T,
  bca = T,
  digits = 3
)


## Sammensæt parts med relevante kolonner
str(D_part1_boot_mean)

DIST_boot_mean <- rbind.data.frame(D_part1_boot_mean[c(1:5,13:14)],
                                         D_part2_boot_mean[c(1:5,15:16)],
                                         D_part3_boot_mean[c(1:5,15:16)],
                                         D_part4_boot_mean[c(1:5,15:16)])

colnames(DIST_boot_mean) <- c('art_1','DIST_cuts_1','n_1','DIST_Mean','DIST_Boot.mean',
                              'x_Bca.lower','x_Bca.upper')


str(DIST_boot_mean)
nrow(DIST_boot_mean)
DIST_boot_mean


##### Sammensæt nu x (Dist) og y (DENS) coordinater

Combi_DIST_DENS <- cbind(DIST_boot_mean,DENS_boot_mean)
str(Combi_DIST_DENS)
Combi_DIST_DENS


##########################**************** Bootsrap Bca *********###############
####### bootstrap - NUMPOINT
#Sys.setenv(R_REMOTES_NO_ERRORS_FROM_WARNINGS="true")
#install.packages("devtools", dependencies = TRUE)
#install.packages('rcompanion')

library('rcompanion')

memory.limit()
memory.limit(100000)


### Lav mean og confidence for NUMPOINTS
# part1
# mean
N_part1_boot_mean <- groupwiseMean(
  formula = NUMPOINTS ~ art + DIST_cuts,
  data = part1,
  var = "NUMPOINTS",
  group = c("art","DIST_cuts"),
  conf = 0.95,
  R = 10000,
  boot = T,
  normal = T,
  basic = T,
  percentile = T,
  bca = F,
  digits = 3
)
# Giv samme navne
N_part1_boot_mean <- as.data.frame(N_part1_boot_mean)
colnames(N_part1_boot_mean) <- c('art','DIST_cuts','n','Mean','Boot.mean',
                                 'Conf.level','Trad.lower','Trad.upper',
                                 'Basic.lower','Basic.upper','Normal.lower',
                                 'Normal.upper','Bca.lower','Bca.upper')
str(N_part1_boot_mean)

# part2
# mean
N_part2_boot_mean <- groupwiseMean(
  formula = NUMPOINTS ~ art + DIST_cuts,
  data = part2,
  var = "NUMPOINTS",
  group = c("art","DIST_cuts"),
  conf = 0.95,
  R = 10000,
  boot = T,
  normal = T,
  basic = T,
  percentile = T,
  bca = T,
  digits = 3
)

# part3
# mean
N_part3_boot_mean <- groupwiseMean(
  formula = NUMPOINTS ~ art + DIST_cuts,
  data = part3,
  var = "NUMPOINTS",
  group = c("art","DIST_cuts"),
  conf = 0.95,
  R = 10000,
  boot = T,
  normal = T,
  basic = T,
  percentile = T,
  bca = T,
  digits = 3
)

# part4
# mean
N_part4_boot_mean <- groupwiseMean(
  formula = NUMPOINTS ~ art + DIST_cuts,
  data = part4,
  var = "NUMPOINTS",
  group = c("art","DIST_cuts"),
  conf = 0.95,
  R = 10000,
  boot = T,
  normal = T,
  basic = T,
  percentile = T,
  bca = F,
  digits = 3
)
nrow(part4)

# Giv samme navne
N_part4_boot_mean <- as.data.frame(N_part4_boot_mean)
colnames(N_part4_boot_mean) <- c('art','DIST_cuts','n','Mean','Boot.mean',
                                 'Conf.level','Trad.lower','Trad.upper',
                                 'Basic.lower','Basic.upper','Normal.lower',
                                 'Normal.upper','Bca.lower','Bca.upper')
str(N_part4_boot_mean)

## Sammensæt parts med relevante kolonner
str(N_part1_boot_mean)

NUM_boot_mean <- rbind.data.frame(N_part1_boot_mean[c(1:5,13:14)],
                                  N_part2_boot_mean[c(1:5,15:16)],
                                  N_part3_boot_mean[c(1:5,15:16)],
                                  N_part4_boot_mean[c(1:5,13:14)])
N_part4_boot_mean[c(1:5,13:14)]

colnames(NUM_boot_mean) <- c('art_1','DIST_cuts_1','n_1','DIST_Mean','DIST_Boot.mean',
                              'x_Bca.lower','x_Bca.upper')


str(NUM_boot_mean)
nrow(NUM_boot_mean)
NUM_boot_mean


##### Sammensæt nu x (Dist) og y (DENS) coordinater

Combi_NUM_DENS <- cbind(NUM_boot_mean,DENS_boot_mean)
str(Combi_NUM_DENS)
Combi_NUM_DENS


###################### Plot nu gglpot (simpelt) ##################################
library(ggplot2)

ggplot(data = cbind(DIST_boot_mean,DENS_boot_mean),aes(x = DIST_Boot.mean,y = DENS_Boot.mean)) + 
  geom_point() + 
  geom_errorbar(aes(ymin = Bca.lower,ymax = Bca.upper)) + 
  geom_errorbarh(aes(xmin = x_Bca.lower,xmax = x_Bca.upper))

############################# PLot nu rigtigt #########################
# Lav seperate x-axis breaks 
my_breaks <- function(x) { if (max(x) < 2) seq(0, 3, 0.2) else seq(0, 12, 2) }

##################### Først for DISTANCE
library(ggplot2)
my.formula <- y ~ x
p_heat <- ggplot(data = Combi_DIST_DENS ,aes(x = DIST_Boot.mean,y = DENS_Boot.mean)) +
  facet_wrap(~art, scales = "free_y",ncol = 3) +
  scale_y_continuous(expand =  expansion(mult = c(.05, .2)),
                     name = bquote('Density estimation ('~ m^2*')')) +
  geom_errorbar(aes(ymin = Bca.lower,ymax = Bca.upper), cex=0.5) + 
  geom_errorbarh(aes(xmin = x_Bca.lower,xmax = x_Bca.upper), cex=0.5)

p_heat + geom_point(cex=1., alpha=0.8) +
  geom_smooth(data = samlet_dens_date_DIST, aes(x = DISTANCE, y = RASTERVALU),
              inherit.aes = F, method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Distance to nearest other species (m)") + 
  xlim(0,10) +
  theme(strip.text = element_text(face=1, size=12),legend.text = element_text(size = 12),
        panel.grid = element_blank(), axis.title = element_text(face=1, size=15),
        legend.title = element_text(size = 13), strip.background = element_rect(fill = 'grey98'))


##################### Dernæst for NUMPOINTS

library(ggplot2)
# 10 m bufferzone (alle obs)
my.formula <- y ~ x
p_heat <- ggplot(data = Combi_NUM_DENS, aes(x = DIST_Boot.mean,y = DENS_Boot.mean)) +
  facet_wrap(~art, scales = "free",ncol = 3) +
  scale_y_continuous(expand =  expansion(mult = c(.05, .2)),
                     name = bquote('Density estimation ('~ m^2*')')) +
  
  scale_x_continuous(limits = c(0,200)) +
  
  geom_errorbar(aes(ymin = Bca.lower,ymax = Bca.upper), cex=0.5) + 
  geom_errorbarh(aes(xmin = x_Bca.lower,xmax = x_Bca.upper), cex=0.5)

p_heat + geom_point(cex=.5, alpha=0.8) +
  stat_smooth(data = samlet_dens_date, aes(x = NUMPOINTS, y = RASTERVALU),
              inherit.aes = F, method = "lm", se = FALSE,  fullrange = TRUE) + 
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Individuals (N) of other species within 10 m") + 
  theme(strip.text = element_text(face=1, size=12),legend.text = element_text(size = 12),
        panel.grid = element_blank(), axis.title = element_text(face=1, size=15),
        legend.title = element_text(size = 13), strip.background = element_rect(fill = 'grey98'))







