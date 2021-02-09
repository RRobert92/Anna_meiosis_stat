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
  Plot_ID + geom_boxplot(data = Data_ID, aes(ID, `Data`), outlier.size = 5,  fill = Color_ID, alpha = 0.5)
}
