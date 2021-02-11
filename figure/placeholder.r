# Arguments:
#   target: {"mse"}
#   flex: {"p"}

setwd("pass/to/the/directory/")


library(ggplot2)
g <- ggplot()
g <- g + theme_minimal() + theme(legend.background = element_rect(colour = "white", fill = "white"))

# Export figure size: 8.6 x 5.6
ggsave("placeholder.pdf", height = 14, width = 21, units = "cm", device=cairo_pdf)
