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
P1 <- ggplot(metaII1a_E, aes("metaII1a_e", `Data`)) +
  geom_quasirandom(size = 1, color = "red3") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, metaII1a_L, "metaII1a_l", "indianred1")

P1 <- Plot_generate(P1, metaII2a_E, "metaII2a_e", "salmon")
P1 <- Plot_generate(P1, metaII2a_L, "metaII2a_l", "bisque")

P1 <- Plot_generate(P1, lagX6a_E, "lagX6a_e", "orange2")
P1 <- Plot_generate(P1, lagX6a_L, "lagX6a_l", "wheat1")

P1 <- Plot_generate(P1, lagXa_E, "lagXa_e", "lightgoldenrod")
P1 <- Plot_generate(P1, lagXa_L, "lagXa_l", "lightyellow2")

P1 <- Plot_generate(P1, lagX5a_E, "lagX5a_e", "chartreuse2")
P1 <- Plot_generate(P1, lagX5a_L, "lagX5a_l", "darkolivegreen1")

P1 <- Plot_generate(P1, anaII15a_E, "anaII15a_e", "darkgreen")
P1 <- Plot_generate(P1, anaII15a_L, "anaII15a_l", "palegreen")

P1 <- Plot_generate(P1, lateanaII2a_E, "lateanaII2a_e", "dodgerblue1")
P1 <- Plot_generate(P1, lateanaII2a_L, "lateanaII2a_l", "skyblue1")

P1 <- Plot_generate(P1, lateanaII3a_E, "lateanaII3a_e", "royalblue4")
P1 <- Plot_generate(P1, lateanaII3a_L, "lateanaII3a_l", "slategray3")

P1 <- Plot_generate(P1, lateanaII1a_E, "lateanaII1a_e", "magenta2")
P1 <- Plot_generate(P1, lateanaII1a_L, "lateanaII1a_l", "pink")

P1 <- Plot_generate(P1, anaII1a_E, "anaII1a_e", "purple3")
P1 <- Plot_generate(P1, anaII1a_L, "anaII1a_l", "thistle")
print(P1)

# Statistic analysis: data pre-processing
ANOVA_Test <- rbind(
  data.frame(metaII1a_E[1], Name = "metaII1a_e"),
  data.frame(metaII2a_E[1], Name = "metaII2a_e"),
  data.frame(lagX6a_E[1], Name = "lagX6a_e"),
  data.frame(lagXa_E[1], Name = "lagXa_e"),
  data.frame(lagX5a_E[1], Name = "lagX5a_e"),
  data.frame(anaII15a_E[1], Name = "anaII15a_e"),
  data.frame(lateanaII2a_E[1], Name = "lateanaII2a_e"),
  data.frame(lateanaII3a_E[1], Name = "lateanaII3a_e"),
  data.frame(lateanaII1a_E[1], Name = "lateanaII1a_e"),
  data.frame(anaII1a_L[1], Name = "anaII1a_e"),
  data.frame(metaII1a_L[1], Name = "metaII1a_l"),
  data.frame(metaII2a_L[1], Name = "metaII2a_l"),
  data.frame(lagX6a_L[1], Name = "lagX6a_l"),
  data.frame(lagXa_L[1], Name = "lagXa_l"),
  data.frame(lagX5a_L[1], Name = "lagX5a_l"),
  data.frame(anaII15a_L[1], Name = "anaII15a_l"),
  data.frame(lateanaII2a_L[1], Name = "lateanaII2a_l"),
  data.frame(lateanaII3a_L[1], Name = "lateanaII3a_l"),
  data.frame(lateanaII1a_L[1], Name = "lateanaII1a_l"),
  data.frame(anaII1a_L[1], Name = "anaII1a_l")
  )

# Statistic analysis: collecting information for Anova test
Anova_Results <- tibble()
Names_List <- list("metaII1a_e", "metaII2a_e", 
                   "lagX6a_e", "lagXa_e",  "lagX5a_e", "anaII15a_e", "lateanaII2a_e", "lateanaII3a_e", "lateanaII1a_e",
                   "anaII1a_e", "metaII1a_l", "metaII2a_l", 
                   "lagX6a_l", "lagXa_l",  "lagX5a_l", "anaII15a_l", "lateanaII2a_l", "lateanaII3a_l", "lateanaII1a_l",
                   "anaII1a_l"
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
write.csv(Anova_Results, file = "Anova_Results_MeiosisII_kMTs_autosomes.csv")
