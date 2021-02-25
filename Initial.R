if(!require(devtools)) install.packages("devtools")
devtools::install_github("cardiomoon/moonBook")
devtools::install_github("cardiomoon/webr")

require(ggplot2)
require(moonBook)
require(webr)
acs

#PieDonut(acs,aes(pies=weight,donuts=sex))

#unique(acs$DM)

# Indl?s mit data

# indl?s CSV filer
directory <- "G:/Vadehavet/Frames_geo"

initial <- file.path(directory,"/Initial_species_count.csv")
x <- read.csv(file=initial, header= TRUE,na.strings=c("","NA"))

# View(x)
x_fac <- x[,-c(1)]

str(x_fac)
x_ny <- data.frame(t(x_fac))
x_ny <- data.frame(x_ny)
str(x_ny)
x_ny
colnames(x_ny) <- factor(x$Species)

library(data.table)
setDT(x_ny, keep.rownames = TRUE)[]

#View(x_ny)
x_ny$Respons_17

# udtr?k af respons colonner
# Lav dataframe med artsnavne
artsnavne <- cbind.data.frame(rep('Avocet',29),rep('Dunlin',29),rep('Oystercatcher',29),rep('Golden Plover',29),rep('Banacle Gosse',29),
     rep('Greylag Goose',29),rep('Shelduck',29),rep('Bar-tailed Godwit',29),rep('Red Knot',29),rep('Common Gull',29),
     rep('Herring Gull',29),rep('Wigeon',29),rep('Northern Lapwing',29),rep('Curlew',29),rep('Pin-tailed Duck',29),
     rep('Mallard',29),rep('Greenshank',29))

artsnavne <- cbind.data.frame(x_ny$rn,rep('Avocet',29),x_ny$Respons_1,x_ny$rn,rep('Dunlin',29),x_ny$Respons_2,
                              x_ny$rn,rep('Oystercatcher',29),x_ny$Respons_3,x_ny$rn,rep('Golden Plover',29),x_ny$Respons_4,
                              x_ny$rn,rep('Barnacle Goose',29),x_ny$Respons_5,x_ny$rn,rep('Greylag Goose',29),x_ny$Respons_6,
                              x_ny$rn,rep('Shelduck',29),x_ny$Respons_7,x_ny$rn,rep('Bar-tailed Godwit',29),x_ny$Respons_8,
                              x_ny$rn,rep('Red Knot',29),x_ny$Respons_9,x_ny$rn,rep('Common Gull',29),x_ny$Respons_10,
                              x_ny$rn,rep('Herring Gull',29),x_ny$Respons_11,x_ny$rn,rep('Wigeon',29),x_ny$Respons_12,
                              x_ny$rn,rep('Northern Lapwing',29),x_ny$Respons_13,x_ny$rn,rep('Curlew',29),x_ny$Respons_14,
                              x_ny$rn,rep('Pin-tailed Duck',29),x_ny$Respons_15,x_ny$rn,rep('Mallard',29),x_ny$Respons_16,
                              x_ny$rn,rep('Greenshank',29),x_ny$Respons_17)
#View(artsnavne)
str(artsnavne)


colnames(artsnavne) <- c('UAV','Species','Response','UAV','Species','Response','UAV','Species','Response','UAV','Species','Response',
                         'UAV','Species','Response','UAV','Species','Response','UAV','Species','Response','UAV','Species','Response',
                         'UAV','Species','Response','UAV','Species','Response','UAV','Species','Response','UAV','Species','Response',
                         'UAV','Species','Response','UAV','Species','Response','UAV','Species','Response','UAV','Species','Response',
                         'UAV','Species','Response')

godt <- rbind.data.frame(artsnavne[1:3],artsnavne[4:6],artsnavne[7:9],artsnavne[10:12],artsnavne[13:15],
                         artsnavne[16:18],artsnavne[19:21],artsnavne[22:24],artsnavne[25:27],
                         artsnavne[28:30],artsnavne[31:33],artsnavne[34:36],artsnavne[37:39],
                         artsnavne[40:42],artsnavne[43:45],artsnavne[46:48],artsnavne[49:51])              
