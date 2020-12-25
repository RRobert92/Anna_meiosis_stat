################################################################################
# Module Generator output for anova test 
#
# (c) 2020 Schwarz/Kiewisz
# This code is licensed under GPL V3.0 license (see LICENSE.txt for details)
#
# Author: Anna Schwarz & Robert Kiewisz 
# Created: 2020-12-23
################################################################################

Anova_test <- function(Data_ID, First_ID, Second_ID){
  summary(aov(Data ~ Name, data = Data_ID[with(Data_ID, Name == First_ID | Name == Second_ID), ]))[[1]]$`Pr(>F)`[1]
}