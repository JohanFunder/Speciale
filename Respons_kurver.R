#installer nødvendige pakker

install.packages("ggplot2")
library(ggplot2)

# Prøvedata for responskurve vs. højde

H <- c(100,90,80,70,60,50,40,30,20,10,0)

Højde <- c(100,50,60,41,43,43,42,47,51,52,50)

Højde <- sort(Højde, decreasing = TRUE)
Højde
pr <- c(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0)
pr

re <- data.frame(Højde,pr)
re

str(re)

# Brug ggplot til at plotte data

p <- ggplot() +
  ggplot(re, aes(pr,Højde)) + geom_point() +
  geom_smooth(method = "loess", span = 0.3, se = FALSE) + ylim(0, 100)
   
   ggplot(re, aes(pr,Højde)) + geom_point() +
  geom_smooth(method = "loess", span = 0.3, se = FALSE) + ylim(0, 100)

   
   basep <- ggplot(plot_data, aes(x=Time2,  color=measure,
                                  group= interaction(measure,Sample2), 
                                  shape = Sample2)   
   
############################   

 #install.packages("rJava")
 #library(rJava)
 
 #install.packages("devtools")
 
 #library(devtools)
 #install.packages("qdap", INSTALL_opts = "--no-multiarch")
 #library(dplyr)
 #library(qdap)

#ggplot(re, aes(pr,Fo)) + geom_point() +
#geom_smooth(method = "gam", formula = y ~ poly(x, 2))


   
   
# forsøgsopstilling
Re <- dist_tab(Fo)
Re



plot(Re$freq, Re$interval)

plot(Re$interval, Re$cum.percent)

plot(Re$interval,Re$freq)

scatter.smooth(x=Re$freq, y=Re$freq, col=adjustcolor("grey0", alpha=0.5),  pch = 19,
main="Observeret synlighed ~ Simuleret synlighed")  # scatterplot
