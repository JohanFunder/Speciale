install.packages('mixtools')
library('mixtools')

directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/gravand_geo_heat_dist.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

# indlæs heatmap og distance CSV fil ***RYLE heat 0.5 cm*******
directory <- "G:/Vadehavet/GIS_projekts/Projekter_prik/Fugleprik_10_23_f1/Fugleprik_geometri"
x <- file.path(directory,"/ryle_geo_heat_dist_join_0.5cm.csv")
x <- read.csv(file=x, header= TRUE)
x <- data.frame(x)

wait = x$RASTERVALU
wait = x$distance
mixmdl = normalmixEM(wait)
plot(mixmdl,which=2)
lines(density(wait), lty=2, lwd=2)
mixmdl$x

wait = faithful$waiting
wait
mixmdl$posterior
mixmdl = normalmixEM(wait)
View(mixmdl$posterior)
plot(mixmdl,which=2)
lines(density(wait), lty=2, lwd=2)