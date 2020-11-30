
p_relasyn <- ggplot(data = relasyn_RASTERVALU_MEAS, aes(x = MEAS, y = RASTERVALU)) + 
  facet_wrap(~art)

p_relasyn + geom_point() +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 2.3) +theme_bw()  + 
  theme(legend.background = element_rect(colour = 'black', fill = 'white', linetype='solid')) +
  ylim(0,5) +
  #  scale_color_manual(values = c('Phantom' = "red4",'Mavic' = "navy")) +
  ggtitle("Escape distance") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Distance from edge of foreland") + ylab("Height to be added for visibility (m)")


# prøv at tilføje niveau til RASTERVALU
relasyn_trim <- relasyn_dist
relasyn_trim$RASTERVALU <- relasyn_dist$RASTERVALU-.8
relasyn_trim$RASTERVALU[relasyn_trim$RASTERVALU < 0] <- 0
# Plot alle dist
plot(relasyn_trim$distance, relasyn_trim$RASTERVALU,ylim = c(0,4), cex=0.7)

# Oprindeligt data
plot(relasyn_RASTERVALU_MEAS$MEAS, relasyn_dist$RASTERVALU,ylim = c(0,4), cex=0.7)


# ALT DATA
library(ggplot2)
my.formula <- y ~ x
p_relasyn <- ggplot(data = relasyn_RASTERVALU_MEAS, aes(x = MEAS, y = RASTERVALU))

p_relasyn + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) + theme_bw() +
  ggtitle("Relative visibility from seawall") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Distance from edge of foreland") + ylab("Height to be added for visibility (m)") +
  ylim(0,5) +
  stat_poly_eq(formula = my.formula, aes(label = paste0
                                         ("atop(", ..eq.label.., ",", ..rr.label.., ")")),
               rr.digits = 3, parse = TRUE, size = 3.5,
               eq.with.lhs = "y~`=`~",coef.digits = 2, eq.x.rhs = T,
               label.x.npc = c(0.96,0.96), label.y = c(10.9, -10.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(10), label.y = c(20), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE)


# ALT DATA undtagen RD
my.formula <- y ~ x
p_relasyn <- ggplot(data = relasyn_RASTERVALU_MEAS_altudenRD, aes(x = MEAS, y = RASTERVALU))

p_relasyn + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) + theme_bw() +
  ggtitle("Relative visibility from seawall") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Distance from edge of foreland") + ylab("Height to be added for visibility (m)") +
  ylim(0,5) +
  stat_poly_eq(formula = my.formula, aes(label = paste0
                                         ("atop(", ..eq.label.., ",", ..rr.label.., ")")),
               rr.digits = 3, parse = TRUE, size = 3.5,
               eq.with.lhs = "y~`=`~",coef.digits = 2, eq.x.rhs = T,
               label.x.npc = c(0.96,0.96), label.y = c(10.9, -10.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(10), label.y = c(20), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE)

# for de første 500 m
p_relasyn <- ggplot(data = relasyn_RASTERVALU_MEAS, aes(x = MEAS, y = RASTERVALU))

p_relasyn + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) + theme_bw() +
  ggtitle("Relative visibility from seawall") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Distance from edge of foreland") + ylab("Height to be added for visibility (m)") +
  ylim(0,5) + xlim(0,500) +
  stat_poly_eq(formula = my.formula, aes(label = paste0
                                         ("atop(", ..eq.label.., ",", ..rr.label.., ")")),
               rr.digits = 3, parse = TRUE, size = 3.5,
               eq.with.lhs = "y~`=`~",coef.digits = 2, eq.x.rhs = T,
               label.x.npc = c(0.96,0.96), label.y = c(10.9, -10.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(10), label.y = c(20), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE)



# Plot data med afstande til obsposter

my.formula <- y ~ x
p_relasyn <- ggplot(data = relasyn_dist_obsposter, aes(x = distance, y = RASTERVALU))

p_relasyn + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) + theme_bw() +
  ggtitle("Relative visibility from seawall") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Distance from edge of foreland") + ylab("Height to be added for visibility (m)") +
  ylim(0,2.5) +
  stat_poly_eq(formula = my.formula, aes(label = paste0
                                         ("atop(", ..eq.label.., ",", ..rr.label.., ")")),
               rr.digits = 3, parse = TRUE, size = 3.5,
               eq.with.lhs = "y~`=`~",coef.digits = 2, eq.x.rhs = T,
               label.x.npc = c(0.96,0.96), label.y = c(10.9, -10.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(10), label.y = c(20), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE)



###### Trim datasæt, så der kun er entries med værider i RASTERVALU på over 0
relasyn_RASTERVALU_MEAS_trim <- relasyn_RASTERVALU_MEAS
relasyn_RASTERVALU_MEAS_trim <- relasyn_RASTERVALU_MEAS_trim[which(relasyn_RASTERVALU_MEAS_trim[,'RASTERVALU']>0.01),]
unique(relasyn_RASTERVALU_MEAS_trim$RASTERVALU)

p_relasyn <- ggplot(data = relasyn_RASTERVALU_MEAS_trim, aes(x = MEAS, y = RASTERVALU))

p_relasyn + geom_point(cex=.1 ) +
  geom_smooth(method = "lm", se = FALSE,  fullrange = TRUE, span = 0.7) + theme_bw() +
  ggtitle("Relative visibility from seawall") + theme(plot.title = element_text(hjust = 0.5)) + 
  xlab("Distance from edge of foreland") + ylab("Height to be added for visibility (m)") +
  ylim(0,5) +
  stat_poly_eq(formula = my.formula, aes(label = paste0
                                         ("atop(", ..eq.label.., ",", ..rr.label.., ")")),
               rr.digits = 3, parse = TRUE, size = 3.5,
               eq.with.lhs = "y~`=`~",coef.digits = 2, eq.x.rhs = T,
               label.x.npc = c(0.96,0.96), label.y = c(10.9, -10.03)) +
  stat_fit_glance(method = 'lm',
                  method.args = list(formula = my.formula),
                  geom = 'text',
                  aes(label = paste("p=", signif(..p.value.., digits = 2), sep = "")),
                  label.x = c(10), label.y = c(20), size = 3.5) +
  stat_fit_tb(method = "lm",
              method.args = list(formula = my.formula),
              tb.vars = c(Parameter = "term", 
                          Estimate = "estimate", 
                          "s.e." = "std.error", 
                          "italic(t)" = "statistic", 
                          "italic(P)" = "p.value"),
              label.y = "top", label.x = "left",
              parse = TRUE)