################################################################################
# Module Statistic analysis for Meiosis data
#
# (c) 2020 Schwarz/Kiewisz
# This code is licensed under GPL V3.0 license (see LICENSE.txt for details)
#
# Author: Anna Schwarz & Robert Kiewisz 
# Created: 2020-12-23
################################################################################

rm(list = ls())

# Import all necessary resources 
source("bin/Library.R") # Include all libraries
source("bin/Load_centrioles.R") # Include information which file to load
source("bin/Plot_Generator_Quasirandom.R") # Include plot generation function
source("bin/Stat_Test.R") # Include Anova test function


# Statistic analysis: data pre-processing
ANOVA_Test <- rbind(
  data.frame(metaI_centrioles[1], Name = "metaI_c"),
  data.frame(anaI_centrioles[1], Name = "anaI_c"),
  data.frame(metaII_centrioles[1], Name = "metaII_c"),
  data.frame(anaII_centrioles[1], Name = "anaII_c"),
  data.frame(lateanaII_centrioles[1], Name = "lateanaII_c")
   )

# Statistic analysis: collecting information for Anova test
Anova_Results <- tibble()
Names_List <- list("metaI_c", "metaII_c", "anaI_c", "anaII_c", "lateanaII_c"
                   )
Repetition <- as.numeric(length(Names_List) - 1)
Counter <- 1

# Statistic analysis: Anova test for all data set
for(i in 1:Repetition){
  k = 1
  j = 2
  
  while (j <= length(Names_List)) {
    Anova_Results[Counter, 1] <- Anova_test(ANOVA_Test, Names_List[[k]], Names_List[[j]])
    Anova_Results[Counter, 2] <- paste(Names_List[[k]], "~", Names_List[[j]], sep = "")
    
    Counter <- Counter + 1
    j <- j + 1
  }
  Names_List <- Names_List[-1]  
}

i <- 1
while (i <= nrow(Anova_Results)) {
  if (Anova_Results[i, 1] > 0.05) {
    Anova_Results[i, 3] <- "ns"
  } else if (Anova_Results[i, 1] >= 0.01 & Anova_Results[i, 1] < 0.05) {
    Anova_Results[i, 3] <- "* P >= 0.05"
  } else if (Anova_Results[i, 1] >= 0.001 & Anova_Results[i, 1] < 0.01) {
    Anova_Results[i, 3] <- "** P >= 0. 01"
  } else if (Anova_Results[i, 1] < 0.001) {
    Anova_Results[i, 3] <- "*** P >= 0.001"
  } else {
    Anova_Results[i, 3] <- "error"
  }
  
  if (i == nrow(Anova_Results)) {
    names(Anova_Results)[1] <- "P value"
    names(Anova_Results)[2] <- "test"
    names(Anova_Results)[3] <- "signif."
  }
  i <- i + 1
}


# Save file as csv
write.csv(Anova_Results, file = "Anova_Results_centrioles.csv")
