################################################################################
# Module Generator of a standardized geom_quasirandom plot 
#
# (c) 2020 Kiewisz/Schwarz
# This code is licensed under GPL V3.0 license (see LICENSE.txt for details)
#
# Author: Anna Schwarz
# Created: 2020-12-23
# Reviewed: Robert Kiewisz
################################################################################

Plot_generate <- function(Plot_ID, Data_ID, ID, Color_ID) {
  Plot_ID + geom_quasirandom(data = Data_ID, aes(ID, `Data`), size = 1, color = Color_ID) +
    stat_summary(data = Data_ID, aes(ID, `Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) +
    stat_summary(data = Data_ID, aes(ID, `Data`), fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = Color_ID, width = 0.2)
}
