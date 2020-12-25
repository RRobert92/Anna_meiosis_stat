################################################################################
# Module Generator output for anova test 
#
# (c) 2020 Schwarz/Kiewisz
# This code is licensed under GPL V3.0 license (see LICENSE.txt for details)
#
# Author: Anna Schwarz & Robert Kiewisz 
# Created: 2020-12-23
#
# Usage example: Anova_test(Data_ID, First_ID, Second_ID)
#
# Where Data_ID - Data name, given as data frame name
# Where First_ID - First name of the column of a Data_ID 
# Where Second_ID - Second name of the column of a Data_ID 
################################################################################

Anova_test <- function(Data_ID, First_ID, Second_ID){
  summary(aov(Data ~ Name, data = Data_ID[with(Data_ID, Name == First_ID | Name == Second_ID), ]))[[1]]$`Pr(>F)`[1]
}