godt <- na.omit(godt)
godt

godt_forstyr <- godt[!grepl("A", godt$Response),] 
godt_forstyr <- data.frame(godt_forstyr)
godt_forstyr <- godt[godt$Response %in% c('B','C'),]
godt_forstyr

# write
write.csv(godt_forstyr, file = "G:/Vadehavet/Frames_geo/Response.csv")
write.csv(godt, file = "G:/Vadehavet/Frames_geo/All_Response.csv")
# Indl?s p? ny
Response <- file.path(directory,"/Response.csv")
Response <- read.csv(file=Response, header= TRUE,na.strings=c("","NA"))
All_response <- file.path(directory,"/All_response.csv")
All_response <- read.csv(file=All_response, header= TRUE,na.strings=c("","NA"))

# Mine endelige dataframes
# Trim f?rst efter UAV
Response$UAV <- gsub("\\..*","",Response$UAV)

All_response$UAV <- gsub("\\..*","",All_response$UAV)

Response
# For hver UAV
Response_UAV_1 <- Response[Response$UAV == 'UAV_1', ]
Response_UAV_1
Response_UAV_2 <- Response[Response$UAV == 'UAV_2', ]
All_response_UAV_1 <- All_response[All_response$UAV == 'UAV_1', ]
All_response_UAV_2 <- All_response[All_response$UAV == 'UAV_2', ]
All_response_UAV_2


# write
write.csv(Response_UAV_1, file = "G:/Vadehavet/Frames_geo/Response_UAV_1.csv")
write.csv(Response_UAV_2, file = "G:/Vadehavet/Frames_geo/Response_UAV_2.csv")
# Indl?s p? ny
Response_UAV_1 <- file.path(directory,"/Response_UAV_1.csv")
Response_UAV_1 <- read.csv(file=Response_UAV_1, header= TRUE)
Response_UAV_2 <- file.path(directory,"/Response_UAV_2.csv")
Response_UAV_2 <- read.csv(file=Response_UAV_2, header= TRUE)

Response_UAV_1
Response_UAV_2

###########################################

# Subset antal overflyvninger pr art pr UAV (procenter)

# for Phantom
fordeling_UAV_1 <- table(All_response_UAV_1[3:4])
percent_UAV_1 <- prop.table(table(All_response_UAV_1[3:4]), 1)
percent_UAV_1 <- data.frame(percent_UAV_1)
tilskema_UAV_1 <- percent_UAV_1
tilskema_UAV_1$Freq <- percent_UAV_1$Freq*100 
#View(fordeling_UAV_1)
sum(fordeling_UAV_1)

# for Mavic
fordeling_UAV_2 <- table(All_response_UAV_2[3:4])
percent_UAV_2 <- prop.table(table(All_response_UAV_2[3:4]), 1)
percent_UAV_2 <- data.frame(percent_UAV_2)
percent_UAV_2 <- na.omit(percent_UAV_2)
fordeling_UAV_2
sum(fordeling_UAV_2)
tilskema_UAV_2 <- percent_UAV_2
tilskema_UAV_2$Freq <- percent_UAV_2$Freq*100 
tilskema_UAV_2
#View(fordeling_UAV_2)




# V?gt efter obs
Species <- rep(percent_UAV_1$Species,times=percent_UAV_1$Freq*100)
Species <- data.frame(Species)
Response <- rep(percent_UAV_1$Response,times=percent_UAV_1$Freq*100)
Response <- data.frame(Response)
Response_UAV_1 <- cbind.data.frame(Species,Response)
UAV_1_BC <- Response_UAV_1[!grepl("A", Response_UAV_1$Response),]
UAV_1_BC

Species <- rep(percent_UAV_2$Species,times=percent_UAV_2$Freq*100)
Species <- data.frame(Species)
Response <- rep(percent_UAV_2$Response,times=percent_UAV_2$Freq*100)
Response <- data.frame(Response)
Response_UAV_2 <- cbind.data.frame(Species,Response)
UAV_2_BC <- Response_UAV_2[!grepl("A", Response_UAV_2$Response),]
UAV_2_BC

