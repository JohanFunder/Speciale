library(dplyr)
library(ggplot2)
library(ggpmisc)
#10_23_f1 - Ballum Forland
# indlæs CSV filer
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"

###Ryle
x <- file.path(directory,"/ryle_geo.csv")
x <- read.csv(file=x, header= TRUE)
# Giv unik artskode
x$id[is.na(x$id)] <- 'ryle'
# Navngiv
ryle_geo <- x
###bramgås
x <- file.path(directory,"/bramgås_geo.csv")
x <- read.csv(file=x, header= TRUE)
# Giv unik artskode
x$id[is.na(x$id)] <- 'bramgaes'
# Navngiv
bramgaes_geo <- x
###gravand
x <- file.path(directory,"/gravand_geo.csv")
x <- read.csv(file=x, header= TRUE)
# Giv unik artskode
x$id[is.na(x$id)] <- 'gravand'
# Navngiv
gravand_geo <- x
###grågås
x <- file.path(directory,"/grågås_geo.csv")
x <- read.csv(file=x, header= TRUE)
# Giv unik artskode
x$id[is.na(x$id)] <- 'graegaes'
# Navngiv
graegaes_geo <- x
###hjejle
x <- file.path(directory,"/hjejle_geo.csv")
x <- read.csv(file=x, header= TRUE)
# Giv unik artskode
x$id[is.na(x$id)] <- 'hjejle'
# Navngiv
hjejle_geo <- x
###hvidklire
x <- file.path(directory,"/hvidklire_geo.csv")
x <- read.csv(file=x, header= TRUE)
# Giv unik artskode
x$id[is.na(x$id)] <- 'hvidklire'
# Navngiv
hvidklire_geo <- x
###klyde
x <- file.path(directory,"/klyde_geo.csv")
x <- read.csv(file=x, header= TRUE)
# Giv unik artskode
x$id[is.na(x$id)] <- 'klyde'
# Navngiv
klyde_geo <- x
###lillekobbersneppe
x <- file.path(directory,"/lillekobbersneppe_geo.csv")
x <- read.csv(file=x, header= TRUE)
# Giv unik artskode
x$id[is.na(x$id)] <- 'lillekobbersneppe'
# Navngiv
lillekobbersneppe_geo <- x
###pibeand
x <- file.path(directory,"/pibeand_geo.csv")
x <- read.csv(file=x, header= TRUE)
# Giv unik artskode
x$id[is.na(x$id)] <- 'pibeand'
# Navngiv
pibeand_geo <- x
###spidsand
x <- file.path(directory,"/spidsand_geo.csv")
x <- read.csv(file=x, header= TRUE)
# Giv unik artskode
x$id[is.na(x$id)] <- 'spidsand'
# Navngiv
spidsand_geo <- x
###storspove
x <- file.path(directory,"/storspove_geo.csv")
x <- read.csv(file=x, header= TRUE)
# Giv unik artskode
x$id[is.na(x$id)] <- 'storspove'
# Navngiv
storspove_geo <- x
###strandskade
x <- file.path(directory,"/strandskade_geo.csv")
x <- read.csv(file=x, header= TRUE)
# Giv unik artskode
x$id[is.na(x$id)] <- 'strandskade'
# Navngiv
strandskade_geo <- x

# Samlet for alle arter

samlet_geo <- rbind(bramgaes_geo,gravand_geo,graegaes_geo,hjejle_geo,hvidklire_geo,klyde_geo,
                    lillekobbersneppe_geo,pibeand_geo,ryle_geo,spidsand_geo,storspove_geo,
                    strandskade_geo)

str(samlet_geo)
# Skriv csv fil med samlet data
write.csv(samlet_geo, file = "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri/samlet_geo.csv")




#######################
# indlæs heatmap og distance CSV fil ***RYLE*******
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/ryle_geo_heat_dist.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

# Filter - udtag alle rows med afstande til anden art over 20 m
#x <- x[apply(x['distance'], 1, function(x) any(x < 20)), ] 

str(x)
x

my.formula <- y ~ x
p_heat <- ggplot(data = x, aes(x = RASTERVALU, y = distance))

