#install packages utilized within this tutorial
#install.packages("plotly")
#install.packages("lattice")
#install.packages("plot3D")
#install.packages("rgl")
#impliment packages within the script
library(plotly)
library(lattice)
library(plot3D)
library(rgl)

require(rgdal)
#install.packages('raster')
require(raster)
#install.packages('rasterVis')
require(rasterVis)
require(lattice)
install.packages('readOGR')
require(readOGR)

# Indlæs Ryle_dens

# commands: raster::raster(), rgdal::readOGR() 
Ryle_dens <- raster("G:/Vadehavet/GIS_projekts/Projekter_prik/09_27_RD_del_af/Dens_ryle/dens_ryle_rd/dens_ryle_rd/w001001.adf")  # read raster
Ryle_dens_resize <- raster("G:/Vadehavet/GIS_projekts/Projekter_prik/09_27_RD_del_af/Dens_ryle/dens_ryle_resize.tif")  # read raster

Gravand_dens <- raster("F:/Vadehavet/GIS_projekts/Projekter_prik/09_27_RD_del_af/Dens_gravand/dens_gravand/w001001.adf")
Gravand_dens

# Indlæs shp Ryle_prik

Ryle_prik <- readOGR(dsn="F:/Vadehavet/GIS_projekts/Projekter_prik/09_27_RD_del_af/Ryle_09_27", layer="Ryle_27_09") # read .shp (note that to read a shapefile, "the data source name (dsn= argument) is the folder (directory) where the shapefile is, and the layer is the name of the shapefile (without the .shp extension)" (from the rgdal::readOGR documentation))

# Indlæs shp Ryle_prik med rastervalu

Ryle_prik_dens <- readOGR(dsn="F:/Vadehavet/GIS_projekts/Projekter_prik/09_27_RD_del_af/Dens_ryle/Ryle_dens_27_09", layer="Ryle_dens_27_09_geom") # read .shp (note that to read a shapefile, "the data source name (dsn= argument) is the folder (directory) where the shapefile is, and the layer is the name of the shapefile (without the .shp extension)" (from the rgdal::readOGR documentation))

Ryle_dens_resize
Ryle_prik
Ryle_prik_dens

d_ryle <- as.matrix(Ryle_dens, rownames=NULL, rownames.value=NULL)
d_gravand <- as.matrix(Gravand_dens, rownames=NULL, rownames.value=NULL)

d_resize <- as.matrix(Ryle_dens_resize, rownames=NULL, rownames.value=NULL)



str(d)

# Set memory
memory.size(max = FALSE)

memory.limit(size=10000)




str(volcano)

rasterVis::levelplot(Ryle_dens,
                     margin = list(x = F, 
                                   y = T),
                     col.regions = terrain.colors(16),
                     xlab = list (label = "", 
                                  vjust = -.25),
                     sub = list(
                       label = "Density pr. m2",
                       font = 1,
                       cex = .9,
                       hjust = 1.5),
                     key = list(       #this time we'll include a legend that identifies the points we'll plot
                       space = "top",
                       points = list(
                         pch = c(18),
                         col = c("red")), 
                       text = list(
                         c("Dunlin"),
                         cex=.8))
) + 
  spplot(Ryle_prik, # add a layer of points
         zcol = "id", 
         cex = .1,
         pch = c(18,20),
         col.regions = c("red")
  )  


#Plot 3D plot
p_R <- plot_ly(z = ~d_resize) %>% add_surface()
p_R


p_G <- plot_ly(z = ~d_gravand) %>% add_surface()
p_G

# Plot 3D plot med points
p_dens <- plot_ly(z = d_resize, type = "surface") %>% 
  add_trace(data = Ryle_prik_dens, x = Ryle_prik_dens$xcoord, y = Ryle_prik_dens$ycoord, z = Ryle_prik_dens$RATERVALU, mode = "markers", type = "scatter3d", 
            marker = list(size = 5, color = "red", symbol = 104))
p_dens


#Plot 3D med kontur plot
p <- plot_ly(z = ~d_resize) %>% add_surface(
  contours = list(
    z = list(
      show=TRUE,
      usecolormap=TRUE,
      highlightcolor="#ff0000",
      project=list(z=TRUE)
    )
  )
) %>%
  layout(
    scene = list(
      camera=list(
        eye = list(x=1.87, y=0.88, z=-0.64)
      )
    )
  )

p




#


#Creates a map that represents elevation change with a color gradient
filled.contour(volcano, color.palette = terrain.colors, main = "Topographic map of Mount Eden")