# write
write.csv(UAV_1_BC, file = "G:/Vadehavet/Frames_geo/UAV_1_BC.csv")
write.csv(UAV_2_BC, file = "G:/Vadehavet/Frames_geo/UAV_2_BC.csv")
# Indl?s p? ny
UAV_1_BC <- file.path(directory,"/UAV_1_BC.csv")
UAV_1_BC <- read.csv(file=UAV_1_BC, header= TRUE)
UAV_2_BC <- file.path(directory,"/UAV_2_BC.csv")
UAV_2_BC <- read.csv(file=UAV_2_BC, header= TRUE)

PieDonut(UAV_1_BC,aes(pies=Species,donuts=Response),labelposition = 0,pieLabelSize = 4, color = 'black',r0=0.2,
         title = 'UAV 1 percentage disturbance',explodeDonut = T,pieAlpha = 0.3)

PieDonut(UAV_2_BC,aes(pies=Species,donuts=Response),labelposition = 0,pieLabelSize = 4, color = 'black',r0=0.2,
         title = 'UAV 2 percentage disturbance',explodeDonut = T)




########################## **********************Plotly***************#######################
library (plotly)
# Disturbance fordleing ABC
# FOr UAV 1

# Giv naven til ABC
percent_UAV_1_navne <- percent_UAV_1

percent_UAV_1_navne <- data.frame(lapply(percent_UAV_1_navne, function(x) {
   gsub("A", "Non-disturbance", x)
}))

percent_UAV_1_navne <- data.frame(lapply(percent_UAV_1_navne, function(x) {
   gsub("B", "Flushing", x)
}))

percent_UAV_1_navne <- data.frame(lapply(percent_UAV_1_navne, function(x) {
   gsub("C", "Disappearance", x)
}))

percent_UAV_1_navne



### For response A B C
colors <- c('darkgreen','darkgreen','darkgreen','darkgreen','darkgreen','darkgreen','darkgreen','darkgreen',
            'darkgreen','darkgreen','darkgreen','darkgreen','darkgreen','darkgreen','darkgreen','darkgreen',
            'darkgreen','grey','grey','grey','grey','grey','grey'
            ,'grey','grey','grey','grey','grey','grey','grey'
            ,'grey','grey','grey','grey','darkorange','darkorange','darkorange','darkorange','darkorange'
            ,'darkorange','darkorange','darkorange','darkorange','darkorange','darkorange','darkorange',
            'darkorange','darkorange','darkorange','darkorange','darkorange')



fig <- plot_ly(percent_UAV_1_navne, labels = ~Response, values = ~Freq,
               textposition = 'inside',
               textinfo = 'label+percent',
               insidetextorientation='auto',
               insidetextfont = list(color = '#FFFFFF'),
               hoverinfo = 'text',
               text = ~paste(Freq),
               marker = list(colors = colors,
                             line = list(color = '#FFFFFF', width = 1.5)),
               #The 'pull' attribute can also be used to create space between the sectors
               showlegend = T) 
fig <- fig %>% add_pie(hole = 0.33)

fig <- fig %>% add_pie(labels = ~Response, values = ~Freq,
                       textposition = ifelse(as.numeric(percent_UAV_1_navne$Freq)<0.05,"outside","inside"),
                       textinfo = 'label+percent',
                       insidetextorientation='auto',
                       insidetextfont = list(color = '#FFFFFF'),
                       hoverinfo = 'text',
                       text = ~paste(Freq),
                       marker = list(colors = colors,
                                     line = list(color = '#FFFFFF', width = 1.5)),
                       #The 'pull' attribute can also be used to create space between the sectors
                       showlegend = T,hole = 0.33) 

fig <- fig %>% layout(title = '',legend = list(font = list(size = 28)),
                      font=list(size = 30),annotations=list(text='Response', 
                                                            "showarrow"=F, font=list(size = 26)),
                      margin = list(t = 60, b = 0, l = 200, r = 0, pad = 0))

