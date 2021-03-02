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
source("bin/Load_sMTs_MII.R") # Include information which file to load
source("bin/Load_xMTs_MII.R") # Include information which file to load
source("bin/Plot_Generator_Quasirandom.R") # Include plot generation function
source("bin/Stat_Test.R") # Include Anova test function

# Generate Violin plot of all data 
P1 <- ggplot(metaII1_S, aes("metaII1_s", `Data`)) +
  geom_quasirandom(size = 2, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, metaII1a_E, "metaII1a_e", "yellow3")
P1 <- Plot_generate(P1, metaII1a_L, "metaII1a_l", "lightgoldenrod")
P1 <- Plot_generate(P1, metaII1x_E, "metaII1x_e", "salmon4")
P1 <- Plot_generate(P1, metaII1x_L, "metaII1x_l", "sandybrown")
print (P1)

P1 <- ggplot(metaII2_S, aes("metaII2_s", `Data`)) +
  geom_quasirandom(size = 2, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, metaII2a_E, "metaII2a_e", "yellow3")
P1 <- Plot_generate(P1, metaII2a_L, "metaII2a_l", "lightgoldenrod")
P1 <- Plot_generate(P1, metaII2x_E, "metaII2x_e", "salmon4")
P1 <- Plot_generate(P1, metaII2x_L, "metaII2x_l", "sandybrown")
print (P1)

P1 <- ggplot(lagX6_S, aes("lagX6_s", `Data`)) +
  geom_quasirandom(size = 2, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, lagX6a_E, "lagX6a_e", "yellow3")
P1 <- Plot_generate(P1, lagX6a_L, "lagX6a_l", "lightgoldenrod")
P1 <- Plot_generate(P1, lagX6x_E, "lagX6x_e", "salmon4")
P1 <- Plot_generate(P1, lagX6x_L, "lagX6x_l", "sandybrown")
print (P1)

P1 <- ggplot(lagX_S, aes("lagX_s", `Data`)) +
  geom_quasirandom(size = 2, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, lagXa_E, "lagXa_e", "yellow3")
P1 <- Plot_generate(P1, lagXa_L, "lagXa_l", "lightgoldenrod")
P1 <- Plot_generate(P1, lagXx_E, "lagXx_e", "salmon4")
P1 <- Plot_generate(P1, lagXx_L, "lagXx_l", "sandybrown")
print (P1)

P1 <- ggplot(lagX5_S, aes("lagX5_s", `Data`)) +
  geom_quasirandom(size = 2, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, lagX5a_E, "lagX5a_e", "yellow3")
P1 <- Plot_generate(P1, lagX5a_L, "lagX5a_l", "lightgoldenrod")
P1 <- Plot_generate(P1, lagX5x_E, "lagX5x_e", "salmon4")
P1 <- Plot_generate(P1, lagX5x_L, "lagX5x_l", "sandybrown")
print (P1)

P1 <- ggplot(anaII15_S, aes("anaII15_s", `Data`)) +
  geom_quasirandom(size = 2, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, anaII15a_E, "anaII15a_e", "yellow3")
P1 <- Plot_generate(P1, anaII15a_L, "anaII15a_l", "lightgoldenrod")
P1 <- Plot_generate(P1, anaII15x_E, "anaII15x_e", "salmon4")
P1 <- Plot_generate(P1, anaII15x_L, "anaII15x_l", "sandybrown")
print (P1)

P1 <- ggplot(lateanaII2_S, aes("lateanaII2_s", `Data`)) +
  geom_quasirandom(size = 2, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, lateanaII2a_E, "lateanaII2a_e", "yellow3")
P1 <- Plot_generate(P1, lateanaII2a_L, "lateanaII2a_l", "lightgoldenrod")
P1 <- Plot_generate(P1, lateanaII2x_E, "lateanaII2x_e", "salmon4")
P1 <- Plot_generate(P1, lateanaII2x_L, "lateanaII2x_l", "sandybrown")
print (P1)

P1 <- ggplot(lateanaII3_S, aes("lateanaII3_s", `Data`)) +
  geom_quasirandom(size = 2, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, lateanaII3a_E, "lateanaII3a_e", "yellow3")
P1 <- Plot_generate(P1, lateanaII3a_L, "lateanaII3a_l", "lightgoldenrod")
P1 <- Plot_generate(P1, lateanaII3x_E, "lateanaII3x_e", "salmon4")
P1 <- Plot_generate(P1, lateanaII3x_L, "lateanaII3x_l", "sandybrown")
print (P1)

P1 <- ggplot(lateanaII1_S, aes("lateanaII1_s", `Data`)) +
  geom_quasirandom(size = 2, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, lateanaII1a_E, "lateanaII1a_e", "yellow3")
P1 <- Plot_generate(P1, lateanaII1a_L, "lateanaII1a_l", "lightgoldenrod")
P1 <- Plot_generate(P1, lateanaII1x_E, "lateanaII1x_e", "salmon4")
P1 <- Plot_generate(P1, lateanaII1x_L, "lateanaII1x_l", "sandybrown")
print (P1)

