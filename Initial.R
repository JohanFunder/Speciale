if(!require(devtools)) install.packages("devtools")
devtools::install_github("cardiomoon/moonBook")
devtools::install_github("cardiomoon/webr")

require(ggplot2)
require(moonBook)
require(webr)
acs

#PieDonut(acs,aes(pies=weight,donuts=sex))

#unique(acs$DM)

# Indlæs mit data

# indlæs CSV filer
directory <- "G:/Vadehavet/Frames_geo"

initial <- file.path(directory,"/Initial_species_count.csv")
x <- read.csv(file=initial, header= TRUE,na.strings=c("","NA"))

View(x)
x_fac <- x[,-c(1)]

str(x_fac)
x_ny <- data.frame(t(x_fac))
x_ny <- data.frame(x_ny)
str(x_ny)
x_ny
colnames(x_ny) <- factor(x$Species)

#View(x_ny)

# udtræk af respons colonner
# Lav dataframe med artsnavne
artsnavne <- cbind.data.frame(rep('Avocet',29),rep('Dunlin',29),rep('Oystercatcher',29),rep('Golden Plover',29),rep('Banacle Gosse',29),
     rep('Greylag Goose',29),rep('Shelduck',29),rep('Bar-tailed Godwit',29),rep('Red Knot',29),rep('Common Gull',29),
     rep('Herring Gull',29),rep('Wigeon',29),rep('Northern Lapwing',29),rep('Curlew',29),rep('Pin-tailed Duck',29),
     rep('Mallard',29),rep('Greenshank',29))

artsnavne <- cbind.data.frame(rep('Avocet',29),x_ny$Respons_1, rep('Dunlin',29),x_ny$Respons_2,
                              rep('Oystercatcher',29),x_ny$Respons_3,rep('Golden Plover',29),x_ny$Respons_4,
                              rep('Barnacle Goose',29),x_ny$Respons_5,rep('Greylag Goose',29),x_ny$Respons_6,
                              rep('Shelduck',29),x_ny$Respons_7,rep('Bar-tailed Godwit',29),x_ny$Respons_8,
                              rep('Red Knot',29),x_ny$Respons_9,rep('Common Gull',29),x_ny$Respons_10,
                              rep('Herring Gull',29),x_ny$Respons_11,rep('Wigeon',29),x_ny$Respons_12,
                              rep('Northern Lapwing',29),x_ny$Respons_13,rep('Curlew',29),x_ny$Respons_14,
                              rep('Pin-tailed Duck',29),x_ny$Respons_15,rep('Mallard',29),x_ny$Respons_16,
                              rep('Greenshank',29),x_ny$Respons_17)
#View(artsnavne)

colnames(artsnavne) <- c('Species','Response','Species','Response','Species','Response','Species','Response',
                         'Species','Response','Species','Response','Species','Response','Species','Response',
                         'Species','Response','Species','Response','Species','Response','Species','Response',
                         'Species','Response','Species','Response','Species','Response','Species','Response',
                         'Species','Response')

godt <- rbind.data.frame(artsnavne[1:2],artsnavne[3:4],artsnavne[5:6],artsnavne[7:8],artsnavne[9:10],artsnavne[11:12],
      artsnavne[13:14],artsnavne[15:16],artsnavne[17:18],artsnavne[19:20],artsnavne[21:22],artsnavne[23:24],
      artsnavne[25:26],artsnavne[27:28],artsnavne[29:30],artsnavne[31:32],artsnavne[33:34])              

godt <- na.omit(godt)
godt

godt_forstyr <- godt[!grepl("A", godt$Response),] 
godt_forstyr <- data.frame(godt_forstyr)
godt_forstyr <- godt[godt$Response %in% c('B','C'),]
# write
write.csv(godt_forstyr, file = "G:/Vadehavet/Frames_geo/Response.csv")
write.csv(godt, file = "G:/Vadehavet/Frames_geo/All_Response.csv")
# Indlæs på ny
Response <- file.path(directory,"/Response.csv")
Response <- read.csv(file=Response, header= TRUE,na.strings=c("","NA"))
All_response <- file.path(directory,"/All_response.csv")
All_response <- read.csv(file=All_response, header= TRUE,na.strings=c("","NA"))

# Mine endelige dataframes
# Trim først efter UAV
Response$X <- s<-gsub("(1).*","\\1",Response$X)
Response$X <- gsub("\\.", "", Response$X)
Response$X <- s<-gsub("(2).*","\\1",Response$X)
All_response$X <- s<-gsub("(1).*","\\1",All_response$X)
All_response$X <- gsub("\\.", "", All_response$X)
All_response$X <- s<-gsub("(2).*","\\1",All_response$X)

# For hver UAV
Response_UAV_1 <- Response[Response$X == 'UAV_1', ]
Response_UAV_2 <- Response[Response$X == 'UAV_2', ]
All_response_UAV_1 <- All_response[All_response$X == 'UAV_1', ]
All_response_UAV_2 <- All_response[All_response$X == 'UAV_2', ]



