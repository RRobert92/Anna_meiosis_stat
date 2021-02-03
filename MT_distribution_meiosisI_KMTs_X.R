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
source("bin/Load_xMTs_MI.R") # Include information which file to load
source("bin/Plot_Generator_Quasirandom.R") # Include plot generation function
source("bin/Stat_Test.R") # Include Anova test function

# Generate Violin plot of all data 
P1 <- ggplot(metaI5x_E, aes("metaI5x_e", `Data`)) +
  geom_quasirandom(size = 1, color = "red3") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, metaI5x_L, "metaI5x_l", "indianred1")

P1 <- Plot_generate(P1, metaI7x_E, "metaI7x_e", "orange2")
P1 <- Plot_generate(P1, metaI7x_L, "metaI7x_l", "wheat1")

P1 <- Plot_generate(P1, metaIx_E, "metaIx_e", "gold1")
P1 <- Plot_generate(P1, metaIx_L, "metaIx_l", "khaki1")

print(P1)

# Statistic analysis: data pre-processing
ANOVA_Test <- rbind(
  data.frame(metaI5x_E[1], Name = "metaI5x_e"),
  data.frame(metaI5x_L[1], Name = "metaI5x_l"),
  data.frame(metaI7x_E[1], Name = "metaI7x_e"),
  data.frame(metaI7x_L[1], Name = "metaI7x_l"),
  data.frame(metaIx_E[1], Name = "metaIx_e"),
  data.frame(metaIx_L[1], Name = "metaIx_l") # There should not be a comma at the end
   )

# Statistic analysis: collecting information for Anova test
Anova_Results <- tibble()
Names_List <- list("metaI5x_e", "metaI7x_e", "metaIx_e", 
                   "metaI5x_l", "metaI7x_l", "metaIx_l"
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
  if (Anova_Results[i, 1] >= 0.05) {
    Anova_Results[i, 3] <- ". P >= 0.1"
  } else if (Anova_Results[i, 1] >= 0.01 & Anova_Results[i, 1] < 0.05) {
    Anova_Results[i, 3] <- "* P >= 0.05"
  } else if (Anova_Results[i, 1] >= 0.001 & Anova_Results[i, 1] < 0.01) {
    Anova_Results[i, 3] <- "** P >= 0. 01"
  } else if (Anova_Results[i, 1] >= 0.0001 & Anova_Results[i, 1] < 0.001) {
    Anova_Results[i, 3] <- "*** P >= 0.001"
  } else {
    Anova_Results[i, 3] <- "ns"
  }

  if (i == nrow(Anova_Results)) {
    names(Anova_Results)[1] <- "P value"
    names(Anova_Results)[2] <- "test"
    names(Anova_Results)[3] <- "signif."
  }
  i <- i + 1
}

# Save file as csv
write.csv(Anova_Results, file = "Anova_Results_MeiosisI_kMTs_X.csv")
