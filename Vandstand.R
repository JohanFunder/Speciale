Vandstand_ballum <- read.csv('G:/Vadehavet/Vandstand/Ballum__flyder__6601.csv',header = T)

head(Vandstand_ballum)
str(Vandstand_ballum)

Vandstand_ballum[grep("2019-08-20", Vandstand_ballum$Datotid), ]
Vandstand_brøns <- read.csv('G:/Vadehavet/Vandstand/Brøns__flyder__6901.csv',header = T)
Vandstand_brøns[grep("2019-08-20", Vandstand_brøns$Datotid), ]
Vandstand_ribe <- read.csv('G:/Vadehavet/Vandstand/Ribe__flyder__6701.csv',header = T)
Vandstand_ribe[grep("2019-08-20", Vandstand_ribe$Datotid), ]





################################ Prøv at sammenholde / korrelere vand og flushing
# Indlæs intial flights med flight nr
initial.flight <- read.csv('G:/Vadehavet/Frames_geo/Initial_species_count_dato.tidevand.csv',
                           header = T,)
initial.flight <- initial.flight[grep("Respons", initial.flight$X), ]
initial.flight <- t(initial.flight)
initial.flight <- data.frame(initial.flight)
initial.flight <- droplevels(initial.flight)
colnames(initial.flight) <- as.character(unlist(initial.flight[1,])) # the first row will be the header
initial.flight <- initial.flight[-1, ]     

levels(initial.flight$Respons_1)[levels(initial.flight$Respons_1) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_2)[levels(initial.flight$Respons_2) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_3)[levels(initial.flight$Respons_3) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_4)[levels(initial.flight$Respons_4) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_5)[levels(initial.flight$Respons_5) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_6)[levels(initial.flight$Respons_6) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_7)[levels(initial.flight$Respons_7) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_8)[levels(initial.flight$Respons_8) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_9)[levels(initial.flight$Respons_9) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_10)[levels(initial.flight$Respons_10) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_11)[levels(initial.flight$Respons_11) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_12)[levels(initial.flight$Respons_12) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_13)[levels(initial.flight$Respons_13) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_14)[levels(initial.flight$Respons_14) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_15)[levels(initial.flight$Respons_15) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_16)[levels(initial.flight$Respons_16) %in% c("A", "B","C")] <- c(0, 50, 100)
levels(initial.flight$Respons_17)[levels(initial.flight$Respons_17) %in% c("A", "B","C")] <- c(0, 50, 100)
initial.flight[initial.flight==""]<-NA
initial.flight[initial.flight=="<NA>"]=NA

initial.flight[] <- lapply(initial.flight, function(x) {
  if(is.factor(x)) as.numeric(as.character(x)) else x
})

initial.flight.respons <- apply(initial.flight, 1, mean,na.rm=T)

initial.flight
initial.flight.respons
View(initial.flight.respons)

#### Indlæs mean vandstand under de forskellige overflyvninger
Vandstand <- c(
  mean(c(78,89)),
  mean(c(48,20)),
  mean(c(132,130)),
  mean(c(121,71)),
  mean(c(41,36)),
  mean(c(74,89)),
  mean(c(93,99)),
  mean(c(99,93)),
  mean(c(49,43)),
  mean(c(42,41)),
  mean(c(40,39)),
  mean(c(18,44)),
  mean(c(45,62)),
  mean(c(116,124)),
  mean(c(127,123)),
  mean(c(121,108)),
  mean(c(84,36)),
  mean(c(41,41)),
  mean(c(77,95)),
  mean(c(98,100)),
  mean(c(21,18)),
  mean(c(18,16))
)
Vandstand

Vandstand.corrected <- c(
  mean(c(78,89)),
  mean(c(48,20)),
#Corrected - 26-09
  mean(c(20,12)),
  mean(c(90,105)),
  mean(c(15,40)),
#Corrected - 26-09
  mean(c(132,130)),
  mean(c(80,71)),
#Corrected - 27-09
  mean(c(60,40)),
  mean(c(35,20)),
#Corrected - 27-09
  mean(c(41,36)),
  mean(c(74,89)),
#  mean(c(93,99)),
#  mean(c(99,93)),
  mean(c(49,43)),
  mean(c(42,41)),
  mean(c(40,39)),
  mean(c(18,44)),
#  mean(c(45,62)),
  mean(c(116,124)),
  mean(c(127,123)),
#  mean(c(121,108)),
  mean(c(84,36)),
  mean(c(41,41)),
#  mean(c(77,95)),
  mean(c(98,100)),
#  mean(c(21,18)),
  mean(c(18,16))
)
Vandstand


