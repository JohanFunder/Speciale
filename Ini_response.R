if(!require(devtools)) install.packages("devtools")
devtools::install_github("cardiomoon/moonBook")
devtools::install_github("cardiomoon/webr")

require(ggplot2)
require(moonBook)
require(webr)
acs

PieDonut(acs,aes(pies=weight,donuts=sex))

unique(acs$DM)

# Indlæs mit data
Response <- file.path(directory,"/Response.csv")
Response <- read.csv(file=Response, header= TRUE,na.strings=c("","NA"))
str(Response)

# Mine endelige dataframes
Response
godt
godt_forstyr

# Lav plots
PieDonut(Response,aes(pies=Species,donuts=Response),
         pieLabelSize = 4.5,color = "black",labelposition = 1,donutLabelSize = 4,start=0.9*pi/2,
         title = 'Distibution of disturbed species')
PieDonut(godt,aes(pies=Response),labelposition = 0,pieLabelSize = 6, color = 'black',
         title = 'Percentage disturbance')

PieDonut(Response,aes(Species,Response),explode = c(1,5,9),labelposition=0,explodeDonut=F,r0=0.2,
         explodePos = .2,color = 'black', pieAlpha = 0., donutAlpha = 0.)