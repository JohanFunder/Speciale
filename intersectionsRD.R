
# Indlæs først intersections_RD_trim
intersections_RD <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/intersections_RD_trim.csv',header = T)
# Indlæs alle opdelinger
relasyn_lines_RD_1 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/relasyn_lines_RD_1.csv',header = T)
relasyn_lines_RD_2 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/relasyn_lines_RD_2.csv',header = T)
relasyn_lines_RD_3 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/relasyn_lines_RD_3.csv',header = T)
relasyn_lines_RD_4 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/relasyn_lines_RD_4.csv',header = T)
relasyn_lines_RD_5 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/relasyn_lines_RD_5.csv',header = T)
relasyn_lines_RD_6 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/relasyn_lines_RD_6.csv',header = T)
relasyn_lines_RD_7 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/relasyn_lines_RD_7.csv',header = T)
relasyn_lines_RD_8 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/relasyn_lines_RD_8.csv',header = T)


# Opdel nu alle intersections based on relasyn_lines
intersections_RD_1 <- merge(intersections_RD, relasyn_lines_RD_1[c('field_1')])
intersections_RD_2 <- merge(intersections_RD, relasyn_lines_RD_2[c('field_1')])
intersections_RD_3 <- merge(intersections_RD, relasyn_lines_RD_3[c('field_1')])
intersections_RD_4 <- merge(intersections_RD, relasyn_lines_RD_4[c('field_1')])
intersections_RD_5 <- merge(intersections_RD, relasyn_lines_RD_5[c('field_1')])
intersections_RD_6 <- merge(intersections_RD, relasyn_lines_RD_6[c('field_1')])
intersections_RD_7 <- merge(intersections_RD, relasyn_lines_RD_7[c('field_1')])
intersections_RD_8 <- merge(intersections_RD, relasyn_lines_RD_8[c('field_1')])

# Skriv csv
write.csv(intersections_RD_1, file = "G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/intersections_RD_1.csv")
write.csv(intersections_RD_2, file = "G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/intersections_RD_2.csv")
write.csv(intersections_RD_3, file = "G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/intersections_RD_3.csv")
write.csv(intersections_RD_4, file = "G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/intersections_RD_4.csv")
write.csv(intersections_RD_5, file = "G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/intersections_RD_5.csv")
write.csv(intersections_RD_6, file = "G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/intersections_RD_6.csv")
write.csv(intersections_RD_7, file = "G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/intersections_RD_7.csv")
write.csv(intersections_RD_8, file = "G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/intersections_RD_8.csv")


# Saml relasyn_features til et dataframe - alle (RD) elementer

