## ******* Grupperet Boxplot med signifikans - wilcoxon *******************
# Box plot facetted by "art"
require(ggplot2)
read.csv(file='new_FH_samlet.csv',header = T)

p <- ggboxplot(new_FH_samlet, x = "UAV", y = "hoejde",
               color = "UAV", palette = "jco",
               add = "jitter",
               facet.by = "art", short.panel.labs = T)
# Use only p.format as label. Remove method name.
p + stat_compare_means(label = "p.signif", label.x = 1.5,label.y =92) + ylim(0,100) +
  ylab("Flying altitude (m)")

# I samlet boxplot vindue
# break lines in x-labels
addline_format <- function(x,...){
  gsub('\\(','\n',x)
}

#addline_format <- function(x,...){
#  gsub('\\(',paste0("italic"),x)
#}


# kan måske bruges til italic [*_]

p <- ggboxplot(new_FH_samlet, x = "art", y = "hoejde",
               color = "UAV", palette = "jco",
               add = "jitter")
p + stat_compare_means(aes(group = UAV), label = "p.signif",method ="wilcox.test",label.y =92) +
  stat_compare_means(method = 'kruskal.test', label.y = 100)+ 
  xlab(NULL) + ylab("Flying altitude (m)") + ylim(0,100) +
  rotate_x_text(angle = -50, hjust = c(0,0), vjust = c(1.,1.), size=10.5) +
  scale_x_discrete(breaks=unique(new_FH_samlet$art),
                   labels=addline_format(unique(new_FH_samlet$art))) +
  theme(plot.margin = margin(0.1, 1, 0.1, 0.1, "cm"))