################################################################################
# Module Generator of a standardized geom_quasirandom plot 
#
# (c) 2020 Schwarz/Kiewisz
# This code is licensed under GPL V3.0 license (see LICENSE.txt for details)
#
# Author: Anna Schwarz & Robert Kiewisz 
# Created: 2020-12-23
#
# Usage example: Plot_generate(Plot_ID, Data_ID, ID, Color_ID)
#
# Where Plot_ID - ID of the initial plot, given as vector
# Where Data_ID - Data name, given as data frame name
# Where ID - Column name of Data_ID to plot
# Where Color_ID - Name of the color, given as a character
################################################################################

Plot_generate <- function(Plot_ID, Data_ID, ID, Color_ID) {
  Plot_ID + geom_quasirandom(data = Data_ID, aes(ID, `Data`), size = 2, color = Color_ID) +
    stat_summary(data = Data_ID, aes(ID, `Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) +
    stat_summary(data = Data_ID, aes(ID, `Data`), fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) 
}
