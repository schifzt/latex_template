# Reference
# 	componentsにelementsを代入することでスタイルは決まる
# 	https://ggplot2.tidyverse.org/reference/theme.html
# 	https://ggplot2.tidyverse.org/reference/element.html
#
# Usage
# 	g <- g + theme_m()
# 	g <- g + 
# 	  scale_x_continuous(sec.axis = dup_axis()) +
# 	  scale_y_continuous(sec.axis = dup_axis())

theme_m <- function() {
	return(
		theme_linedraw() +
		theme(
			# Inward axis(t,b,l,r)
			axis.ticks.length = unit(-0.25, "cm"), 
  			axis.text.x.bottom = element_text(size = 16, margin = margin(t = 0.35, unit = "cm")),
  			axis.text.y.left = element_text(size = 16, margin = margin(r = 0.35, unit = "cm")),
			
			# Remove secondary axis label
  			axis.text.x.top = element_text(size = 0, margin = margin(b = 0.35, unit = "cm")),
  			axis.text.y.right = element_text(size = 0, margin = margin(l = 0.35, unit = "cm")),

			# Vivid axis 
			axis.line = element_line(size = 0.5),
			axis.ticks = element_line(size = 0.5),

			# ==============================

			# Legend float position
			legend.position = c(.05, .99),
			legend.justification = c("left", "top"),
			legend.box.just = "left",
			legend.margin = margin(6, 6, 6, 6),
			
			# Legened color
  			legend.background = element_rect(fill="white", size=0.5, linetype="solid", colour="black"),

			# ==============================

			# Remove title
			axis.title.x = element_blank(), 
			axis.title.y = element_blank(),

			# Remove grid line (optional)
  			# panel.grid = element_blank(),
		)
	)
}