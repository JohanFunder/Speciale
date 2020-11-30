# Samlet dataframe
samlet_dens_date$art <- droplevels(samlet_dens_date$art)
samlet_dens_date_DIST <- samlet_dens_date[rowSums(samlet_dens_date['DISTANCE'] < 10) > 0, ]

length(samlet_dens_date_DIST$DISTANCE)
samlet_dens_date_DIST

library(ggplot2)
library(ggpmisc)
# For nærmeste individ
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
  xlab("Distance to nearest other species (m)") + 
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