p_heat + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) + theme_bw() +
  ggtitle("Kernel density - inter-species") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Kernel density (m2)") + ylab("Distance to nearest other species (m)") +
  ylim(0,30) + xlim(0,12) +
  stat_poly_eq(formula = my.formula, aes(label = paste0
                                         ("atop(", ..eq.label.., ",", ..rr.label.., ")")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               eq.with.lhs = "Slope~`=`~",coef.digits = 2, eq.x.rhs = F,
               label.x.npc = c(0.96,0.96), label.y = c(10.9, -10.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(10), label.y = c(20), size = 3.5) 
  
  

##############################################
  
# indlæs heatmap + distance + join CSV fil
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/ryle_geo_heat_dist_join.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)
  
# Filter - udtag alle rows med afstande til anden art over 20 m
#x <- x[apply(x['distance'], 1, function(x) any(x < 20)), ] 
  
str(x)
x  
  
my.formula <- y ~ x
p_heat <- ggplot(data = x, aes(x = RASTERVALU, y = Join_Count))

p_heat + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = T,  fullrange = TRUE) + theme_bw() +
  ggtitle("Kernel density - inter-species") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Kernel density (m)") + ylab("Count of individuals of other species within 10 m") +
#  ylim(0,750) + xlim(3,12) +
  stat_poly_eq(formula = my.formula, aes(label = paste(..rr.label.., sep = "~~~")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               label.x.npc = c(0.96,0.96), label.y = c(0.9, 0.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(11.3), label.y = c(1000), size = 3.5) 


#######################
# indlæs heatmap og distance CSV fil ***RYLE heat 1 cm*******
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/ryle_geo_heat_dist_join_1cm.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

# Filter - udtag alle rows med afstande til anden art over 10 m
x <- x[apply(x['distance'], 1, function(x) any(x < 10)), ] 

str(x)
x

my.formula <- y ~ x
p_heat <- ggplot(data = x, aes(x = RASTERVALU, y = distance))

p_heat + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) + theme_bw() +
  ggtitle("Kernel density - inter-species") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Kernel density (m2)") + ylab("Distance to nearest other species (m)") +
  ylim(0,15) + xlim(2,12) +
  stat_poly_eq(formula = my.formula, aes(label = paste0
                                         ("atop(", ..eq.label.., ",", ..rr.label.., ")")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               eq.with.lhs = "Slope~`=`~",coef.digits = 2, eq.x.rhs = F,
               label.x.npc = c(0.96,0.96), label.y = c(10.9, -10.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(10), label.y = c(20), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE)



##############################################

# indlæs heatmap + distance + join CSV fil
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/ryle_geo_heat_dist_join_1cm.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

# Filter - udtag alle rows med afstande til anden art over 20 m
#x <- x[apply(x['distance'], 1, function(x) any(x < 20)), ] 

str(x)
x  

my.formula <- y ~ x
p_heat <- ggplot(data = x, aes(x = RASTERVALU, y = Join_Count))

p_heat + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = T,  fullrange = TRUE) + theme_bw() +
  ggtitle("Kernel density - inter-species") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Kernel density (m)") + ylab("Count of individuals of other species within 10 m") +
  xlim(3,12) +
  stat_poly_eq(formula = my.formula, aes(label = paste(..rr.label.., sep = "~~~")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               label.x.npc = c(0.96,0.96), label.y = c(0.9, 0.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 3), sep = "")),
                  label.x = c(11.3), label.y = c(1000), size = 3.5) 



#######################
# indlæs heatmap og distance CSV fil ***RYLE heat 0.5 cm*******
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/ryle_geo_heat_dist_join_0.5cm.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

# Filter - udtag alle rows med afstande til anden art over 10 m
x <- x[apply(x['distance'], 1, function(x) any(x < 10)), ] 

str(x)
x

my.formula <- y ~ x
p_heat <- ggplot(data = x, aes(x = RASTERVALU, y = distance, color=join_id))

p_heat + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) + theme_bw() +
  ggtitle("Dunlin kernel density - inter-species") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Kernel density (m2)") + ylab("Distance to nearest other species (m)") +
  ylim(0,50) + xlim(0,12) +
  stat_poly_eq(formula = my.formula, aes(label = paste0
                                         ("atop(", ..eq.label.., ",", ..rr.label.., ")")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               eq.with.lhs = "Slope~`=`~",coef.digits = 2, eq.x.rhs = F,
               label.x.npc = c(0.96,0.96), label.y = c(10.9, -10.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(10), label.y = c(20), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE)



##############################################

# indlæs heatmap + distance + join CSV fil
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/ryle_geo_heat_dist_join_1cm.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

# Filter - udtag alle rows med afstande til anden art over 20 m
#x <- x[apply(x['distance'], 1, function(x) any(x < 20)), ] 

str(x)
x  

my.formula <- y ~ x
p_heat <- ggplot(data = x, aes(x = RASTERVALU, y = Join_Count))

p_heat + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = T,  fullrange = TRUE) + theme_bw() +
  ggtitle("Dunlin kernel density - inter-species") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Kernel density (m)") + ylab("Count of individuals of other species within 10 m") +
  xlim(3,12) +
  stat_poly_eq(formula = my.formula, aes(label = paste(..rr.label.., sep = "~~~")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               label.x.npc = c(0.96,0.96), label.y = c(0.9, 0.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 3), sep = "")),
                  label.x = c(11.3), label.y = c(1000), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE)






