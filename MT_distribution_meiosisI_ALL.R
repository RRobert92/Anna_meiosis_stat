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
source("bin/Load_sMTs_MI.R") # Include information which file to load
source("bin/Load_aMTs_MI.R") # Include information which file to load
source("bin/Load_xMTs_MI.R") # Include information which file to load
source("bin/Plot_Generator_Quasirandom.R") # Include plot generation function
source("bin/Stat_Test.R") # Include Anova test function

# Generate Violin plot of all data 
P1 <- ggplot(metaI5s, aes("metaI5_s", `Data`)) +
  geom_quasirandom(size = 1, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, metaI5a_E, "metaI5a_e", "yellow3")
P1 <- Plot_generate(P1, metaI5a_L, "metaI5a_l", "lightgoldenrod")
P1 <- Plot_generate(P1, metaI5x_E, "metaI5x_e", "salmon4")
P1 <- Plot_generate(P1, metaI5x_L, "metaI5x_l", "sandybrown")
print(P1)

P1 <- ggplot(metaI7s, aes("metaI7_s", `Data`)) +
  geom_quasirandom(size = 1, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, metaI7a_E, "metaI7a_e", "yellow3")
P1 <- Plot_generate(P1, metaI7a_L, "metaI7a_l", "lightgoldenrod")
P1 <- Plot_generate(P1, metaI7x_E, "metaI7x_e", "salmon4")
P1 <- Plot_generate(P1, metaI7x_L, "metaI7x_l", "sandybrown")
print(P1)

P1 <- ggplot(metaIs, aes("metaI_s", `Data`)) +
  geom_quasirandom(size = 1, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, metaIa_E, "metaIa_e", "yellow3")
P1 <- Plot_generate(P1, metaIa_L, "metaIa_l", "lightgoldenrod")
P1 <- Plot_generate(P1, metaIx_E, "metaIx_e", "salmon4")
P1 <- Plot_generate(P1, metaIx_L, "metaIx_l", "sandybrown")
print(P1)

P1 <- ggplot(anaI4s, aes("anaI4_s", `Data`)) +
  geom_quasirandom(size = 1, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, anaI4a_E, "anaI4a_e", "yellow3")
P1 <- Plot_generate(P1, anaI4a_L, "anaI4a_l", "lightgoldenrod")
print(P1)

P1 <- ggplot(anaI3s, aes("anaI3_s", `Data`)) +
  geom_quasirandom(size = 1, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, anaI3a_E, "anaI3a_e", "yellow3")
P1 <- Plot_generate(P1, anaI3a_L, "anaI3a_l", "lightgoldenrod")
print(P1)

P1 <- ggplot(anaI7s, aes("anaI7_s", `Data`)) +
  geom_quasirandom(size = 1, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, anaI7a_E, "anaI7a_e", "yellow3")
P1 <- Plot_generate(P1, anaI7a_L, "anaI7a_l", "lightgoldenrod")
print(P1)

P1 <- ggplot(anaI1s, aes("anaI1_s", `Data`)) +
  geom_quasirandom(size = 1, color = "gray75") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, anaI1a_E, "anaI1a_e", "yellow3")
P1 <- Plot_generate(P1, anaI1a_L, "anaI1a_l", "lightgoldenrod")
print(P1)

# Statistic analysis: data pre-processing
ANOVA_Test <- rbind(
  data.frame(metaI5s[1], Name = "metaI5_s"),
  data.frame(metaI7s[1], Name = "metaI7_s"),
  data.frame(metaIs[1], Name = "metaI_s"),
  data.frame(anaI4s[1], Name = "anaI4_s"),
  data.frame(anaI3s[1], Name = "anaI3_s"),
  data.frame(anaI7s[1], Name = "anaI7_s"),
  data.frame(anaI1s[1], Name = "anaI1_s"),
  data.frame(metaI5a_E[1], Name = "metaI5a_e"),
  data.frame(metaI5a_L[1], Name = "metaI5a_l"),
  data.frame(metaI7a_E[1], Name = "metaI7a_e"),
  data.frame(metaI7a_L[1], Name = "metaI7a_l"),
  data.frame(metaIa_E[1], Name = "metaIa_e"),
  data.frame(metaIa_L[1], Name = "metaIa_l"),
  data.frame(anaI4a_E[1], Name = "anaI4a_e"),
  data.frame(anaI4a_L[1], Name = "anaI4a_l"),
  data.frame(anaI3a_E[1], Name = "anaI3a_e"),
  data.frame(anaI3a_L[1], Name = "anaI3a_l"),
  data.frame(anaI7a_E[1], Name = "anaI7a_e"),
  data.frame(anaI7a_L[1], Name = "anaI7a_l"),
  data.frame(anaI1a_E[1], Name = "anaI1a_e"),
  data.frame(anaI1a_L[1], Name = "anaI1a_l"),
  data.frame(metaI5x_E[1], Name = "metaI5x_e"),
  data.frame(metaI5x_L[1], Name = "metaI5x_l"),
  data.frame(metaI7x_E[1], Name = "metaI7x_e"),
  data.frame(metaI7x_L[1], Name = "metaI7x_l"),
  data.frame(metaIx_E[1], Name = "metaIx_e"),
  data.frame(metaIx_L[1], Name = "metaIx_l")  # There should not be a comma at the end
   )

# Statistic analysis: collecting information for Anova test
Anova_Results <- tibble()
Names_List <- list("metaI5_s", "metaI7_s", "metaI_s", 
                   "anaI4_s", "anaI3_s", "anaI7_s", "anaI1_s",
                   "metaI5a_e", "metaI7a_e", "metaIa_e", "anaI4a_e", "anaI3a_e", "anaI7a_e", "anaI1a_e", 
                   "metaI5a_l", "metaI7a_l", "metaIa_l", "anaI4a_l", "anaI3a_l", "anaI7a_l", "anaI1a_l",
                   "metaI5x_e", "metaI7x_e", "metaIx_e", 
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
write.csv(Anova_Results, file = "Anova_Results_MeiosisI_ALL.csv")