fig <- fig %>% add_pie(labels = ~Response, values = ~Freq,
                       textposition = ifelse(as.numeric(percent_UAV_1_navne$Freq)<0.10,"none","inside"),
                       textinfo = 'label+percent',
                       insidetextorientation='auto',
                       insidetextfont = list(color = '#FFFFFF',size = 30),
                       hoverinfo = 'text',
                       text = ~paste(Freq),
                       marker = list(colors = colors,
                                     line = list(color = '#FFFFFF', width = 1.5)),
                       #The 'pull' attribute can also be used to create space between the sectors
                       showlegend = T,hole = 0.33,text) 

fig
percent_UAV_1_navne$Freq
###### For UAV 2

# Giv naven til ABC
percent_UAV_2_navne <- percent_UAV_2

percent_UAV_2_navne <- data.frame(lapply(percent_UAV_2_navne, function(x) {
   gsub("A", "Non-disturbance", x)
}))

percent_UAV_2_navne <- data.frame(lapply(percent_UAV_2_navne, function(x) {
   gsub("B", "Flushing", x)
}))

percent_UAV_2_navne <- data.frame(lapply(percent_UAV_2_navne, function(x) {
   gsub("C", "Disappearance", x)
}))

percent_UAV_2_navne


### For response A B C
colors <- c('darkgreen','darkgreen','darkgreen','darkgreen','darkgreen',
            'darkgreen','darkgreen','darkgreen','darkgreen','darkgreen','darkgreen','darkgreen','darkgreen',
            'darkgreen','grey','grey','grey'
            ,'grey','grey','grey','grey','grey','grey','grey'
            ,'grey','grey','grey','grey','darkorange','darkorange','darkorange','darkorange','darkorange'
            ,'darkorange','darkorange','darkorange','darkorange','darkorange','darkorange','darkorange','darkorange','darkorange')



fig <- plot_ly(percent_UAV_2_navne, labels = ~Response, values = ~Freq,
               textposition = 'inside',
               textinfo = 'label+percent',
               insidetextorientation='auto',
               insidetextfont = list(color = '#FFFFFF'),
               hoverinfo = 'text',
               text = ~paste(Freq),
               marker = list(colors = colors,
                             line = list(color = '#FFFFFF', width = 1.5)),
               #The 'pull' attribute can also be used to create space between the sectors
               showlegend = T) 
fig <- fig %>% add_pie(hole = 0.33)


fig <- fig %>% add_pie(labels = ~Response, values = ~Freq,
                       textposition = ifelse(as.numeric(percent_UAV_2_navne$Freq)<0.02,"outside","inside"),
                       textinfo = 'label+percent',
                       insidetextorientation='auto',
                       insidetextfont = list(color = '#FFFFFF'),
                       hoverinfo = 'text',
                       text = ~paste(Freq),
                       marker = list(colors = colors,
                                     line = list(color = '#FFFFFF', width = 1.5)),
                       #The 'pull' attribute can also be used to create space between the sectors
                       showlegend = T,hole = 0.33) 

fig <- fig %>% layout(title = '',legend = list(font = list(size = 28)),
                      font=list(size = 30),annotations=list(text='Response', 
                                                            "showarrow"=F, font=list(size = 26)),
                      margin = list(t = 60, b = 0, l = 200, r = 0, pad = 0))

fig <- fig %>% add_pie(labels = ~Response, values = ~Freq,
                       textposition = ifelse(as.numeric(percent_UAV_2_navne$Freq)<0.02,"none","inside"),
                       textinfo = 'label+percent',
                       insidetextorientation='auto',
                       insidetextfont = list(color = '#FFFFFF',size = 30),
                       hoverinfo = 'text',
                       text = ~paste(Freq),
                       marker = list(colors = colors,
                                     line = list(color = '#FFFFFF', width = 1.5)),
                       #The 'pull' attribute can also be used to create space between the sectors
                       showlegend = T,hole = 0.33,text) 

fig



#######################************ For Species ****************
######## For UAV 1
# Slet f?rst alle A
percent_UAV_1_BC <- percent_UAV_1[!grepl("A", percent_UAV_1$Response),]
percent_UAV_1_BC