Højvande <- c(12.10,
  12.10,
  13.40,
  13.40,
  06.10,
  17.30,
  17.30,
  17.30,
  06.30,
  06.30,
  06.30,
  18.40,
  18.40,
  16.20,
  16.20,
  16.20,
  09.10,
  15.30,
  15.30,
  15.30,
  03.50,
  03.50
  )

Flight.time <- c(
  '11.00-12.35',
  '12.40-13.50',
  '14.00-15.10',
  '15.40-16.20',
  '16.40-17.05',
  '09.15-10.05',
  '10.20-11.50',
  '12.00-13.35',
  '14.20-15.25',
  '09.00-10.00',
  '10.10-10.30',
  '11.20-12.35',
  '13.30-14.15',
  '15.25-16.00',
  '16.30-17.00',
  '16.30-17.10',
  '17.20-18.00',
  '09.10-13.40',
  '12.10-13.10',
  '14.10-15.00',
  '08.15-09.00'
)


# Add data fra 20. august og 25 sep
Flight.time.aug.st.sep <- c('15.30-16.30',
                            '17.15-18.00',
                            '18.30-19.00',
                            '16.00-17.00',
                            '16.30-17.30')
                        
Vandstand.aug.st.sep <- c(-50,
                          -30,
                          91,
                          -52,
                          -59)
                     
Højvande.aug.st.sep <- c(17.20,
                         17.00,
                         17.00,
                         23.50,
                         23.50)
                     

# Sæt vandstand og vandstand august sammen
Vandstand <- c(Vandstand.aug.st.sep,Vandstand.corrected)
length(Vandstand)
Vandstand <- Vandstand[1:26]
Vandstand


# add vector med dates
dates <- c('20-08','20-08','20-08','25-09','25-09',
  '26-09','26-09','26-09','26-09','26-09',
  '27-09','27-09','27-09','27-09','03-10',
  '03-10','04-10','04-10','04-10','04-10',
  '17-10','17-10','23-10','14-11','14-11',
  '15-11')

# combine nu flights og vandstand
Respons_vandstand <- cbind.data.frame(initial.flight.respons,Vandstand)


colnames(Respons_vandstand) <- c('Response','Vandstand')
rownames(Respons_vandstand) <- c()

Respons_vandstand <- cbind.data.frame(
  Respons_vandstand,dates)

Respons_vandstand

# Add vector med klokkeslet
Flight.time
Flight.time.aug.st.sep
Flight.time.all <- c(Flight.time.aug.st.sep,
                     Flight.time)
Flight.time.all <- Flight.time.all
Flight.time.all
Respons_vandstand$Flight.time <- Flight.time.all
Respons_vandstand
#################### lav correlations plot 
plot(Respons_vandstand)
library(dplyr)
library(ggplot2)
library(ggpmisc)

