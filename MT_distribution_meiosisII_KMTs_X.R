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
source("bin/Load_xMTs_MII.R") # Include information which file to load
source("bin/Plot_Generator_Quasirandom.R") # Include plot generation function
source("bin/Stat_Test.R") # Include Anova test function

# Generate Violin plot of all data 
P1 <- ggplot(metaII1x_E, aes("metaII1x_e", `Data`)) +
  geom_quasirandom(size = 1, color = "red3") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, metaII1x_L, "metaII1x_l", "indianred1")

P1 <- Plot_generate(P1, metaII2x_E, "metaII2x_e", "salmon")
P1 <- Plot_generate(P1, metaII2x_L, "metaII2x_l", "bisque")

P1 <- Plot_generate(P1, lagX6x_E, "lagX6x_e", "orange2")
P1 <- Plot_generate(P1, lagX6x_L, "lagX6x_l", "wheat1")

P1 <- Plot_generate(P1, lagXx_E, "lagXx_e", "lightgoldenrod")
P1 <- Plot_generate(P1, lagXx_L, "lagXx_l", "lightyellow2")

P1 <- Plot_generate(P1, lagX5x_E, "lagX5x_e", "chartreuse2")
P1 <- Plot_generate(P1, lagX5x_L, "lagX5x_l", "darkolivegreen1")

P1 <- Plot_generate(P1, anaII15x_E, "anaII15x_e", "darkgreen")
P1 <- Plot_generate(P1, anaII15x_L, "anaII15x_l", "palegreen")

P1 <- Plot_generate(P1, lateanaII2x_E, "lateanaII2x_e", "dodgerblue1")
P1 <- Plot_generate(P1, lateanaII2x_L, "lateanaII2x_l", "skyblue1")

P1 <- Plot_generate(P1, lateanaII3x_E, "lateanaII3x_e", "royalblue4")
P1 <- Plot_generate(P1, lateanaII3x_L, "lateanaII3x_l", "slategray3")

P1 <- Plot_generate(P1, lateanaII1x_E, "lateanaII1x_e", "magenta2")
P1 <- Plot_generate(P1, lateanaII1x_L, "lateanaII1x_l", "pink")

P1 <- Plot_generate(P1, anaII1x_E, "anaII1x_e", "purple3")
P1 <- Plot_generate(P1, anaII1x_L, "anaII1x_l", "thistle")
print(P1)

# Statistic analysis: data pre-processing
ANOVA_Test <- rbind(
  data.frame(metaII1x_E[1], Name = "metaII1x_e"),
  data.frame(metaII2x_E[1], Name = "metaII2x_e"),
  data.frame(lagX6x_E[1], Name = "lagX6x_e"),
  data.frame(lagXx_E[1], Name = "lagXx_e"),
  data.frame(lagX5x_E[1], Name = "lagX5x_e"),
  data.frame(anaII15x_E[1], Name = "anaII15x_e"),
  data.frame(lateanaII2x_E[1], Name = "lateanaII2x_e"),
  data.frame(lateanaII3x_E[1], Name = "lateanaII3x_e"),
  data.frame(lateanaII1x_E[1], Name = "lateanaII1x_e"),
  data.frame(anaII1x_E[1], Name = "anaII1x_e")
  )

# Statistic analysis: collecting information for Anova test
Anova_Results <- tibble()
Names_List <- list("metaII1x_e", "metaII2x_e", 
                   "lagX6x_e", "lagXx_e", "lagX5x_e", "anaII15x_e", "lateanaII2x_e", "lateanaII3x_e", "lateanaII1x_e",
                   "anaII1x_e"
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
write.csv(Anova_Results, file = "Anova_Results_MeiosisII_kMTs_X.csv")