#S?t f?rst alle arter til mindst 1 %
percent_UAV_1_BC_all <- percent_UAV_1_BC
percent_UAV_1_BC_all_B <- percent_UAV_1_BC_all[!grepl("C", percent_UAV_1_BC_all$Response),]
percent_UAV_1_BC_all_C <- percent_UAV_1_BC_all[!grepl("B", percent_UAV_1_BC_all$Response),]
percent_UAV_1_BC_all_B$Freq <-  replace(percent_UAV_1_BC_all_B$Freq, percent_UAV_1_BC_all_B$Freq==0, 0.005)
percent_UAV_1_BC_all <- rbind.data.frame(percent_UAV_1_BC_all_B,percent_UAV_1_BC_all_C)
percent_UAV_1_BC_all
percent_UAV_1_BC_all$Freq <- percent_UAV_1_BC_all$Freq*100
percent_UAV_1_BC_all$Freq <- strtrim(percent_UAV_1_BC_all$Freq, 5)
percent_UAV_1_BC_all$Freq <-  as.numeric(as.character(percent_UAV_1_BC_all$Freq))
percent_UAV_1_BC_all$Freq <- signif(percent_UAV_1_BC_all$Freq, digits = 3)
percent_UAV_1_BC_all
# Lav colonne med samlet freq B + C
C <- percent_UAV_1_BC_all[!grepl("B", percent_UAV_1_BC_all$Response),] 
B <- percent_UAV_1_BC_all[!grepl("C", percent_UAV_1_BC_all$Response),]
B$navn_klas <- paste0(B$Species, ":1")
C$navn_klas <- paste0(C$Species, ":2")

Freq_all <- B$Freq+C$Freq
navn_klas <- c(B$navn_klas,C$navn_klas)
percent_UAV_1_BC_all$Freq_all <-  Freq_all
percent_UAV_1_BC_all$navn_klas <-  navn_klas
percent_UAV_1_BC_all <- percent_UAV_1_BC_all[order(percent_UAV_1_BC_all$Freq_all),]
percent_UAV_1_BC_all


#######******* Samlet pie*********** #########
# S?t f?rst farver
colors_respons <- c('white','white','white','white','white','white','white','white','white','white','white',
                    'white',
                    'grey','grey','grey','darkorange','grey','darkorange',
            'grey','darkorange','grey','grey','grey','darkorange','grey','grey','grey','grey',
            'grey','darkorange','grey','darkorange','grey','darkorange')

colors_species <- c('white','white','white','white','white','white','white',
                    'slategrey','slategrey','slategrey','slategrey','slategrey','slategrey','slategrey',
                    'slategrey','slategrey','slategrey','slategrey','slategrey','slategrey','slategrey'
                    ,'slategrey','slategrey','slategrey','slategrey','slategrey','slategrey','slategrey'
                    ,'slategrey','slategrey','slategrey','slategrey','slategrey','slategrey','slategrey'
                    ,'slategrey','slategrey','slategrey','slategrey','slategrey','slategrey','slategrey')

# Lav nu plottet
p_samlet <- plot_ly(percent_UAV_1_BC_all) %>%
   add_pie(labels = ~navn_klas, values = ~Freq,
           textposition = 'inside',
           textinfo = 'text',
           insidetextorientation='auto',
           insidetextfont = list(colors = '#FFFFFF'),
           hoverinfo = 'text',
           text = ~paste(Freq,'%'),
           marker = list(colors = colors_respons,
                         line = list(color = '#FFFFFF', width = 1)),
           hole = 0.85, sort = F,showlegend = F)  %>%

   add_pie(percent_UAV_1_BC_all, labels = ~Species, values = ~Freq_all, 
           textposition = 'inside',
           textinfo = 'label+text',
           insidetextorientation='radial',
           insidetextfont = list(colors = '#FFFFFF'),
           hoverinfo = 'text',
           text = ~paste(Freq_all,'%'),
           marker = list(colors = colors_species,
                         line = list(color = '#FFFFFF', width = 1)), hole = 0.25,
           domain = list(
              x = c(0.05, 0.95),
              y = c(0.05, 0.95)),
           sort = F,showlegend = T)
   
p_samlet <- p_samlet %>% layout(title = 'UAV 1 disturbance per waterbird species',
                                legend = list(font = list(size = 20)),
                                font=list(size = 25),annotations=list(text='Species', 
                                                                      "showarrow"=F, font=list(size = 25)),
                                margin = list(t = 60, b = 0, l = 200, r = 0, pad = 0))