#######################
# indlæs heatmap og distance CSV fil ***GRAVAND*******
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/gravand_geo_heat_dist.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

# Filter - udtag alle rows med afstande til anden art over 20 m
#x <- x[apply(x['distance'], 1, function(x) any(x < 20)), ] 

str(x)
x

my.formula <- y ~ x
p_heat <- ggplot(data = x, aes(x = RASTERVALU, y = distance))

p_heat + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) + theme_bw() +
  ggtitle("Kernel density - inter-species") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Kernel density (m2)") + ylab("Distance to nearest other species (m)") +
  ylim(0,300) + xlim(0,.015) +
  stat_poly_eq(formula = my.formula, aes(label = paste0
                                         ("atop(", ..eq.label.., ",", ..rr.label.., ")")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               eq.with.lhs = "Slope~`=`~",coef.digits = 2, eq.x.rhs = F,
               label.x.npc = c(0.96,0.96), label.y = c(10.9, -10.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(0.010), label.y = c(20), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE) 



##############################################

# indlæs heatmap + distance + join CSV fil
# for 10m i radius
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/gravand_geo_heat_dist_join.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

str(x)
x  

my.formula <- y ~ x
p_heat <- ggplot(data = x, aes(x = RASTERVALU, y = Join_Count))

p_heat + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = T,  fullrange = TRUE) + theme_bw() +
  ggtitle("Kernel density - inter-species") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Kernel density (m)") + ylab("Count of individuals of other species within 10 m") +
  ylim(0,300) + xlim(0,0.02) +
  stat_poly_eq(formula = my.formula, aes(label = paste(..rr.label.., sep = "~~~")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               label.x.npc = c(0.96,0.96), label.y = c(0.9, 0.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(0.02), label.y = c(200), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE)  

# indlæs heatmap + distance + join CSV fil
# for 100 i radius
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/gravand_geo_heat_dist_join100m.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

str(x)
x  

my.formula <- y ~ x
p_heat <- ggplot(data = x, aes(x = RASTERVALU, y = Join_Count))

p_heat + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = T,  fullrange = TRUE) + theme_bw() +
  ggtitle("Kernel density - inter-species") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Kernel density (m)") + ylab("Count of individuals of other species within 10 m") +
  ylim(0,200) + xlim(0,0.015) +
  stat_poly_eq(formula = my.formula, aes(label = paste(..rr.label.., sep = "~~~")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               label.x.npc = c(0.96,0.96), label.y = c(0.9, 0.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(0.02), label.y = c(200), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE) 



#######################
# indlæs heatmap og distance CSV fil ***HJEJLE heat 0.5 cm*******
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/hjejle_geo_heat_dist_join_0.5.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

# Filter - udtag alle rows med afstande til anden art over 10 m
x <- x[apply(x['distance'], 1, function(x) any(x < 10)), ] 

str(x)
x

my.formula <- y ~ x
p_heat <- ggplot(data = x, aes(x = RASTERVALU, y = distance))

p_heat + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) + theme_bw() +
  ggtitle("Kernel density - inter-species") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Kernel density (m2)") + ylab("Distance to nearest other species (m)") +
  ylim(0,35) + xlim(0,12) +
  stat_poly_eq(formula = my.formula, aes(label = paste0
                                         ("atop(", ..eq.label.., ",", ..rr.label.., ")")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               eq.with.lhs = "Slope~`=`~",coef.digits = 2, eq.x.rhs = F,
               label.x.npc = c(0.96,0.96), label.y = c(10.9, -10.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(10), label.y = c(20), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE)



##############################################

# indlæs heatmap + distance + join CSV fil
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/hjejle_geo_heat_dist_join_0.5.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

# Filter - udtag alle rows med afstande til anden art over 20 m
#x <- x[apply(x['distance'], 1, function(x) any(x < 20)), ] 

str(x)
x  

my.formula <- y ~ x
p_heat <- ggplot(data = x, aes(x = RASTERVALU, y = Join_Count))

p_heat + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = T,  fullrange = TRUE) + theme_bw() +
  ggtitle("Kernel density - inter-species") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Kernel density (m)") + ylab("Count of individuals of other species within 10 m") +
  xlim(0,12) +
  stat_poly_eq(formula = my.formula, aes(label = paste(..rr.label.., sep = "~~~")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               label.x.npc = c(0.96,0.96), label.y = c(0.9, 0.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 3), sep = "")),
                  label.x = c(11.3), label.y = c(1000), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE)


#######################
# indlæs heatmap og distance CSV fil ***PIBEAND heat 0.5 cm*******
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/pibeand_geo_heat_dist_join.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

# Filter - udtag alle rows med afstande til anden art over 10 m
x <- x[apply(x['distance'], 1, function(x) any(x < 10)), ] 

str(x)
x

my.formula <- y ~ x
p_heat <- ggplot(data = x, aes(x = RASTERVALU, y = distance, color=join_id))

p_heat + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, cex=1.2) + theme_bw() +
  ggtitle("Wigeon kernel density - inter-species") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Kernel density (m2)") + ylab("Distance to nearest other species (m)") +
  ylim(0,150) + xlim(0,0.8) +
  stat_poly_eq(formula = my.formula, aes(label = paste(..rr.label.., sep = "~~~")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               eq.with.lhs = "Slope~`=`~",coef.digits = 2, eq.x.rhs = F,
               label.x.npc = c(0.91,0.91), 
               label.y = c(1.0, 0.96,0.92,0.88,0.84,0.80,0.76,0.72,0.68,0.64)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(10), label.y = c(20), size = 3.5)
#  stat_fit_tb(method = "lm",
#              method.args = list(formula = my.formula),
#              tb.vars = c(Parameter = "term", 
#                          Estimate = "estimate", 
#                          "s.e." = "std.error", 
#                          "italic(t)" = "statistic", 
#                          "italic(P)" = "p.value"),
#              label.y = "top", label.x = "left",
#              parse = TRUE)



##############################################

# indlæs heatmap + distance + join CSV fil
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/pibeand_geo_heat_dist_join.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

# Filter - udtag alle rows med afstande til anden art over 20 m
#x <- x[apply(x['distance'], 1, function(x) any(x < 20)), ] 

str(x)
x  

my.formula <- y ~ x
p_heat <- ggplot(data = x, aes(x = RASTERVALU, y = Join_Count))

p_heat + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = T,  fullrange = TRUE) + theme_bw() +
  ggtitle("Kernel density - inter-species") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Kernel density (m)") + ylab("Count of individuals of other species within 10 m") +
  xlim(0,0.7) + ylim(0,300) +
  stat_poly_eq(formula = my.formula, aes(label = paste(..rr.label.., sep = "~~~")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               label.x.npc = c(0.96,0.96), label.y = c(0.9, 0.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 3), sep = "")),
                  label.x = c(11.3), label.y = c(400), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE)


#######################
# indlæs heatmap og distance CSV fil ***STRANDSKADE heat 0.5 cm*******
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/strandskade_geo_heat_dist_join_0.5cm.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

# Filter - udtag alle rows med afstande til anden art over 10 m
#x <- x[apply(x['distance'], 1, function(x) any(x < 10)), ] 

str(x)
x

my.formula <- y ~ x
p_heat <- ggplot(data = x, aes(x = RASTERVALU, y = distance))

p_heat + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) + theme_bw() +
  ggtitle("Kernel density - inter-species") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Kernel density (m2)") + ylab("Distance to nearest other species (m)") +
  ylim(0,30) + xlim(0,1.7) +
  stat_poly_eq(formula = my.formula, aes(label = paste0
                                         ("atop(", ..eq.label.., ",", ..rr.label.., ")")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               eq.with.lhs = "Slope~`=`~",coef.digits = 2, eq.x.rhs = F,
               label.x.npc = c(0.96,0.96), label.y = c(10.9, -10.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(10), label.y = c(20), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE)



##############################################

# indlæs heatmap + distance + join CSV fil
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/strandskade_geo_heat_dist_join_0.5cm.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

# Filter - udtag alle rows med afstande til anden art over 20 m
#x <- x[apply(x['distance'], 1, function(x) any(x < 20)), ] 

str(x)
x  

my.formula <- y ~ x
p_heat <- ggplot(data = x, aes(x = RASTERVALU, y = Join_Count))

p_heat + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = T,  fullrange = TRUE) + theme_bw() +
  ggtitle("Kernel density - inter-species") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Kernel density (m)") + ylab("Count of individuals of other species within 10 m") +
  xlim(0,0.7) + ylim(0,500) +
  stat_poly_eq(formula = my.formula, aes(label = paste(..rr.label.., sep = "~~~")),
               rr.digits = 2, parse = TRUE, size = 3.5,
               label.x.npc = c(0.96,0.96), label.y = c(0.9, 0.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 3), sep = "")),
                  label.x = c(11.3), label.y = c(400), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE)




