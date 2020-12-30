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
source("bin/Load_Meiosis.R") # Include information which file to load
source("bin/Plot_Generator_Quasirandom.R") # Include plot generation function
source("bin/Stat_Test.R") # Include Anova test function

# Generate Violin plot of all data 
P1 <- ggplot(anaI_1_A, aes("anaI-1_a", `Data`)) +
  geom_quasirandom(size = 1, color = "gray45") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()

P1 <- Plot_generate(P1, anaI_2_A, "anaI-2_a", "black")

P1 <- Plot_generate(P1, metaII_1_A, "metaII-1_a", "red3")
P1 <- Plot_generate(P1, metaII_1_X, "metaII-1_x", "indianred1")

P1 <- Plot_generate(P1, metaII_2_A, "metaII-2_a", "salmon")
P1 <- Plot_generate(P1, metaII_2_X, "metaII-2_x", "bisque")

P1 <- Plot_generate(P1, lagX_6_A, "lagX-6_a", "orange2")
P1 <- Plot_generate(P1, lagX_6_X, "lagX-6_x", "wheat1")

P1 <- Plot_generate(P1, lagX_A, "lagX_a", "lightgoldenrod")
P1 <- Plot_generate(P1, lagX_X, "lagX_x", "lightyellow2")

P1 <- Plot_generate(P1, lagX_9_A, "lagX-9_a", "gold1")
P1 <- Plot_generate(P1, lagX_9_X, "lagX-9_x", "khaki1")

P1 <- Plot_generate(P1, lagX_5_A, "lagX-5_a", "chartreuse2")
P1 <- Plot_generate(P1, lagX_5_X, "lagX-5_x", "darkolivegreen1")

P1 <- Plot_generate(P1, anaII_15_A, "anaII-15_a", "darkgreen")
P1 <- Plot_generate(P1, anaII_15_X, "anaII-15_x", "palegreen")

P1 <- Plot_generate(P1, lateanaII_2_A, "lateanaII-2_a", "dodgerblue1")
P1 <- Plot_generate(P1, lateanaII_2_X, "lateanaII-2_x", "skyblue1")

P1 <- Plot_generate(P1, lateanaII_3_A, "lateanaII-3_a", "royalblue4")
P1 <- Plot_generate(P1, lateanaII_3_X, "lateanaII-3_x", "slategray3")

P1 <- Plot_generate(P1, lateanaII_1_A, "lateanaII-1_a", "magenta2")
P1 <- Plot_generate(P1, lateanaII_1_X, "lateanaII-1_x", "pink")

P1 <- Plot_generate(P1, anaII_1_A, "anaII-1_a", "purple3")
P1 <- Plot_generate(P1, anaII_1_X, "anaII-1_x", "thistle")
print(P1)

# Statistic analysis: data pre-processing
ANOVA_Test <- rbind(
  data.frame(anaI_1_A[1], Name = "anaI_1_a"),
  data.frame(anaI_2_A[1], Name = "anaI_2_a"),
  data.frame(metaII_1_A[1], Name = "metaII_1_a"),
  data.frame(metaII_1_X[1], Name = "metaII_1_x"),
  data.frame(metaII_2_A[1], Name = "metaII_2_a"),
  data.frame(metaII_2_X[1], Name = "metaII_2_x"),
  data.frame(lagX_6_A[1], Name = "lagX_6_a"),
  data.frame(lagX_6_X[1], Name = "lagX_6_x"),
  data.frame(lagX_A[1], Name = "lagX_a"),
  data.frame(lagX_X[1], Name = "lagX_x"),
  data.frame(lagX_9_A[1], Name = "lagX_9_a"),
  data.frame(lagX_9_X[1], Name = "lagX_9_x"),
  data.frame(lagX_5_A[1], Name = "lagX_5_a"),
  data.frame(lagX_5_A[1], Name = "lagX_5_x"),
  data.frame(anaII_15_A[1], Name = "anaII_15_a"),
  data.frame(anaII_15_X[1], Name = "anaII_15_x"),
  data.frame(lateanaII_2_A[1], Name = "lateanaII_2_a"),
  data.frame(lateanaII_2_X[1], Name = "lateanaII_2_x"),
  data.frame(lateanaII_3_A[1], Name = "lateanaII_3_a"),
  data.frame(lateanaII_3_X[1], Name = "lateanaII_3_x"),
  data.frame(lateanaII_1_A[1], Name = "lateanaII_1_a"),
  data.frame(lateanaII_1_X[1], Name = "lateanaII_1_x"),
  data.frame(anaII_1_A[1], Name = "anaII_1_a"),
  data.frame(anaII_1_X[1], Name = "anaII_1_x")
)

# Statistic analysis: collecting information for Anova test
Anova_Results <- tibble()
Names_List <- list("anaI_1_a", "anaI_2_a", 
                   "metaII_1_a", "metaII_1_x", "metaII_2_a", "metaII_2_x",
                   "lagX_6_a", "lagX_6_x", "lagX_a", "lagX_x", "lagX_9_a", "lagX_9_x", "lagX_5_a" ,"lagX_5_x",
                   "anaII_15_a", "anaII_15_x", "anaII_1_a", "anaII_1_x",
                   "lateanaII_2_a", "lateanaII_2_x", "lateanaII_3_a", "lateanaII_3_x", "lateanaII_1_a", "lateanaII_1_x"
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
write.csv(Anova_Results, file = "Anova_Results_MeiosisII_kMTs.csv")