vand <- lm(data = Respons_vandstand, Response ~ Vandstand)
summary(vand)
my.formula <- y ~ x
p_vandstand <- ggplot(data = Respons_vandstand, aes(x = Vandstand , y = Response))
p_vandstand + geom_point(cex=2 ) +
  geom_smooth(method = "lm", se = F,  fullrange = TRUE) + theme_bw() +
  theme(text = element_text(size=15)) + 
  xlab("Tidal level (cm)") + ylab("Disturbance (i.e. percent flushing)") +
   stat_poly_eq(formula = my.formula, aes(label = paste0
                                         ("atop(", ",", ..rr.label.., ")")),
               rr.digits = 2, parse = TRUE, size = 4.5,
#               eq.with.lhs = "y~`=`~",coef.digits = 3,
               label.x.npc = c(0.95), label.y = c(.74)) +
  stat_fit_tb(method = "lm", tb.type = "fit.summary",
              method.args = list(formula = my.formula),
              tb.vars = c("Parameter(x,y)" = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
                          label.y = "top", label.x = "right", parse = TRUE, size=4.5)






###### ******* Lav udregninger for vindstyrke ***** #####
Vind <- read.csv('G:/Vadehavet/Vandstand/Vind_Esbjerg.csv',header = T)

#View(Vind)
Vind

vind.midd <- c(7.5,7.9,3.7,4.0,7.3,6.1,6.1,
               5.7,5.3,5.6,3.6,4.8,6.9,3.4,
               2.6,2.8,5.0,4.9,4.8,4.9,4.3,
               3.1,3.3,4.3,3.4,6.7)

Respons_vandstand_vind <- cbind(Respons_vandstand,vind.midd)

Tidal_level <- Respons_vandstand_vind$Vandstand
Wind_speed <- Respons_vandstand_vind$vind.midd
Response <- Respons_vandstand_vind$Response
Respons_vandstand_vind

vind <- lm(data = Respons_vandstand_vind, Response ~ vind.midd)
summary(vind)

# Plot nu vindstyrke
my.formula <- y ~ x
p_vandstand <- ggplot(data = Respons_vandstand_vind, aes(x = Respons_vandstand_vind$vind.midd,
                                                         y = Respons_vandstand_vind$Response))
p_vandstand + geom_point(cex=2 ) +
  geom_smooth(method = "lm", se = F,  fullrange = TRUE) + theme_bw() +
  theme(text = element_text(size=15)) + 
  xlab("Wind speed (m/s)") + ylab("Disturbance (i.e. percent flushing)") +
  stat_poly_eq(formula = my.formula, aes(label = paste0
                                         ("atop(", ",", ..rr.label.., ")")),
               rr.digits = 2, parse = TRUE, size = 4.5,
               #               eq.with.lhs = "y~`=`~",coef.digits = 3,
               label.x.npc = c(0.055), label.y = c(.74)) +
  stat_fit_tb(method = "lm", tb.type = "fit.summary",
              method.args = list(formula = my.formula),
              tb.vars = c("Parameter(x,y)" = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left", parse = TRUE, size=4.5) +
  xlim(2,10)




### Forsøg plot af både vand tidal level og vindstyrke


my.formula <- y ~ x 
ggplot() + 
  geom_point(mapping = aes(x = Respons_vandstand_vind$Response, 
                           y = Respons_vandstand_vind$Vandstand), size = 2,
             color = "black") +
  geom_smooth(mapping = aes(x = Respons_vandstand_vind$Response, 
                            y = Respons_vandstand_vind$Vandstand)
              , method = "lm", se = T,  fullrange = TRUE,
              color = "black") +
  
  geom_point(mapping = aes(x = Respons_vandstand_vind$Response, 
                           y = Respons_vandstand_vind$vind.midd*20), size = 2,
             color = "blue3") +
  geom_smooth(aes(x = Respons_vandstand_vind$Response, 
                            y = Respons_vandstand_vind$vind.midd*20)
              , method = "lm", se = T,  fullrange = TRUE,
              color = "blue3") + 
  theme_bw() +
  theme(text = element_text(size=15),
        axis.text.y = element_text(face="bold"),
        axis.text.y.right = element_text(face="bold",color='blue3'),
        axis.title.y.right = element_text(color = "blue3")) + 
  xlab("Disturbance (i.e. percent flushed and disappeared)") +
  stat_poly_eq(mapping = aes(x = Respons_vandstand_vind$Response, 
                             y = Respons_vandstand_vind$Vandstand,
                             label = paste0
                             ("atop(", ",", ..rr.label.., ")")),
               formula = my.formula,
               rr.digits = 2, parse = TRUE, size = 4.5,
               label.x.npc = c(0.95), label.y = c(0.22)) +
  
  stat_poly_eq(mapping = aes(x = Respons_vandstand_vind$Response, 
                             y = Respons_vandstand_vind$vind.midd*20,
                             label = paste0
                             ("atop(", ",", ..rr.label.., ")")),
               formula = my.formula,
               rr.digits = 2, parse = TRUE, size = 4.5,
               label.x.npc = c(0.95), label.y = c(1.5), color='blue3') +
  
  stat_fit_tb(mapping = aes(x = Respons_vandstand_vind$Response, 
                            y = Respons_vandstand_vind$vind.midd),
              method = "lm", tb.type = "fit.summary",
              method.args = list(formula =Response ~ Tidal_level 
                                 + Wind_speed),
              tb.vars = c("Multi-regression" = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = 0, label.x = "left", parse = TRUE, size=4.5) +
  
  stat_fit_glance(aes(x = Respons_vandstand_vind$Response, 
                                y = Respons_vandstand_vind$Vandstand,
                                label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  label.x = c(58.5), label.y = c(-120), size = 4.5,
                  color='black') +
  
  stat_fit_glance(aes(x = Respons_vandstand_vind$Response, 
                                y = Respons_vandstand_vind$vind.midd,
                                label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  label.x = c(59.23), label.y = c(180), size = 4.5,
                  color='blue3') +
  
  
  # Add a second axis and specify its features
  scale_y_continuous(name = "Tidal level (cm)", breaks = c(-80,-60,-40,-20,0,20,40,60,80,100,
                                                           120,140,160,180), 
                     sec.axis = sec_axis(~./20, name = "Wind speed mean (m/s)",
                                         breaks = c(0,1,2,3,4,5,6,7,8,9,10)),limits = c(-180,200)) +
  # Add dashed line ved ingen forstyrrelse
  geom_hline(yintercept = 78, colour="#990000", linetype="dashed",size=1.2)



model <- lm(Response ~ Tidal_level  + Wind_speed)

summary(model)
coef(model)
equation1 <- function(x){coef(model)[2]*x+coef(model)[1]}
equation2 <- function(x){coef(model)[2]*x+coef(model)[1]+coef(model)[3]}
equation1(Respons_vandstand_vind$vind.midd)

############################## Vendt om ##############
### Forsøg plot af både vand tidal level og vindstyrke
str(Respons_vandstand_vind)


summary(model)

my.formula <- y ~ x 
ggplot(Respons_vandstand_vind,
       aes(x=Vandstand,y=Response,size=factor(vind.midd))) + geom_point(alpha=0.5) + theme_bw() +

    geom_smooth(aes(y = Respons_vandstand_vind$Response, 
                  x = Respons_vandstand_vind$Vandstand)
              , method = "lm", se = F,  fullrange = T,
              color = "black",formula = my.formula,size=1)


#######
ggplot() + 
  geom_point(mapping = aes(x = Respons_vandstand_vind$Vandstand, 
                           y = Respons_vandstand_vind$Response), size = 2,
             color = "black", alpha=0.5) +
  geom_smooth(mapping = aes(x = Respons_vandstand_vind$Vandstand, 
                            y = Respons_vandstand_vind$Response)
              , method = "lm", se = T,  fullrange = F,
              color = "black") +
  
  geom_point(mapping = aes(x = Respons_vandstand_vind$vind.midd*20, 
                           y = Respons_vandstand_vind$Response), size = 2,
             color = "blue3", alpha=0.5) +
  geom_smooth(aes(x = Respons_vandstand_vind$vind.midd*20, 
                  y = Respons_vandstand_vind$Response)
              , method = "lm", se = T,  fullrange = F,
              color = "blue3") + 
  theme_bw() +
  theme(text = element_text(size=15),
        axis.text.x = element_text(face="bold"),
        axis.text.x.top = element_text(face="bold",color='blue3'),
        axis.title.x.top = element_text(color = "blue3")) + 
  ylab("Disturbance (i.e. percent flushed and disappeared)") +
  stat_poly_eq(mapping = aes(y = Respons_vandstand_vind$Response, 
                             x = Respons_vandstand_vind$Vandstand,
                             label = paste0
                             ("atop(", ",", ..rr.label.., ")")),
               formula = my.formula,
               rr.digits = 2, parse = TRUE, size = 4.5,
               label.x.npc = c(0.05), label.y = c(0.9)) +
  
  stat_poly_eq(mapping = aes(y = Respons_vandstand_vind$Response, 
                             x = Respons_vandstand_vind$vind.midd*20,
                             label = paste0
                             ("atop(", ",", ..rr.label.., ")")),
               formula = my.formula,
               rr.digits = 2, parse = TRUE, size = 4.5,
               label.x.npc = c(0.9), label.y = c(0.9), color='blue3') +
  
  stat_fit_tb(mapping = aes(y = Respons_vandstand_vind$Response, 
                            x = Respons_vandstand_vind$vind.midd),
              method = "lm", tb.type = "fit.summary",
              method.args = list(formula =Response ~ Tidal_level 
                                 + Wind_speed),
              tb.vars = c("Multi-regression" = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "bottom", label.x = "left", parse = TRUE, size=4.5) +
  
  stat_fit_glance(aes(y = Respons_vandstand_vind$Response, 
                      x = Respons_vandstand_vind$Vandstand,
                      label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  label.x = c(-54), label.y = c(48.), size = 4.5,
                  color='black') +
  
  stat_fit_glance(aes(y = Respons_vandstand_vind$Response, 
                      x = Respons_vandstand_vind$vind.midd,
                      label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  label.x = c(141), label.y = c(48.), size = 4.5,
                  color='blue3') +
  scale_y_continuous(limits = c(-40,65),breaks = seq(0,100,10)) +
  
  # Add a second axis and specify its features
  scale_x_continuous(name = "Tidal level (cm)", breaks = c(-80,-60,-40,-20,0,20,40,60,80,100,
                                                           120,140,160,180), 
                     sec.axis = sec_axis(~./20, name = "Wind speed mean (m/s)",
                                         breaks = c(0,1,2,3,4,5,6,7,8,9,10)),limits = c(-65,165)) +
  # Add dashed line ved ingen forstyrrelse
  geom_vline(xintercept = 104.1, colour="black", linetype="dashed",size=1.2) +
  geom_vline(xintercept = 3.1*20, colour="blue3", linetype="dashed",size=1.2)



model <- lm(Response ~ Tidal_level  + Wind_speed)

summary(model)

##############################*********** For minimum altitude *********############################
FH_samlet_tidevand_vind <- read.csv('G:/Vadehavet/Frames_geo/FH_samlet_tidevand_vind.csv',header = T)

FH_samlet_tidevand_vind

########### Plot tidevand
my.formula <- y ~ x
p_vandstand <- ggplot(data = FH_samlet_tidevand_vind, aes(x = height , y = Tidal_level))
p_vandstand + geom_point(cex=2 ) +
  geom_smooth(method = "lm", se = F,  fullrange = TRUE) + theme_bw() +
  theme(text = element_text(size=15)) + 
  xlab("Minimum flying altitude (m)") + ylab("Tidal level (cm)") +
  stat_poly_eq(formula = my.formula, aes(label = paste0
                                         ("atop(", ",", ..rr.label.., ")")),
               rr.digits = 2, parse = TRUE, size = 4.5,
               #               eq.with.lhs = "y~`=`~",coef.digits = 3,
               label.x.npc = c(.575), label.y = c(.74)) +
  stat_fit_tb(method = "lm", tb.type = "fit.summary",
              method.args = list(formula = my.formula),
              tb.vars = c("Parameter(x,y)" = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "right", parse = TRUE, size=4.5) +
  ylim(-60,200)


########## Plot vind
my.formula <- y ~ x
p_vandstand <- ggplot(data = FH_samlet_tidevand_vind, aes(x = height , y = Wind_speed))
p_vandstand + geom_point(cex=2 ) +
  geom_smooth(method = "lm", se = F,  fullrange = TRUE) + theme_bw() +
  theme(text = element_text(size=15)) + 
  xlab("Minimum flying altitude (m)") + ylab("Wind speed (m/s)") +
  stat_poly_eq(formula = my.formula, aes(label = paste0
                                         ("atop(", ",", ..rr.label.., ")")),
               rr.digits = 2, parse = TRUE, size = 4.5,
               #               eq.with.lhs = "y~`=`~",coef.digits = 3,
               label.x.npc = c(0.055), label.y = c(.74)) +
  stat_fit_tb(method = "lm", tb.type = "fit.summary",
              method.args = list(formula = my.formula),
              tb.vars = c("Parameter(x,y)" = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left", parse = TRUE, size=4.5) +
  ylim(2,10)


#########***** Samlet plot med to y-akser
Tidal_level <- FH_samlet_tidevand_vind$Tidal_level
Wind_speed <- FH_samlet_tidevand_vind$Wind_speed
Flying_height <- FH_samlet_tidevand_vind$height
head(FH_samlet_tidevand_vind,50)

ggplot() + 
  geom_point(mapping = aes(x = FH_samlet_tidevand_vind$height, 
                           y = FH_samlet_tidevand_vind$Tidal_level), size = 2,
             color = "black") +
  geom_smooth(mapping = aes(x = FH_samlet_tidevand_vind$height, 
                            y = FH_samlet_tidevand_vind$Tidal_level)
              , method = "lm", se = F,  fullrange = TRUE,
              color = "black") +
  
  geom_point(mapping = aes(x = FH_samlet_tidevand_vind$height, 
                           y = FH_samlet_tidevand_vind$Wind_speed*20), size = 2,
             color = "blue") +
  geom_smooth(aes(x = FH_samlet_tidevand_vind$height, 
                  y = FH_samlet_tidevand_vind$Wind_speed*20)
              , method = "lm", se = F,  fullrange = TRUE,
              color = "blue") + 
  theme_bw() +
  theme(text = element_text(size=15),
        axis.text.y = element_text(face="bold"),
        axis.text.y.right = element_text(face="bold",color='blue'),
        axis.title.y.right = element_text(color = "blue")) + 
  xlab("Disturbance (i.e. percent flushing)") +
  stat_poly_eq(mapping = aes(x = FH_samlet_tidevand_vind$height, 
                             y = FH_samlet_tidevand_vind$Tidal_level,
                             label = paste0
                             ("atop(", ",", ..rr.label.., ")")),
               formula = my.formula,
               rr.digits = 2, parse = TRUE, size = 4.5,
               label.x.npc = c(0.95), label.y = c(0.22)) +
  
  stat_poly_eq(mapping = aes(x = FH_samlet_tidevand_vind$height, 
                             y = FH_samlet_tidevand_vind$Wind_speed*20,
                             label = paste0
                             ("atop(", ",", ..rr.label.., ")")),
               formula = my.formula,
               rr.digits = 2, parse = TRUE, size = 4.5,
               label.x.npc = c(0.95), label.y = c(1.5), color='blue') +
  
  stat_fit_tb(mapping = aes(x = FH_samlet_tidevand_vind$height, 
                            y = FH_samlet_tidevand_vind$Wind_speed),
              method = "lm", tb.type = "fit.summary",
              method.args = list(formula =Flying_height ~ Tidal_level 
                                 + Wind_speed),
              tb.vars = c("Multi-regression" = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P_adj)" = "p.value"),
              label.y = 0, label.x = "left", parse = TRUE, size=4.5) +
  
  stat_fit_glance(aes(x = FH_samlet_tidevand_vind$height, 
                      y = FH_samlet_tidevand_vind$Tidal_level,
                      label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  label.x = c(89.9), label.y = c(-120), size = 4.5,
                  color='black') +
  
  stat_fit_glance(aes(x = FH_samlet_tidevand_vind$height, 
                      y = FH_samlet_tidevand_vind$Wind_speed,
                      label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  label.x = c(92), label.y = c(180), size = 4.5,
                  color='blue') +
  
  
  # Add a second axis and specify its features
  scale_y_continuous(name = "Tidal level (cm)", breaks = c(-80,-60,-40,-20,0,20,40,60,80,100,
                                                           120,140,160,180), 
                     sec.axis = sec_axis(~./20, name = "Wind speed mean (m/s)",
                                         breaks = c(0,1,2,3,4,5,6,7,8,9,10)),limits = c(-180,200)) +
  # Add dashed line ved ingen forstyrrelse
  geom_hline(yintercept = 77, colour="#990000", linetype="dashed",size=1.2)



model <- lm(Flying_height ~ Tidal_level  + Wind_speed)

summary(model)


