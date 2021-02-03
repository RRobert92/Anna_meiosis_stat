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
source("bin/Load_aMTs_MII.R") # Include information which file to load
source("bin/Plot_Generator_Quasirandom.R") # Include plot generation function
source("bin/Stat_Test.R") # Include Anova test function

# Generate Violin plot of all data 
P1 <- ggplot(metaII1_E, aes("metaII1_e", `Data`)) +
  geom_quasirandom(size = 1, color = "red3") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, metaII1_L, "metaII1_l", "indianred1")

P1 <- Plot_generate(P1, metaII2_E, "metaII2_e", "salmon")
P1 <- Plot_generate(P1, metaII2_L, "metaII2_l", "bisque")

P1 <- Plot_generate(P1, lagX6_E, "lagX6_e", "orange2")
P1 <- Plot_generate(P1, lagX6_L, "lagX6_l", "wheat1")

P1 <- Plot_generate(P1, lagX_E, "lagX_e", "lightgoldenrod")
P1 <- Plot_generate(P1, lagX_L, "lagX_l", "lightyellow2")

P1 <- Plot_generate(P1, lagX5_E, "lagX5_e", "chartreuse2")
P1 <- Plot_generate(P1, lagX5_L, "lagX5_l", "darkolivegreen1")

P1 <- Plot_generate(P1, anaII15_E, "anaII15_e", "darkgreen")
P1 <- Plot_generate(P1, anaII15_L, "anaII15_l", "palegreen")

P1 <- Plot_generate(P1, lateanaII2_E, "lateanaII2_e", "dodgerblue1")
P1 <- Plot_generate(P1, lateanaII2_L, "lateanaII2_l", "skyblue1")

P1 <- Plot_generate(P1, lateanaII3_E, "lateanaII3_e", "royalblue4")
P1 <- Plot_generate(P1, lateanaII3_L, "lateanaII3_l", "slategray3")

P1 <- Plot_generate(P1, lateanaII1_E, "lateanaII1_e", "magenta2")
P1 <- Plot_generate(P1, lateanaII1_L, "lateanaII1_l", "pink")

P1 <- Plot_generate(P1, anaII1_E, "anaII1_e", "purple3")
P1 <- Plot_generate(P1, anaII1_L, "anaII1_l", "thistle")
print(P1)

# Statistic analysis: data pre-processing
ANOVA_Test <- rbind(
  data.frame(metaII1_E[1], Name = "metaII1_e"),
  data.frame(metaII2_E[1], Name = "metaII2_e"),
  data.frame(lagX6_E[1], Name = "lagX6_e"),
  data.frame(lagX_E[1], Name = "lagX_e"),
  data.frame(lagX5_E[1], Name = "lagX5_e"),
  data.frame(anaII15_E[1], Name = "anaII15_e"),
  data.frame(lateanaII2_E[1], Name = "lateanaII2_e"),
  data.frame(lateanaII3_E[1], Name = "lateanaII3_e"),
  data.frame(lateanaII1_E[1], Name = "lateanaII1_e"),
  data.frame(anaII1_E[1], Name = "anaII1_e"),
  )

# Statistic analysis: collecting information for Anova test
Anova_Results <- tibble()
Names_List <- list("metaII1_e", "metaII2_e", 
                   "lagX6_e", "lagX_e", "metaII_2_a", "metaII_2_x",
                   "lagX_6_a", "lagX_6_x", "lagX5_e", "anaII15_e", "lateanaII2_e", "lateanaII3_e", "lateanaII1_e",
                   "anaII1_e"
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
write.csv(Anova_Results, file = "Anova_Results_MeiosisII_kMTs_autosomes.csv")