P1 <- ggplot(anaII1_S, aes("anaII1_s", `Data`)) +
  geom_quasirandom(size = 2, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, anaII1a_E, "anaII1a_e", "yellow3")
P1 <- Plot_generate(P1, anaII1a_L, "anaII1a_l", "lightgoldenrod")
P1 <- Plot_generate(P1, anaII1x_E, "anaII1x_e", "salmon4")
P1 <- Plot_generate(P1, anaII1x_L, "anaII1x_l", "sandybrown")
print (P1)

# Statistic analysis: data pre-processing
ANOVA_Test <- rbind(
  data.frame(metaII1x_E[1], Name = "metaII1x_e"),
  data.frame(metaII1x_L[1], Name = "metaII1x_l"),
  data.frame(metaII1a_E[1], Name = "metaII1a_e"),
  data.frame(metaII1a_L[1], Name = "metaII1a_l"),
  data.frame(metaII2x_E[1], Name = "metaII2x_e"),
  data.frame(metaII2x_L[1], Name = "metaII2x_l"),
  data.frame(metaII2a_E[1], Name = "metaII2a_e"),
  data.frame(metaII2a_L[1], Name = "metaII2a_l"),
  data.frame(lagX6x_E[1], Name = "lagX6x_e"),
  data.frame(lagX6x_L[1], Name = "lagX6x_l"),
  data.frame(lagX6a_E[1], Name = "lagX6a_e"),
  data.frame(lagX6a_L[1], Name = "lagX6a_l"),
  data.frame(lagXx_E[1], Name = "lagXx_e"),
  data.frame(lagXx_L[1], Name = "lagXx_l"),
  data.frame(lagXa_E[1], Name = "lagXa_e"),
  data.frame(lagXa_L[1], Name = "lagXa_l"),
  data.frame(lagX5x_E[1], Name = "lagX5x_e"),
  data.frame(lagX5x_L[1], Name = "lagX5x_l"),
  data.frame(lagX5a_E[1], Name = "lagX5a_e"),
  data.frame(lagX5a_L[1], Name = "lagX5a_l"),
  data.frame(anaII15x_E[1], Name = "anaII15x_e"),
  data.frame(anaII15x_L[1], Name = "anaII15x_l"),
  data.frame(anaII15a_E[1], Name = "anaII15a_e"),
  data.frame(anaII15a_L[1], Name = "anaII15a_l"),
  data.frame(lateanaII2x_E[1], Name = "lateanaII2x_e"),
  data.frame(lateanaII2x_L[1], Name = "lateanaII2x_l"),
  data.frame(lateanaII2a_E[1], Name = "lateanaII2a_e"),
  data.frame(lateanaII2a_L[1], Name = "lateanaII2a_l"),
  data.frame(lateanaII3x_E[1], Name = "lateanaII3x_e"),
  data.frame(lateanaII3x_L[1], Name = "lateanaII3x_l"),
  data.frame(lateanaII3a_E[1], Name = "lateanaII3a_e"),
  data.frame(lateanaII3a_L[1], Name = "lateanaII3a_l"),
  data.frame(lateanaII1x_E[1], Name = "lateanaII1x_e"),
  data.frame(lateanaII1x_L[1], Name = "lateanaII1x_l"),
  data.frame(lateanaII1a_E[1], Name = "lateanaII1a_e"),
  data.frame(lateanaII1a_L[1], Name = "lateanaII1a_l"),
  data.frame(anaII1x_E[1], Name = "anaII1x_e"),
  data.frame(anaII1x_L[1], Name = "anaII1x_l"),
  data.frame(anaII1a_E[1], Name = "anaII1a_e"),
  data.frame(anaII1a_L[1], Name = "anaII1a_l")
)

# Statistic analysis: collecting information for Anova test
Anova_Results <- tibble()
Names_List <- list("metaII1x_e", "metaII1x_l", "metaII1a_e", "metaII1a_l",
                   "metaII2x_e", "metaII2x_l", "metaII2a_e", "metaII2a_l",
                   "lagX6x_e", "lagX6x_l", "lagX6a_e", "lagX6a_l",
                   "lagXx_e", "lagXx_l", "lagXa_e", "lagXa_l",
                   "lagX5x_e", "lagX5x_l", "lagX5a_e", "lagX5a_l",
                   "anaII15x_e", "anaII15x_l", "anaII15a_e", "anaII15a_l",
                   "lateanaII2x_e", "lateanaII2x_l", "lateanaII2a_e", "lateanaII2a_l",
                   "lateanaII3x_e", "lateanaII3x_l", "lateanaII3a_e", "lateanaII3a_l",
                   "lateanaII1x_e", "lateanaII1x_l", "lateanaII1a_e", "lateanaII1a_l",
                   "anaII1x_e", "anaII1x_l", "anaII1a_e", "anaII1a_l"
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
write.csv(Anova_Results, file = "Anova_Results_MeiosisII_ALL.csv")