p_samlet <- p_samlet %>% add_pie(percent_UAV_1_BC_all, labels = ~Species, values = ~Freq_all, 
        textposition = 'inside',
        textinfo = 'label+text',
        insidetextorientation='radial',
        insidetextfont = list(color = '#FFFFFF'),
        hoverinfo = 'text',
        text = ~paste(Freq_all,'%'),
        marker = list(colors = colors_species,
                      line = list(color = '#FFFFFF', width = 1)), hole = 0.25,
        domain = list(
           x = c(0.075, 0.925),
           y = c(0.075, 0.925)),
        sort = F,showlegend = T)

p_samlet <- p_samlet %>% add_pie(percent_UAV_1_BC_all, labels = ~navn_klas, values = ~Freq, 
                                 textposition = 'inside',
                                 textinfo = 'text',
                                 insidetextorientation='auto',
                                 insidetextfont = list(color = '#FFFFFF'),
                                 hoverinfo = 'text',
                                 text = ~paste(Freq,'%'),
                                 marker = list(colors = colors_respons,
                                               line = list(color = '#FFFFFF', width = 1)),
                                 hole = 0.85, sort = F,showlegend = F)   


p_samlet






######## For UAV 2
# Slet f?rst alle A
percent_UAV_2_BC <- percent_UAV_2[!grepl("A", percent_UAV_2$Response),]
percent_UAV_2_BC

#S?t f?rst alle arter til mindst 0.5 %
percent_UAV_2_BC_all <- percent_UAV_2_BC
percent_UAV_2_BC_all_B <- percent_UAV_2_BC_all[!grepl("C", percent_UAV_2_BC_all$Response),]
percent_UAV_2_BC_all_C <- percent_UAV_2_BC_all[!grepl("B", percent_UAV_2_BC_all$Response),]
percent_UAV_2_BC_all_B$Freq <-  replace(percent_UAV_2_BC_all_B$Freq, percent_UAV_2_BC_all_B$Freq==0, 0.005)
percent_UAV_2_BC_all <- rbind.data.frame(percent_UAV_2_BC_all_B,percent_UAV_2_BC_all_C)
percent_UAV_2_BC_all
percent_UAV_2_BC_all$Freq <- percent_UAV_2_BC_all$Freq*100
percent_UAV_2_BC_all$Freq <- strtrim(percent_UAV_2_BC_all$Freq, 5)
percent_UAV_2_BC_all$Freq <-  as.numeric(as.character(percent_UAV_2_BC_all$Freq))
percent_UAV_2_BC_all$Freq <- signif(percent_UAV_2_BC_all$Freq, digits = 3)
percent_UAV_2_BC_all
# Lav colonne med samlet freq B + C
C <- percent_UAV_2_BC_all[!grepl("B", percent_UAV_2_BC_all$Response),] 
B <- percent_UAV_2_BC_all[!grepl("C", percent_UAV_2_BC_all$Response),]
B$navn_klas <- paste0(B$Species, ":1")
C$navn_klas <- paste0(C$Species, ":2")

Freq_all <- B$Freq+C$Freq
navn_klas <- c(B$navn_klas,C$navn_klas)
percent_UAV_2_BC_all$Freq_all <-  Freq_all
percent_UAV_2_BC_all$navn_klas <-  navn_klas
percent_UAV_2_BC_all <- percent_UAV_2_BC_all[order(percent_UAV_2_BC_all$Freq_all),]
percent_UAV_2_BC_all

# Inds?t til sidst manglende fulgearter for UAV 2
#percent_UAV_1_BC_all$ID <- rownames(percent_UAV_1_BC_all)
#rownames(percent_UAV_1_BC_all)
B.df <- subset(percent_UAV_1_BC_all, !(Species %in% percent_UAV_2_BC_all$Species))
B.df
B.df <-  replace(B.df, B.df==0, 0.005)
B.df$Freq_all[ B.df$Freq_all<100 ] <- 0.005
B.df$Freq[ B.df$Freq<100 ] <- 0.005
B.df
# s?T SAMMEN til samlet dataframe
percent_UAV_2_BC_all <- rbind(B.df[-c(6)],percent_UAV_2_BC_all)
percent_UAV_2_BC_all
# order til sidst
percent_UAV_2_BC_all <- percent_UAV_2_BC_all[order(percent_UAV_2_BC_all$Freq_all),]

