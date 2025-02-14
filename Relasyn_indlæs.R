# S�t directory
directory <- "G:/Vadehavet/GIS_projekts/Projekter_Blindzone/Blindzone_samlet_relasyn_fugle_csv"

### Enkelte overflyvninger /datoer

# relasyn_09_26_f1+2_fugle
# Bramg�s
relasyn <- 
  file.path(directory,"/relasyn_09_26_f1_2_fugle/relasyn_09_26_f1_2_bramg�s.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Barnacle Goose','09_26','1_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_26_f1_2_bramg�s <- relasyn

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
# Stormm�ge
relasyn <- 
  file.path(directory,"/relasyn_09_26_f3_4_fugle/relasyn_09_f3_4_stormm�ge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','09_26','3_4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_26_f3_4_stormm�ge <- relasyn

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
# Gr�g�s
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_1_fugle/relasyn_09_27_RD_1_gr�g�s.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greylag Goose','09_27','RD_1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_1_gr�g�s <- relasyn

# relasyn_09_27_RD_1_fugle
# Hav�rn
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_1_fugle/relasyn_09_27_RD_1_hav�rn.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'White-tailed Eagle','09_27','RD_1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_1_hav�rn <- relasyn

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
# Bramg�s
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_2_fugle/relasyn_09_27_RD_2_bramg�s.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Barnacle Goose','09_27','RD_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_2_bramg�s <- relasyn

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
# Gr�g�s
relasyn <- 
  file.path(directory,"/relasyn_09_27_RD_2_fugle/relasyn_09_27_RD_2_gr�g�s.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greylag Goose','09_27','RD_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_09_27_RD_2_gr�g�s <- relasyn

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
# Stormm�ge
relasyn <- 
  file.path(directory,"/relasyn_10_03_f2_fugle/relasyn_10_03_f2_stormm�ge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_03','f2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f2_stormm�ge <- relasyn

# relasyn_10_03_f2_fugle
# s�lvhejre
relasyn <- 
  file.path(directory,"/relasyn_10_03_f2_fugle/relasyn_10_03_f2_s�lvhejre.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Egret','10_03','f2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f2_s�lvhejre <- relasyn

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
# Stormm�ge
relasyn <- 
  file.path(directory,"/relasyn_10_03_f3_fugle/relasyn_10_03_f3_stormm�ge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_03','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f3_stormm�ge <- relasyn

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
# S�lvhejre
relasyn <- 
  file.path(directory,"/relasyn_10_03_f3_fugle/relasyn_10_03_f3_s�lvhejre.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Egret','10_03','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f3_s�lvhejre <- relasyn

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
# Stormm�ge
relasyn <- 
  file.path(directory,"/relasyn_10_03_f4_fugle/relasyn_10_03_f4_stormm�ge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_03','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_03_f4_stormm�ge <- relasyn

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
# Stormm�ge
relasyn <- 
  file.path(directory,"/relasyn_10_04_f1_fugle/relasyn_10_04_f1_stormm�ge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_04','f1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f1_stormm�ge <- relasyn

# relasyn_10_04_f2_fugle
# Stormm�ge
relasyn <- 
  file.path(directory,"/relasyn_10_04_f2_fugle/relasyn_10_04_f2_stormm�ge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_04','f2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f2_stormm�ge <- relasyn

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
# Gr�g�s
relasyn <- 
  file.path(directory,"/relasyn_10_04_f3_fugle/relasyn_10_04_f3_gr�g�s.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greylag Goose','10_04','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f3_gr�g�s <- relasyn

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
# Stormm�ge
relasyn <- 
  file.path(directory,"/relasyn_10_04_f3_fugle/relasyn_10_04_f3_stormm�ge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_04','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f3_stormm�ge <- relasyn

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
# Bramg�s
relasyn <- 
  file.path(directory,"/relasyn_10_04_f4_fugle/relasyn_10_04_f4_bramg�s.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Barnacle Goose','10_04','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f4_bramg�s <- relasyn

# relasyn_10_04_f4_fugle
# Gr�g�s
relasyn <- 
  file.path(directory,"/relasyn_10_04_f4_fugle/relasyn_10_04_f4_gr�g�s.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greylag Goose','10_04','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f4_gr�g�s <- relasyn

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
# Stormm�ge
relasyn <- 
  file.path(directory,"/relasyn_10_04_f4_fugle/relasyn_10_04_f4_stormm�ge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_04','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f4_stormm�ge <- relasyn

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
# Gr�g�s
relasyn <- 
  file.path(directory,"/relasyn_10_04_f5_fugle/relasyn_10_04_f5_gr�g�s.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greylag Goose','10_04','f5')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f5_gr�g�s <- relasyn

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
# Stormm�ge
relasyn <- 
  file.path(directory,"/relasyn_10_04_f5_fugle/relasyn_10_04_f5_stormm�ge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gulle','10_04','f5')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f5_stormm�ge <- relasyn

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
# S�lvhejre
relasyn <- 
  file.path(directory,"/relasyn_10_04_f5_fugle/relasyn_10_04_f5_s�lvhejre.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Egret','10_04','f5')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_04_f5_s�lvhejre <- relasyn

# relasyn_10_17_f1_fugle
# Gr�g�s
relasyn <- 
  file.path(directory,"/relasyn_10_17_f1_fugle/relasyn_10_17_f1_gr�g�s.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greylag Goose','10_17','f1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_17_f1_gr�g�s <- relasyn

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
# Stormm�ge
relasyn <- 
  file.path(directory,"/relasyn_10_17_f1_fugle/relasyn_10_17_f1_stormm�ge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','10_17','f1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_17_f1_stormm�ge <- relasyn

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
# S�lvhejre
relasyn <- 
  file.path(directory,"/relasyn_10_17_f1_fugle/relasyn_10_17_f1_s�lvhejre.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Egret','10_17','f1')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_17_f1_s�lvhejre <- relasyn

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
# S�lvhejre
relasyn <- 
  file.path(directory,"/relasyn_10_17_f2_fugle/relasyn_10_17_f2_s�lvhejre.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Egret','10_17','f2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_17_f2_s�lvhejre <- relasyn

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
# S�lvhejre
relasyn <- 
  file.path(directory,"/relasyn_10_17_f4_fugle/relasyn_10_17_f4_s�lvhejre.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Egret','10_17','f4')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_17_f4_s�lvhejre <- relasyn

# relasyn_10_27_RD_fugle
# Bramg�s
relasyn <- 
  file.path(directory,"/relasyn_10_27_RD_fugle/relasyn_10_27_RD_bramg�s.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Barnacle Goose','10_27','RD')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_27_RD_bramg�s <- relasyn

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
# Gr�g�s
relasyn <- 
  file.path(directory,"/relasyn_10_27_RD_fugle/relasyn_10_27_RD_gr�g�s.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Greylag Goose','10_27','RD')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_10_27_RD_gr�g�s <- relasyn

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
# Bramg�s
relasyn <- 
  file.path(directory,"/relasyn_11_14_f1_2_fugle/relasyn_11_14_f1_2_bramg�s.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Barnacle Goose','11_14','f1_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_14_f1_2_bramg�s <- relasyn

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
# Stormm�ge
relasyn <- 
  file.path(directory,"/relasyn_11_14_f1_2_fugle/relasyn_11_14_f1_2_stormm�ge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','11_14','f1_2')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_14_f1_2_stormm�ge <- relasyn

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
# Stormm�ge
relasyn <- 
  file.path(directory,"/relasyn_11_14_f3_fugle/relasyn_11_14_f3_stormm�ge.csv")
relasyn <- read.csv(file=relasyn,header= TRUE)

relasyn <- cbind(relasyn[-c(1)],'Common Gull','11_14','f3')
colnames(relasyn) <- c('RASTERVALU','xcoord','ycoord','art','dato','flight_nr')
head(relasyn)
# Giv unikt navn
relasyn_11_14_f3_stormm�ge <- relasyn

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


