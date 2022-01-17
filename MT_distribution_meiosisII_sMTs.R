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
source("bin/Load_sMTs_MII.R") # Include information which file to load
source("bin/Plot_Generator_Quasirandom.R") # Include plot generation function
source("bin/Stat_Test.R") # Include Anova test function

# Generate Violin plot of all data 
P1 <- ggplot(anaI_1_S, aes("anaI1_s", `Data`)) +
  geom_quasirandom(size = 1, color = "gray45") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()

P1 <- Plot_generate(P1, anaI_2_S, "anaI2_s", "black")

P1 <- Plot_generate(P1, metaII1_S, "metaII1_s", "red3")

P1 <- Plot_generate(P1, metaII2_S, "metaII2_s", "salmon")

P1 <- Plot_generate(P1, lagX6_S, "lagX6_s", "orange2")

P1 <- Plot_generate(P1, lagX_S, "lagX_s", "lightgoldenrod")

P1 <- Plot_generate(P1, lagX9_S, "lagX9_s", "goldenrod2")

P1 <- Plot_generate(P1, lagX5_S, "lagX5_s", "chartreuse2")

P1 <- Plot_generate(P1, anaII15_S, "anaII15_s", "darkgreen")

P1 <- Plot_generate(P1, lateanaII2_S, "lateanaII2_s", "dodgerblue1")

P1 <- Plot_generate(P1, lateanaII3_S, "lateanaII3_s", "royalblue4")

P1 <- Plot_generate(P1, lateanaII1_S, "lateanaII1_s", "magenta2")

P1 <- Plot_generate(P1, anaII1_S, "anaII1_s", "purple3")
print(P1)

# Statistic analysis: data pre-processing
ANOVA_Test <- rbind(
  data.frame(anaI_1_S[1], Name = "anaI1_s"),
  data.frame(anaI_2_S[1], Name = "anaI2_s"),
  data.frame(metaII1_S[1], Name = "metaII1_s"),
  data.frame(metaII2_S[1], Name = "metaII2_s"),
  data.frame(lagX6_S[1], Name = "lagX6_s"),
  data.frame(lagX_S[1], Name = "lagX_s"),
  data.frame(lagX9_S[1], Name = "lagX9_s"),
  data.frame(lagX5_S[1], Name = "lagX5_s"),
  data.frame(anaII15_S[1], Name = "anaII15_s"),
  data.frame(lateanaII2_S[1], Name = "lateanaII2_s"),
  data.frame(lateanaII3_S[1], Name = "lateanaII3_s"),
  data.frame(lateanaII1_S[1], Name = "lateanaII1_s"),
  data.frame(anaII1_S[1], Name = "anaII1_s") # There should not be a comma at the end
)

# Statistic analysis: collecting information for Anova test
Anova_Results <- tibble()
Names_List <- list("anaI1_s", "anaI2_s", "metaII1_s", "metaII2_s", "lagX6_s", "lagX_s",
                   "lagX9_s", "lagX5_s", "anaII15_s", "lateanaII2_s", "lateanaII3_s",
                   "lateanaII1_s", "anaII1_s"
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
write.csv(Anova_Results, file = "Anova_Results_MeiosisII_sMTs.csv")