percent_UAV_2_BC_all
percent_UAV_1_BC_all
#######******* Samlet pie*********** #########
# S?t f?rst farver
colors_respons <- c('white','white','white','white','white','white','white',
                    'white','white','white','white','white','white','white','white','white'
                    ,'white','white','grey','grey','grey','grey',
                    'grey','grey','grey','grey','grey','darkorange','grey','darkorange','grey','grey','grey')

colors_species <- c('white','white','white','white','white','white','white','white','white','white','white',
                    'slategrey','slategrey','slategrey','slategrey','slategrey','slategrey','slategrey',
                    'slategrey','slategrey','slategrey','slategrey','slategrey','slategrey','slategrey'
                    ,'slategrey','slategrey','slategrey','slategrey','slategrey','slategrey','slategrey'
                    ,'slategrey','slategrey','slategrey','slategrey','slategrey','slategrey','slategrey'
                    ,'slategrey','slategrey','slategrey','slategrey','slategrey','slategrey','slategrey')

# Lav nu plottet
p_samlet <- plot_ly(percent_UAV_2_BC_all) %>%
   add_pie(labels = ~navn_klas, values = ~Freq,
           textposition = 'inside',
           textinfo = 'text',
           insidetextorientation='auto',
           insidetextfont = list(colors = '#FFFFFF'),
           hoverinfo = 'text',
           text = ~paste(Freq,'%'),
           marker = list(colors = colors_respons,
                         line = list(color = '#FFFFFF', width = 1)),
           hole = 0.85, sort = F,showlegend = F)  %>%
   
   add_pie(percent_UAV_2_BC_all, labels = ~Species, values = ~Freq_all, 
           textposition = 'inside',
           textinfo = 'label+text',
           insidetextorientation='radial',
           insidetextfont = list(colors = '#FFFFFF'),
           hoverinfo = 'text',
           text = ~paste(Freq_all,'%'),
           marker = list(colors = colors_species,
                         line = list(color = '#FFFFFF', width = 1)), hole = 0.25,
           domain = list(
              x = c(0.05, 0.95),
              y = c(0.05, 0.95)),
           sort = F,showlegend = T)

p_samlet <- p_samlet %>% layout(title = 'UAV 2 disturbance per waterbird species',
                                legend = list(font = list(size = 20)),
                                font=list(size = 25),annotations=list(text='Species', 
                                                                      "showarrow"=F, font=list(size = 25)),
                                margin = list(t = 60, b = 0, l = 200, r = 0, pad = 0))

p_samlet <- p_samlet %>% add_pie(percent_UAV_2_BC_all, labels = ~Species, values = ~Freq_all, 
                                 textposition = 'inside',
                                 textinfo = 'label+text',
                                 insidetextorientation='radial',
                                 insidetextfont = list(color = '#FFFFFF'),
                                 hoverinfo = 'text',
                                 text = ~paste(Freq_all,'%'),
                                 marker = list(colors = colors_species,
                                               line = list(color = '#FFFFFF', width = 1)), hole = 0.25,
                                 domain = list(
                                    x = c(0.075, 0.925),
                                    y = c(0.075, 0.925)),
                                 sort = F,showlegend = T)

p_samlet <- p_samlet %>% add_pie(percent_UAV_2_BC_all, labels = ~navn_klas, values = ~Freq, 
                                 textposition = 'inside',
                                 textinfo = 'text',
                                 insidetextorientation='auto',
                                 insidetextfont = list(color = '#FFFFFF'),
                                 hoverinfo = 'text',
                                 text = ~paste(Freq,'%'),
                                 marker = list(colors = colors_respons,
                                               line = list(color = '#FFFFFF', width = 1)),
                                 hole = 0.85, sort = F,showlegend = F)

p_samlet

###########################################