relasyn_features_RD_1 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/relasyn_line_route_features/csv_1m/relasyn_line_route_features_RD_1_search_1m.csv',header = T)
relasyn_features_RD_1$Rowid_ <- NULL
colnames(relasyn_features_RD_1) <- c('RID','MEAS','Distance','field_1','field_2','xcoord','ycoord','join_xcoord','join_ycoord','objectid2','localid','reg_fra','Hoejde','hjlp_kurve','layer','path','xcoord_2','ycoord_2')
relasyn_features_RD_2 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/relasyn_line_route_features/csv_1m/relasyn_line_route_features_RD_2_search_1m.csv',header = T)
relasyn_features_RD_2$Rowid_ <- NULL
colnames(relasyn_features_RD_2) <- c('RID','MEAS','Distance','field_1','field_2','xcoord','ycoord','join_xcoord','join_ycoord','objectid2','localid','reg_fra','Hoejde','hjlp_kurve','layer','path','xcoord_2','ycoord_2')
relasyn_features_RD_3 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/relasyn_line_route_features/csv_1m/relasyn_line_route_features_RD_3_search_1m.csv',header = T)
relasyn_features_RD_3$Rowid_ <- NULL
colnames(relasyn_features_RD_3) <- c('RID','MEAS','Distance','field_1','field_2','xcoord','ycoord','join_xcoord','join_ycoord','objectid2','localid','reg_fra','Hoejde','hjlp_kurve','layer','path','xcoord_2','ycoord_2')
relasyn_features_RD_4 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/relasyn_line_route_features/csv_1m/relasyn_line_route_features_RD_4_search_1m.csv',header = T)
relasyn_features_RD_4$Rowid_ <- NULL
colnames(relasyn_features_RD_4) <- c('RID','MEAS','Distance','field_1','field_2','xcoord','ycoord','join_xcoord','join_ycoord','objectid2','localid','reg_fra','Hoejde','hjlp_kurve','layer','path','xcoord_2','ycoord_2')
relasyn_features_RD_5 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/relasyn_line_route_features/csv_1m/relasyn_line_route_features_RD_5_search_1m.csv',header = T)
relasyn_features_RD_5$Rowid_ <- NULL
colnames(relasyn_features_RD_5) <- c('RID','MEAS','Distance','field_1','field_2','xcoord','ycoord','join_xcoord','join_ycoord','objectid2','localid','reg_fra','Hoejde','hjlp_kurve','layer','path','xcoord_2','ycoord_2')
relasyn_features_RD_6 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/relasyn_line_route_features/csv_1m/relasyn_line_route_features_RD_6_search_1m.csv',header = T)
relasyn_features_RD_6$Rowid_ <- NULL
colnames(relasyn_features_RD_6) <- c('RID','MEAS','Distance','field_1','field_2','xcoord','ycoord','join_xcoord','join_ycoord','objectid2','localid','reg_fra','Hoejde','hjlp_kurve','layer','path','xcoord_2','ycoord_2')
relasyn_features_RD_7 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/relasyn_line_route_features/csv_1m/relasyn_line_route_features_RD_7_search_1m.csv',header = T)
relasyn_features_RD_7$Rowid_ <- NULL
colnames(relasyn_features_RD_7) <- c('RID','MEAS','Distance','field_1','field_2','xcoord','ycoord','join_xcoord','join_ycoord','objectid2','localid','reg_fra','Hoejde','hjlp_kurve','layer','path','xcoord_2','ycoord_2')
relasyn_features_RD_8 <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/relasyn_line_route_features/csv_1m/relasyn_line_route_features_RD_8_search_1m.csv',header = T)
relasyn_features_RD_8$Rowid_ <- NULL
colnames(relasyn_features_RD_8) <- c('RID','MEAS','Distance','field_1','field_2','xcoord','ycoord','join_xcoord','join_ycoord','objectid2','localid','reg_fra','Hoejde','hjlp_kurve','layer','path','xcoord_2','ycoord_2')

relasyn_features_RD <- rbind(relasyn_features_RD_1,relasyn_features_RD_2,
                             relasyn_features_RD_3,relasyn_features_RD_4,
                             relasyn_features_RD_5,relasyn_features_RD_6,
                             relasyn_features_RD_7,relasyn_features_RD_8)
relasyn_features_RD <- relasyn_features_RD[ , 
                                            -which(names(relasyn_features_RD) %in% 
                                                     c('field_2','xcoord_2',
                                                       'ycoord_2'))]
View(relasyn_features_RD)
# Tilføj alt uden RD
relasyn_features_altudenRD <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/relasyn_line_route_features/csv_1m/relayn_line_oute_features_URD_search_1m.csv',header = T)
View(relasyn_features_altudenRD)
colnames(relasyn_features_altudenRD) <- c('RID','MEAS','Distance','field_1','xcoord','ycoord','join_xcoord','join_ycoord','objectid2','localid','reg_fra','Hoejde','hjlp_kurve','layer','path')

#View(relasyn_features_RD)
#View(relasyn_features_altudenRD)

# Combine alt data
relasyn_features <- rbind(relasyn_features_RD,relasyn_features_altudenRD)

# Trim nu datasættet pba. unikt id og min. distance til forlandskant

library(data.table)
relasyn_features_trim <- data.table(relasyn_features)
relasyn_features_trim <- relasyn_features_trim[ , .SD[which.min(MEAS)], by = RID]
View(relasyn_features_trim)


# Combine de to dataframes Rasterniveau og MEAS
relasyn_samlet <- read.csv('G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet_relasyn_fugle_csv/relasyn_samlet.csv',header = T)
str(relasyn_samlet)
relasyn_RASTERVALU_MEAS <- merge(relasyn_samlet, relasyn_features_trim, 
                                 by=0, all.x=TRUE, all.y=FALSE, by.x = "X", by.y = "RID",
                                 sort = TRUE)  # merge by row names (by=0 or by="row.names")

#View(relasyn_RASTERVALU_MEAS)

write.csv(relasyn_RASTERVALU_MEAS, file = "G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet/csv/relasyn_RASTERVALU_MEAS.csv")

#View(relasyn_RASTERVALU_MEAS)