# write
write.csv(Response_UAV_1, file = "G:/Vadehavet/Frames_geo/Response_UAV_1.csv")
write.csv(Response_UAV_2, file = "G:/Vadehavet/Frames_geo/Response_UAV_2.csv")
# Indlæs på ny
Response_UAV_1 <- file.path(directory,"/Response_UAV_1.csv")
Response_UAV_1 <- read.csv(file=Response_UAV_1, header= TRUE)
Response_UAV_2 <- file.path(directory,"/Response_UAV_2.csv")
Response_UAV_2 <- read.csv(file=Response_UAV_2, header= TRUE)

Response_UAV_1
Response_UAV_2

###########################################

# Subset antal overflyvninger pr art pr UAV (preocenter)

# for Phantom
fordeling_UAV_1 <- table(All_response_UAV_1[2:3])
percent_UAV_1 <- prop.table(table(All_response_UAV_1[2:3]), 1)
percent_UAV_1 <- data.frame(percent_UAV_1)
tilskema_UAV_1 <- percent_UAV_1
tilskema_UAV_1$Freq <- percent_UAV_1$Freq*100 
tilskema_UAV_1
#View(fordeling_UAV_1)
sum(fordeling_UAV_1)

# for Mavic
fordeling_UAV_2 <- table(All_response_UAV_2[2:3])
percent_UAV_2 <- prop.table(table(All_response_UAV_2[2:3]), 1)
percent_UAV_2 <- data.frame(percent_UAV_2)
percent_UAV_2 <- na.omit(percent_UAV_2)
fordeling_UAV_2
sum(fordeling_UAV_2)
tilskema_UAV_2 <- percent_UAV_2
tilskema_UAV_2$Freq <- percent_UAV_2$Freq*100 
tilskema_UAV_2
#View(fordeling_UAV_2)




# Vægt efter obs
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
# Indlæs på ny
UAV_1_BC <- file.path(directory,"/UAV_1_BC.csv")
UAV_1_BC <- read.csv(file=UAV_1_BC, header= TRUE)
UAV_2_BC <- file.path(directory,"/UAV_2_BC.csv")
UAV_2_BC <- read.csv(file=UAV_2_BC, header= TRUE)

PieDonut(UAV_1_BC,aes(pies=Species,donuts=Response),labelposition = 0,pieLabelSize = 4, color = 'black',r0=0.2,
         title = 'UAV 1 percentage disturbance',explodeDonut = T,pieAlpha = 0.3)

PieDonut(UAV_2_BC,aes(pies=Species,donuts=Response),labelposition = 0,pieLabelSize = 4, color = 'black',r0=0.2,
         title = 'UAV 2 percentage disturbance',explodeDonut = T)




########################## **********************Plotly***************#######################
library(plotly)
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
                       textposition = ifelse(as.numeric(percent_UAV_1_navne$Freq)<5,"outside","inside"),
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
                       textposition = ifelse(as.numeric(percent_UAV_1_navne$Freq)<10,"none","inside"),
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
                       textposition = ifelse(as.numeric(percent_UAV_2_navne$Freq)<2,"outside","inside"),
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
                       textposition = ifelse(as.numeric(percent_UAV_2_navne$Freq)<2,"none","inside"),
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
# Slet først alle A
percent_UAV_1_BC <- percent_UAV_1[!grepl("A", percent_UAV_1$Response),]
percent_UAV_1_BC

#Sæt først alle arter til mindst 1 %
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
# Sæt først farver
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
           hole = 0.9, sort = F,showlegend = F)  %>%

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
                                                                      "showarrow"=F, font=list(size = 30)),
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
           x = c(0.05, 0.95),
           y = c(0.05, 0.95)),
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
                                 hole = 0.9, sort = F,showlegend = F)   


p_samlet






######## For UAV 2
# Slet først alle A
percent_UAV_2_BC <- percent_UAV_2[!grepl("A", percent_UAV_2$Response),]
percent_UAV_2_BC

#Sæt først alle arter til mindst 0.5 %
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

# Indsæt til sidst manglende fulgearter for UAV 2
percent_UAV_1_BC_all$ID <- rownames(percent_UAV_1_BC_all)
B.df <- subset(percent_UAV_1_BC_all, !(ID %in% rownames(percent_UAV_2_BC_all)))
B.df
B.df <-  replace(B.df, B.df==0, 0.005)
B.df$Freq_all[ B.df$Freq_all<100 ] <- 0.005
B.df$Freq[ B.df$Freq<100 ] <- 0.005
B.df
# sÆT SAMMEN til samlet dataframe
percent_UAV_2_BC_all <- rbind(B.df[-c(6)],percent_UAV_2_BC_all)
percent_UAV_2_BC_all
# order til sidst
percent_UAV_2_BC_all <- percent_UAV_2_BC_all[order(percent_UAV_2_BC_all$Freq_all),]

#######******* Samlet pie*********** #########
# Sæt først farver
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
           hole = 0.9, sort = F,showlegend = F)  %>%
   
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
                                                                      "showarrow"=F, font=list(size = 30)),
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
                                    x = c(0.05, 0.95),
                                    y = c(0.05, 0.95)),
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
                                 hole = 0.9, sort = F,showlegend = F)

p_samlet

###########################################

