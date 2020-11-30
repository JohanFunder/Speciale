head(samlet_dens_date)

library(ggpubr)
p <- ggboxplot(samlet_dens_date, x = "art", y = "RASTERVALU",
               color = "black", palette = c("black", "grey"),
               notch=T,fill = "id",alpha=0.5)
p +
  xlab(NULL) + ylab(bquote('Density estimate ('~ m^2*')')) + ylim(0,12) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=12) +
  scale_x_discrete(breaks=unique(samlet_dens$art),
                   labels=addline_format(unique(samlet_dens$art))) +
  theme(plot.margin = margin(0.1, 1, 0.1, 0.1, "cm"),axis.text=element_text(size=9),
        axis.title=element_text(size=14,face=1),
        strip.text = element_text(face=2, size=9.5),legend.text = element_text(size = 12),
        legend.title = element_text(size = 13),legend.position = "top") +
  scale_fill_manual(breaks = c("RD_27_09", "RD_23_10"), values = c("black", "grey"),
                    labels = c("Field day 1", "Field day 2"),name="Date")



# Prøv at opdele i vadefugle og ænde/gæs
art_vade <- c("Dunlin","Golden Plover","Avocet","Bar-tailed Godwit",
              "Oystercatcher")
art_ande <- c("Wigeon","Pin-tailed Duck",
              "Shelduck","Barnacle Goose",
              "Greylag Goose")
samlet_dens_date_vade <-  samlet_dens_date[is.element(samlet_dens_date$art, art_vade),]
samlet_dens_date_ande <-  samlet_dens_date[is.element(samlet_dens_date$art, art_ande),]

#vadefugle
p <- ggboxplot(samlet_dens_date_vade, x = "art", y = "RASTERVALU",
               color = "black", palette = c("black", "grey"),
               notch=T,fill = "id",alpha=0.5)
p +
  xlab(NULL) + ylab(bquote('Density estimate ('~ m^2*')')) + ylim(0,12) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=12) +
  scale_x_discrete(breaks=unique(samlet_dens$art),
                   labels=addline_format(unique(samlet_dens$art))) +
  theme(plot.margin = margin(0.1, 1, 0.1, 0.1, "cm"),axis.text=element_text(size=9),
        axis.title=element_text(size=14,face=1),
        strip.text = element_text(face=2, size=9.5),legend.text = element_text(size = 12),
        legend.title = element_text(size = 13),legend.position = "top") +
  scale_fill_manual(values = c("black", "grey"),
                    name="Date", # Legend label, use darker colors
                    labels=c("Field day 1","Field day 1"))

# andefulge
p <- ggboxplot(samlet_dens_date_ande, x = "art", y = "RASTERVALU",
               color = "black", palette = c("black", "grey"),
               notch=T,fill = "id",alpha=0.5)
p +
  xlab(NULL) + ylab(bquote('Density estimate ('~ m^2*')')) + ylim(0,1) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=12) +
  scale_x_discrete(breaks=unique(samlet_dens$art),
                   labels=addline_format(unique(samlet_dens$art))) +
  theme(plot.margin = margin(0.1, 1, 0.1, 0.1, "cm"),axis.text=element_text(size=9),
        axis.title=element_text(size=14,face=1),
        strip.text = element_text(face=2, size=9.5),legend.text = element_text(size = 12),
        legend.title = element_text(size = 13),legend.position = "top") +
  scale_fill_manual(values = c("black", "grey"),
                    name="Date", # Legend label, use darker colors
                    labels=c("Field day 1","Field day 1"))



