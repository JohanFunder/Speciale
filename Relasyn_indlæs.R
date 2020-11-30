# Sæt directory
directory <- "G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet_relasyn_fugle_csv"

### Enkelte overflyvninger /datoer

# relasyn_09_26_f1+2_fugle
# Bramgås
relasyn <- 
  file.path(directory,"/relasyn_09_26_f1_2_fugle/relasyn_09_26_f1_2_bramgås.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Barnacle Goose','09_26','1_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_26_f1_2_bramgås <- relasyn

# relasyn_09_26_f1+2_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_09_26_f1_2_fugle/relasyn_09_26_f1_2_gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','09_26','1_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_26_f1_2_gravand <- relasyn

# relasyn_09_26_f1+2_fugle
# Spidsand
relasyn <- 
  file.path(directory,"/relasyn_09_26_f1_2_fugle/relasyn_09_26_f1_2_spidsand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Pin-tailed Duck','09_26','1_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_26_f1_2_spidsand <- relasyn

# relasyn_09_26_f3+4_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_09_26_f3_4_fugle/relasyn_09_f3_4_gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','09_26','3_4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_26_f3_4_gravand <- relasyn

# relasyn_09_26_f3+4_fugle
# Ryle
relasyn <- 
  file.path(directory,"/relasyn_09_26_f3_4_fugle/relasyn_09_f3_4_ryle.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Dunlin','09_26','3_4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_26_f3_4_ryle <- relasyn

# relasyn_09_26_f3+4_fugle
# Spidsand
relasyn <- 
  file.path(directory,"/relasyn_09_26_f3_4_fugle/relasyn_09_f3_4_spidsand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Pin-tailed Duck','09_26','3_4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_26_f3_4_spidsand <- relasyn

# relasyn_09_26_f3+4_fugle
# Stormmåge
relasyn <- 
  file.path(directory,"/relasyn_09_26_f3_4_fugle/relasyn_09_f3_4_stormmåge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','09_26','3_4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_26_f3_4_stormmåge <- relasyn

# relasyn_09_27_RD_1_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_1_fugle/relasyn_09_27_RD_1_gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','09_27','RD_1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_1_gravand <- relasyn

# relasyn_09_27_RD_1_fugle
# Grågås
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_1_fugle/relasyn_09_27_RD_1_grågås.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greylag Goose','09_27','RD_1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_1_grågås <- relasyn

# relasyn_09_27_RD_1_fugle
# Havørn
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_1_fugle/relasyn_09_27_RD_1_havørn.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'White-tailed Eagle','09_27','RD_1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_1_havørn <- relasyn

# relasyn_09_27_RD_1_fugle
# Ryle
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_1_fugle/relasyn_09_27_RD_1_ryle.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Dunlin','09_27','RD_1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_1_ryle <- relasyn

# relasyn_09_27_RD_1_fugle
# Spidsand
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_1_fugle/relasyn_09_27_RD_1_spidsand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Pin-tailed Duck','09_27','RD_1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_1_spidsand <- relasyn

# relasyn_09_27_RD_2_fugle
# Bramgås
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_2_fugle/relasyn_09_27_RD_2_bramgås.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Barnacle Goose','09_27','RD_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_2_bramgås <- relasyn

# relasyn_09_27_RD_2_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_2_fugle/relasyn_09_27_RD_2_gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','09_27','RD_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_2_gravand <- relasyn

# relasyn_09_27_RD_2_fugle
# Grågås
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_2_fugle/relasyn_09_27_RD_2_grågås.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greylag Goose','09_27','RD_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_2_grågås <- relasyn

# relasyn_09_27_RD_2_fugle
# Klyde
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_2_fugle/relasyn_09_27_RD_2_klyde.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Avocet','09_27','RD_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_2_klyde <- relasyn

# relasyn_09_27_RD_2_fugle
# Li.kobbersneppe
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_2_fugle/relasyn_09_27_RD_2_li.kobbersneppe.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Bar-tailed Godwit','09_27','RD_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_2_li.kobbersneppe <- relasyn

# relasyn_09_27_RD_2_fugle
# Ryle
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_2_fugle/relasyn_09_27_RD_2_ryle.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Dunlin','09_27','RD_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_2_ryle <- relasyn

# relasyn_09_27_RD_2_fugle
# Spidsand
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_2_fugle/relasyn_09_27_RD_2_spidsand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Pin-tailed Duck','09_27','RD_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_2_spidsand <- relasyn

# relasyn_09_27_RD_2_fugle
# Strandskade
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_2_fugle/relasyn_09_27_RD_2_strandskade.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Oystercatcher','09_27','RD_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_2_strandskade <- relasyn

# relasyn_10_03_f1_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_10_03_f1_fugle/relasyn_10_03_f1_gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','10_03','f1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f1_gravand <- relasyn

# relasyn_10_03_f2_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_10_03_f2_fugle/relasyn_10_03_f2_gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','10_03','f2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f2_gravand <- relasyn

# relasyn_10_03_f2_fugle
# Stormmåge
relasyn <- 
  file.path(directory,"/relasyn_10_03_f2_fugle/relasyn_10_03_f2_stormmåge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_03','f2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f2_stormmåge <- relasyn

# relasyn_10_03_f2_fugle
# sølvhejre
relasyn <- 
  file.path(directory,"/relasyn_10_03_f2_fugle/relasyn_10_03_f2_sølvhejre.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Egret','10_03','f2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f2_sølvhejre <- relasyn

# relasyn_10_03_f3_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_10_03_f3_fugle/relasyn_10_03_f3_gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','10_03','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f3_gravand <- relasyn

# relasyn_10_03_f3_fugle
# Ryle
relasyn <- 
  file.path(directory,"/relasyn_10_03_f3_fugle/relasyn_10_03_f3_ryle.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Dunlin','10_03','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f3_ryle <- relasyn

# relasyn_10_03_f3_fugle
# Stormmåge
relasyn <- 
  file.path(directory,"/relasyn_10_03_f3_fugle/relasyn_10_03_f3_stormmåge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_03','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f3_stormmåge <- relasyn

# relasyn_10_03_f3_fugle
# Storspove
relasyn <- 
  file.path(directory,"/relasyn_10_03_f3_fugle/relasyn_10_03_f3_storspove.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Curlew','10_03','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f3_storspove <- relasyn

# relasyn_10_03_f3_fugle
# Sølvhejre
relasyn <- 
  file.path(directory,"/relasyn_10_03_f3_fugle/relasyn_10_03_f3_sølvhejre.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Egret','10_03','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f3_sølvhejre <- relasyn

# relasyn_10_03_f4_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_10_03_f4_fugle/relasyn_10_03_f4_gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','10_03','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f4_gravand <- relasyn

# relasyn_10_03_f4_fugle
# Li.kobbersneppe
relasyn <- 
  file.path(directory,"/relasyn_10_03_f4_fugle/relasyn_10_03_f4_li.kobbersneppe.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Bar-tailed Godwit','10_03','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f4_li.kobbersneppe <- relasyn

# relasyn_10_03_f4_fugle
# Stormmåge
relasyn <- 
  file.path(directory,"/relasyn_10_03_f4_fugle/relasyn_10_03_f4_stormmåge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_03','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f4_stormmåge <- relasyn

# relasyn_10_03_f4_fugle
# Strandskade
relasyn <- 
  file.path(directory,"/relasyn_10_03_f4_fugle/relasyn_10_03_f4_strandskade.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Oystercatcher','10_03','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f4_strandskade <- relasyn

# relasyn_10_03_f4_fugle
# Svartbag
relasyn <- 
  file.path(directory,"/relasyn_10_03_f4_fugle/relasyn_10_03_f4_svartbag.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Black-backed Gull','10_03','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f4_svartbag <- relasyn

# relasyn_10_04_f1_fugle
# Stormmåge
relasyn <- 
  file.path(directory,"/relasyn_10_04_f1_fugle/relasyn_10_04_f1_stormmåge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_04','f1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f1_stormmåge <- relasyn

# relasyn_10_04_f2_fugle
# Stormmåge
relasyn <- 
  file.path(directory,"/relasyn_10_04_f2_fugle/relasyn_10_04_f2_stormmåge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_04','f2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f2_stormmåge <- relasyn

# relasyn_10_04_f3_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_10_04_f3_fugle/relasyn_10_04_f3_gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','10_04','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f3_gravand <- relasyn

# relasyn_10_04_f3_fugle
# Grågås
relasyn <- 
  file.path(directory,"/relasyn_10_04_f3_fugle/relasyn_10_04_f3_grågås.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greylag Goose','10_04','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f3_grågås <- relasyn

# relasyn_10_04_f3_fugle
# Pibeand / Spidsand
relasyn <- 
  file.path(directory,"/relasyn_10_04_f3_fugle/relasyn_10_04_f3_pibeand_spidsand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Wigeon & Pin-tailed Duck','10_04','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f3_pibeand_spidsand <- relasyn

# relasyn_10_04_f3_fugle
# Ryle
relasyn <- 
  file.path(directory,"/relasyn_10_04_f3_fugle/relasyn_10_04_f3_ryle.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Dunlin','10_04','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f3_ryle <- relasyn

# relasyn_10_04_f3_fugle
# Stormmåge
relasyn <- 
  file.path(directory,"/relasyn_10_04_f3_fugle/relasyn_10_04_f3_stormmåge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_04','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f3_stormmåge <- relasyn

# relasyn_10_04_f3_fugle
# Svane
relasyn <- 
  file.path(directory,"/relasyn_10_04_f3_fugle/relasyn_10_04_f3_svane.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Whopper Swan','10_04','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f3_svane <- relasyn

# relasyn_10_04_f4_fugle
# Bramgås
relasyn <- 
  file.path(directory,"/relasyn_10_04_f4_fugle/relasyn_10_04_f4_bramgås.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Barnacle Goose','10_04','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f4_bramgås <- relasyn

# relasyn_10_04_f4_fugle
# Grågås
relasyn <- 
  file.path(directory,"/relasyn_10_04_f4_fugle/relasyn_10_04_f4_grågås.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greylag Goose','10_04','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f4_grågås <- relasyn

# relasyn_10_04_f4_fugle
# Hvidklire
relasyn <- 
  file.path(directory,"/relasyn_10_04_f4_fugle/relasyn_10_04_f4_hvidklire.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greenshank','10_04','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f4_hvidklire <- relasyn

# relasyn_10_04_f4_fugle
# Ryle
relasyn <- 
  file.path(directory,"/relasyn_10_04_f4_fugle/relasyn_10_04_f4_ryle.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Dunlin','10_04','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f4_Dunlin <- relasyn

# relasyn_10_04_f4_fugle
# Stormmåge
relasyn <- 
  file.path(directory,"/relasyn_10_04_f4_fugle/relasyn_10_04_f4_stormmåge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_04','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f4_stormmåge <- relasyn

# relasyn_10_04_f4_fugle
# Storspove
relasyn <- 
  file.path(directory,"/relasyn_10_04_f4_fugle/relasyn_10_04_f4_storspove.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Curlew','10_04','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f4_storspove <- relasyn

# relasyn_10_04_f4_fugle
# Vibe
relasyn <- 
  file.path(directory,"/relasyn_10_04_f4_fugle/relasyn_10_04_f4_vibe.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Northern Lapwing','10_04','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f4_vibe <- relasyn

# relasyn_10_04_f5_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_10_04_f5_fugle/relasyn_10_04_f5_gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','10_04','f5')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f5_gravand <- relasyn

# relasyn_10_04_f5_fugle
# Grågås
relasyn <- 
  file.path(directory,"/relasyn_10_04_f5_fugle/relasyn_10_04_f5_grågås.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greylag Goose','10_04','f5')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f5_grågås <- relasyn

# relasyn_10_04_f5_fugle
# Ryle
relasyn <- 
  file.path(directory,"/relasyn_10_04_f5_fugle/relasyn_10_04_f5_ryle.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Dunlin','10_04','f5')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f5_ryle <- relasyn

# relasyn_10_04_f5_fugle
# Stormmåge
relasyn <- 
  file.path(directory,"/relasyn_10_04_f5_fugle/relasyn_10_04_f5_stormmåge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gulle','10_04','f5')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f5_stormmåge <- relasyn

# relasyn_10_04_f5_fugle
# Storspove
relasyn <- 
  file.path(directory,"/relasyn_10_04_f5_fugle/relasyn_10_04_f5_storspove.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Curlew','10_04','f5')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f5_storspove <- relasyn

# relasyn_10_04_f5_fugle
# Sølvhejre
relasyn <- 
  file.path(directory,"/relasyn_10_04_f5_fugle/relasyn_10_04_f5_sølvhejre.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Egret','10_04','f5')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f5_sølvhejre <- relasyn

# relasyn_10_17_f1_fugle
# Grågås
relasyn <- 
  file.path(directory,"/relasyn_10_17_f1_fugle/relasyn_10_17_f1_grågås.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greylag Goose','10_17','f1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_17_f1_grågås <- relasyn

# relasyn_10_17_f1_fugle
# Ryle
relasyn <- 
  file.path(directory,"/relasyn_10_17_f1_fugle/relasyn_10_17_f1_ryle.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Dunlin','10_17','f1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_17_f1_ryle <- relasyn

# relasyn_10_17_f1_fugle
# Stormmåge
relasyn <- 
  file.path(directory,"/relasyn_10_17_f1_fugle/relasyn_10_17_f1_stormmåge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_17','f1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_17_f1_stormmåge <- relasyn

# relasyn_10_17_f1_fugle
# Storspove
relasyn <- 
  file.path(directory,"/relasyn_10_17_f1_fugle/relasyn_10_17_f1_storspove.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Curlew','10_17','f1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_17_f1_storspove <- relasyn

# relasyn_10_17_f1_fugle
# Strandskade
relasyn <- 
  file.path(directory,"/relasyn_10_17_f1_fugle/relasyn_10_17_f1_strandskade.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Oystercatcher','10_17','f1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_17_f1_strandskade <- relasyn

# relasyn_10_17_f1_fugle
# Sølvhejre
relasyn <- 
  file.path(directory,"/relasyn_10_17_f1_fugle/relasyn_10_17_f1_sølvhejre.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Egret','10_17','f1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_17_f1_sølvhejre <- relasyn

# relasyn_10_17_f2_fugle
# Pibeand
relasyn <- 
  file.path(directory,"/relasyn_10_17_f2_fugle/relasyn_10_17_f2_pibeand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Wigeon','10_17','f2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_17_f2_pibeand <- relasyn

# relasyn_10_17_f2_fugle
# Sølvhejre
relasyn <- 
  file.path(directory,"/relasyn_10_17_f2_fugle/relasyn_10_17_f2_sølvhejre.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Egret','10_17','f2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_17_f2_sølvhejre <- relasyn

# relasyn_10_17_f4_fugle
# Wigeon
relasyn <- 
  file.path(directory,"/relasyn_10_17_f4_fugle/relasyn_10_17_f4_pibeand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Wigeon','10_17','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_17_f4_pibeand <- relasyn

# relasyn_10_17_f4_fugle
# Sølvhejre
relasyn <- 
  file.path(directory,"/relasyn_10_17_f4_fugle/relasyn_10_17_f4_sølvhejre.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Egret','10_17','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_17_f4_sølvhejre <- relasyn

# relasyn_10_27_RD_fugle
# Bramgås
relasyn <- 
  file.path(directory,"/relasyn_10_27_RD_fugle/relasyn_10_27_RD_bramgås.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Barnacle Goose','10_27','RD')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_27_RD_bramgås <- relasyn

# relasyn_10_27_RD_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_10_27_RD_fugle/relasyn_10_27_RD_Gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','10_27','RD')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_27_RD_gravand <- relasyn

# relasyn_10_27_RD_fugle
# Grågås
relasyn <- 
  file.path(directory,"/relasyn_10_27_RD_fugle/relasyn_10_27_RD_grågås.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greylag Goose','10_27','RD')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_27_RD_grågås <- relasyn

# relasyn_10_27_RD_fugle
# Hjejle
relasyn <- 
  file.path(directory,"/relasyn_10_27_RD_fugle/relasyn_10_27_RD_hjejle.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Golden Plover','10_27','RD')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_27_RD_hjejle <- relasyn

# relasyn_10_27_RD_fugle
# Hvidklire
relasyn <- 
  file.path(directory,"/relasyn_10_27_RD_fugle/relasyn_10_27_RD_hvidklire.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greenshank','10_27','RD')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_27_RD_hvidklire <- relasyn

# relasyn_10_27_RD_fugle
# Klyde
relasyn <- 
  file.path(directory,"/relasyn_10_27_RD_fugle/relasyn_10_27_RD_klyde.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Avocet','10_27','RD')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_27_RD_klyde <- relasyn

# relasyn_10_27_RD_fugle
# Li.kobbersneppe
relasyn <- 
  file.path(directory,"/relasyn_10_27_RD_fugle/relasyn_10_27_RD_li.kobbersneppe.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Bar-tailed Godwit','10_27','RD')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_27_RD_li.kobbersneppe <- relasyn

# relasyn_10_27_RD_fugle
# Pibeand
relasyn <- 
  file.path(directory,"/relasyn_10_27_RD_fugle/relasyn_10_27_RD_pibeand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Wigeon','10_27','RD')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_27_RD_pibeand <- relasyn

# relasyn_10_27_RD_fugle
# Ryle
relasyn <- 
  file.path(directory,"/relasyn_10_27_RD_fugle/relasyn_10_27_RD_ryle.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Dunlin','10_27','RD')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_27_RD_ryle <- relasyn

# relasyn_10_27_RD_fugle
# Spidsand
relasyn <- 
  file.path(directory,"/relasyn_10_27_RD_fugle/relasyn_10_27_RD_spidsand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Pin-tailed Duck','10_27','RD')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_27_RD_spidsand <- relasyn

# relasyn_10_27_RD_fugle
# Storspove
relasyn <- 
  file.path(directory,"/relasyn_10_27_RD_fugle/relasyn_10_27_RD_storspove.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Curlew','10_27','RD')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_27_RD_storspove <- relasyn

# relasyn_10_27_RD_fugle
# Strandskade
relasyn <- 
  file.path(directory,"/relasyn_10_27_RD_fugle/relasyn_10_27_RD_strandskade.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Oystercatcher','10_27','RD')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_27_RD_strandskade <- relasyn

# relasyn_11_14_f1_2_fugle
# Bramgås
relasyn <- 
  file.path(directory,"/relasyn_11_14_f1_2_fugle/relasyn_11_14_f1_2_bramgås.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Barnacle Goose','11_14','f1_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_14_f1_2_bramgås <- relasyn

# relasyn_11_14_f1_2_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_11_14_f1_2_fugle/relasyn_11_14_f1_2_gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','11_14','f1_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_14_f1_2_gravand <- relasyn

# relasyn_11_14_f1_2_fugle
# Stormmåge
relasyn <- 
  file.path(directory,"/relasyn_11_14_f1_2_fugle/relasyn_11_14_f1_2_stormmåge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','11_14','f1_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_14_f1_2_stormmåge <- relasyn

# relasyn_11_14_f3.2_v_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_11_14_f3.2_v_fugle/relasyn_11_14_f3_v_gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','11_14','f3_v')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_14_f3_v_gravand <- relasyn

# relasyn_11_14_f3.2_v_fugle
# Pibeand
relasyn <- 
  file.path(directory,"/relasyn_11_14_f3.2_v_fugle/relasyn_11_14_f3_v_pibeand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Wigeon','11_14','f3_v')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_14_f3_v_pibeand <- relasyn

# relasyn_11_14_f3.2_v_fugle
# Storspove
relasyn <- 
  file.path(directory,"/relasyn_11_14_f3.2_v_fugle/relasyn_11_14_f3_v_storspove.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Curlew','11_14','f3_v')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_14_f3_v_storspove <- relasyn

# relasyn_11_14_f3.2_v_fugle
# Vibe
relasyn <- 
  file.path(directory,"/relasyn_11_14_f3.2_v_fugle/relasyn_11_14_f3_v_vibe.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Northern Lapwing','11_14','f3_v')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_14_f3_v_vibe <- relasyn

# relasyn_11_14_f3_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_11_14_f3_fugle/relasyn_11_14_f3_gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','11_14','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_14_f3_gravand <- relasyn

# relasyn_11_14_f3_fugle
# Pibeand
relasyn <- 
  file.path(directory,"/relasyn_11_14_f3_fugle/relasyn_11_14_f3_pibeand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Wigeon','11_14','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_14_f3_pibeand <- relasyn

# relasyn_11_14_f3_fugle
# Stormmåge
relasyn <- 
  file.path(directory,"/relasyn_11_14_f3_fugle/relasyn_11_14_f3_stormmåge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','11_14','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_14_f3_stormmåge <- relasyn

# relasyn_11_14_f3_fugle
# Storspove
relasyn <- 
  file.path(directory,"/relasyn_11_14_f3_fugle/relasyn_11_14_f3_storspove.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Curlew','11_14','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_14_f3_storspove <- relasyn

# relasyn_11_14_f3_fugle
# Vibe
relasyn <- 
  file.path(directory,"/relasyn_11_14_f3_fugle/relasyn_11_14_f3_vibe.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Nothern Lapwing','11_14','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_14_f3_vibe <- relasyn

# relasyn_11_15_f1_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_11_15_f1_fugle/relasyn_11_15_f1_gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','11_15','f1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_15_f1_gravand <- relasyn

# relasyn_11_15_f1_fugle
# Klyde
relasyn <- 
  file.path(directory,"/relasyn_11_15_f1_fugle/relasyn_11_15_f1_klyde.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Avocet','11_15','f1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_15_f1_klyde <- relasyn

# relasyn_11_15_v_fugle
# Gravand
relasyn <- 
  file.path(directory,"/relasyn_11_15_v_fugle/relasyn_11_15_v_gravand.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Shelduck','11_15','f1_v')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_15_v_gravand <- relasyn

# relasyn_11_15_v_fugle
# Fiskehejre
relasyn <- 
  file.path(directory,"/relasyn_11_15_v_fugle/relasyn_11_15_v_hjejle.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Golden Plover','11_15','f1_v')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_15_v_fiskehejre <- relasyn

# relasyn_11_15_v_fugle
# Vibe
relasyn <- 
  file.path(directory,"/relasyn_11_15_v_fugle/relasyn_11_15_v_vibe.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Nothern Lapwing','11_15','f1_v')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_15_v_vibe <- relasyn


