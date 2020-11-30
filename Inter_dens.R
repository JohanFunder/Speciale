library(raster)
library(ggpubr)
#Indlæs ryle gravand interactions
ryle_grav <- read.csv('G:/Vadehavet/GIS_projekts/Dens/inter_27_09.csv',header = T)

library(cowplot) 
# Main plot
pmain <- ggplot(ryle_grav, aes(x = xcoord, y = ycoord, color = art)) + theme_bw() +
  geom_point(alpha=0.5,size=0.7)+ labs(color = "Species") +
  scale_y_continuous(limits = c(6110950,6111110),breaks = seq(6110950,6111110,20)) +
  scale_x_continuous(limits = c(479150,479350),breaks = seq(479150,479350,20)) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=12) +
  rotate_y_text(angle = 0, hjust = c(0,0), vjust = c(1.,1.), size=12) +
  xlab('UTM Easting (m)') + ylab("UTM Northing (m)") +
  theme(axis.title=element_text(size=14,face=1),
        strip.text = element_text(face=2, size=9.5),legend.text = element_text(size = 12),
        legend.title = element_text(size = 15)) +
  ggpubr::color_palette(c("darkslategrey", "darkorange3")) +
  guides(color = guide_legend(override.aes = list(size = 6)))
# Marginal densities along x axis
xdens <- axis_canvas(pmain, axis = "x")+
  geom_density(data = ryle_grav, aes(x = xcoord, fill = art),
               alpha = 0.7, size = 0.2)+
  ggpubr::fill_palette(c("darkslategrey", "darkorange3"))
# Marginal densities along y axis
# Need to set coord_flip = TRUE, if you plan to use coord_flip()
ydens <- axis_canvas(pmain, axis = "y", coord_flip = TRUE)+
  geom_density(data = ryle_grav, aes(x = ycoord, fill = art),
               alpha = 0.7, size = 0.2)+
  coord_flip()+
  ggpubr::fill_palette(c("darkslategrey", "darkorange3"))
p1 <- insert_xaxis_grob(pmain, xdens, grid::unit(.2, "null"), position = "top")
p2<- insert_yaxis_grob(p1, ydens, grid::unit(.2, "null"), position = "right")
ggdraw(p2)


### 23_10
library(raster)
library(ggpubr)
#Indlæs ryle gravand interactions
ryle_grav <- read.csv('G:/Vadehavet/GIS_projekts/Dens/inter_23_10.csv',header = T)
#Udskift Greenshank med Bar-tailed Godwit
ryle_grav$art <- gsub("Greenshank", "Bar-tailed Godwit", ryle_grav$art)
ryle_grav$art <- gsub("Curlew", "Oystercatcher", ryle_grav$art)

ryle_grav$art <- factor(ryle_grav$art,
                        levels=c("Dunlin","Golden Plover","Bar-tailed Godwit","Oystercatcher","Shelduck"))

library(cowplot) 
# Main plot
pmain <- ggplot(ryle_grav, aes(x = xcoord, y = ycoord, color = art)) + theme_bw() +
  geom_point(alpha=0.5,size=0.7)+ labs(color = "Species") +
  scale_y_continuous(limits = c(6110450,6110650),breaks = seq(6110450,6110650,20)) +
  scale_x_continuous(limits = c(479270,479420),breaks = seq(479270,479420,20)) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=12) +
  rotate_y_text(angle = 0, hjust = c(0,0), vjust = c(1.,1.), size=12) +
  xlab('UTM Easting (m)') + ylab("UTM Northing (m)") +
  theme(axis.title=element_text(size=14,face=1),
        strip.text = element_text(face=2, size=9.5),legend.text = element_text(size = 12),
        legend.title = element_text(size = 15)) +
  ggpubr::color_palette(c("darkslategrey","darkgoldenrod2","darkolivegreen","lightskyblue3","darkorange4")) +
  guides(color = guide_legend(override.aes = list(size = 6)))
# Marginal densities along x axis
xdens <- axis_canvas(pmain, axis = "x")+
  geom_density(data = ryle_grav, aes(x = xcoord, fill = art),
               alpha = 0.7, size = 0.2)+
  ggpubr::fill_palette(c("darkslategrey","darkgoldenrod2","darkolivegreen","lightskyblue3","darkorange4"))
# Marginal densities along y axis
# Need to set coord_flip = TRUE, if you plan to use coord_flip()
ydens <- axis_canvas(pmain, axis = "y", coord_flip = TRUE)+
  geom_density(data = ryle_grav, aes(x = ycoord, fill = art),
               alpha = 0.7, size = 0.2)+
  coord_flip()+
  ggpubr::fill_palette(c("darkslategrey","darkgoldenrod2","darkolivegreen","lightskyblue3","darkorange4"))
p1 <- insert_xaxis_grob(pmain, xdens, grid::unit(.2, "null"), position = "top")
p2<- insert_yaxis_grob(p1, ydens, grid::unit(.2, "null"), position = "right")
ggdraw(p2)

