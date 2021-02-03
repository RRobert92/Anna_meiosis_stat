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
source("bin/Plot_Generator_Quasirandom.R") # Include plot generation function
source("bin/Stat_Test.R") # Include Anova test function

# Generate Violin plot of all data 
P1 <- ggplot(metaI5s, aes("metaI5_s", `Data`)) +
  geom_quasirandom(size = 1, color = "red3") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0, 60000) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()

P1 <- Plot_generate(P1, metaI7s, "metaI7_s", "orange2")

P1 <- Plot_generate(P1, metaIs, "metaI_s", "gold1")

P1 <- Plot_generate(P1, anaI4s, "anaI4_s", "darkgreen")

P1 <- Plot_generate(P1, anaI3s, "anaI3_s", "dodgerblue1")

P1 <- Plot_generate(P1, anaI7s, "anaI7_s", "magenta2")

P1 <- Plot_generate(P1, anaI1s, "anaI1_s", "purple3")
print(P1)

# Statistic analysis: data pre-processing
ANOVA_Test <- rbind(
  data.frame(metaI5s[1], Name = "metaI5_s"),
  data.frame(metaI7s[1], Name = "metaI7_s"),
  data.frame(metaIs[1], Name = "metaI_s"),
  data.frame(anaI4s[1], Name = "anaI4_s"),
  data.frame(anaI3s[1], Name = "anaI3_s"),
  data.frame(anaI7s[1], Name = "anaI7_s"),
  data.frame(anaI1s[1], Name = "anaI1_s") # There should not be a comma at the end
   )

# Statistic analysis: collecting information for Anova test
Anova_Results <- tibble()
Names_List <- list("metaI5_s", "metaI7_s", "metaI_s", 
                   "anaI4_s", "anaI3_s", "anaI7_s", "anaI1_s"
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
write.csv(Anova_Results, file = "Anova_Results_MeiosisI_sMTs.csv")
