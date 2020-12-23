# Load data
rm(list = ls())
library(readxl)
library(tidyverse)
MT_classification <- read_excel("Data/MT_classification.xls",
                                sheet = "MT length distrib. Meiosis II",
                                col_names = FALSE
)

#Load X chromosome
assign(
  paste(MT_classification[1, 9], 'x', sep='_'),
  MT_classification[3:nrow(MT_classification), 9]
)
assign(
  paste(MT_classification[1, 9], 'x', sep='_'),
  na.omit(get(paste(MT_classification[1, 9], 'x', sep='_')))
)
metaII_1_X <- data.frame(as.numeric(as.matrix(`metaII-1_x`[1:nrow(`metaII-1_x`),1])))
names(metaII_1_X)[1] <- "Data"
rm(`metaII-1_x`)

assign(
  paste(MT_classification[1, 14], 'x', sep='_'),
  MT_classification[3:nrow(MT_classification), 14]
)
assign(
  paste(MT_classification[1, 14], 'x', sep='_'),
  na.omit(get(paste(MT_classification[1, 14], 'x', sep='_')))
)
metaII_2_X <- data.frame(as.numeric(as.matrix(`metaII-2_x`[1:nrow(`metaII-2_x`),1])))
names(metaII_2_X)[1] <- "Data"
rm(`metaII-2_x`)

assign(
  paste(MT_classification[1, 19], 'x', sep='_'),
  MT_classification[3:nrow(MT_classification), 19]
)
assign(
  paste(MT_classification[1, 19], 'x', sep='_'),
  na.omit(get(paste(MT_classification[1, 19], 'x', sep='_')))
)
lagX_6_X <- data.frame(as.numeric(as.matrix(`lagX-6_x`[1:nrow(`lagX-6_x`),1])))
names(lagX_6_X)[1] <- "Data"
rm(`lagX-6_x`)

assign(
  paste(MT_classification[1, 24], 'x', sep='_'),
  MT_classification[3:nrow(MT_classification), 24]
)
assign(
  paste(MT_classification[1, 24], 'x', sep='_'),
  na.omit(get(paste(MT_classification[1, 24], 'x', sep='_')))
)
lagX_X <- data.frame(as.numeric(as.matrix(`lagX_x`[1:nrow(`lagX_x`),1])))
names(lagX_X)[1] <- "Data"
rm(`lagX_x`)

assign(
  paste(MT_classification[1, 29], 'x', sep='_'),
  MT_classification[3:nrow(MT_classification), 29]
)
assign(
  paste(MT_classification[1, 29], 'x', sep='_'),
  na.omit(get(paste(MT_classification[1, 29], 'x', sep='_')))
)
lagX_9_X <- data.frame(as.numeric(as.matrix(`lagX-9_x`[1:nrow(`lagX-9_x`),1])))
names(lagX_9_X)[1] <- "Data"
rm(`lagX-9_x`)

assign(
  paste(MT_classification[1, 34], 'x', sep='_'),
  MT_classification[3:nrow(MT_classification), 34]
)
assign(
  paste(MT_classification[1, 34], 'x', sep='_'),
  na.omit(get(paste(MT_classification[1, 34], 'x', sep='_')))
)
lagX_5_X <- data.frame(as.numeric(as.matrix(`lagX-5_x`[1:nrow(`lagX-5_x`),1])))
names(lagX_5_X)[1] <- "Data"
rm(`lagX-5_x`)

assign(
  paste(MT_classification[1, 39], 'x', sep='_'),
  MT_classification[3:nrow(MT_classification), 39]
)
assign(
  paste(MT_classification[1, 39], 'x', sep='_'),
  na.omit(get(paste(MT_classification[1, 39], 'x', sep='_')))
)
anaII_15_X <- data.frame(as.numeric(as.matrix(`anaII-15_x`[1:nrow(`anaII-15_x`),1])))
names(anaII_15_X)[1] <- "Data"
rm(`anaII-15_x`)

assign(
  paste(MT_classification[1, 44], 'x', sep='_'),
  MT_classification[3:nrow(MT_classification), 44]
)
assign(
  paste(MT_classification[1, 44], 'x', sep='_'),
  na.omit(get(paste(MT_classification[1, 44], 'x', sep='_')))
)
lateanaII_2_X <- data.frame(as.numeric(as.matrix(`lateanaII-2_x`[1:nrow(`lateanaII-2_x`),1])))
names(lateanaII_2_X)[1] <- "Data"
rm(`lateanaII-2_x`)

assign(
  paste(MT_classification[1, 49], 'x', sep='_'),
  MT_classification[3:nrow(MT_classification), 49]
)
assign(
  paste(MT_classification[1, 49], 'x', sep='_'),
  na.omit(get(paste(MT_classification[1, 49], 'x', sep='_')))
)
lateanaII_3_X <- data.frame(as.numeric(as.matrix(`lateanaII-3_x`[1:nrow(`lateanaII-3_x`),1])))
names(lateanaII_3_X)[1] <- "Data"
rm(`lateanaII-3_x`)

assign(
  paste(MT_classification[1, 54], 'x', sep='_'),
  MT_classification[3:nrow(MT_classification), 54]
)
assign(
  paste(MT_classification[1, 54], 'x', sep='_'),
  na.omit(get(paste(MT_classification[1, 54], 'x', sep='_')))
)
lateanaII_1_X <- data.frame(as.numeric(as.matrix(`lateanaII-1_x`[1:nrow(`lateanaII-1_x`),1])))
names(lateanaII_1_X)[1] <- "Data"
rm(`lateanaII-1_x`)

assign(
  paste(MT_classification[1, 59], 'x', sep='_'),
  MT_classification[3:nrow(MT_classification), 59]
)
assign(
  paste(MT_classification[1, 59], 'x', sep='_'),
  na.omit(get(paste(MT_classification[1, 59], 'x', sep='_')))
)
anaII_1_X <- data.frame(as.numeric(as.matrix(`anaII-1_x`[1:nrow(`anaII-1_x`),1])))
names(anaII_1_X)[1] <- "Data"
rm(`anaII-1_x`)


#Load Autosomes
assign(
  paste(MT_classification[1, 1], 'a', sep='_'),
  MT_classification[3:nrow(MT_classification), 1]
)
assign(
  paste(MT_classification[1, 1], 'a', sep='_'),
  na.omit(get(paste(MT_classification[1, 1], 'a', sep='_')))
)
anaI_1_A <- data.frame(as.numeric(as.matrix(`anaI-META_cell1_a`[1:nrow(`anaI-META_cell1_a`),1])))
names(anaI_1_A)[1] <- "Data"
rm(`anaI-META_cell1_a`)

assign(
  paste(MT_classification[1, 5], 'a', sep='_'),
  MT_classification[3:nrow(MT_classification), 5]
)
assign(
  paste(MT_classification[1, 5], 'a', sep='_'),
  na.omit(get(paste(MT_classification[1, 5], 'a', sep='_')))
)
anaI_2_A <- data.frame(as.numeric(as.matrix(`anaI-META_cell2_a`[1:nrow(`anaI-META_cell2_a`),1])))
names(anaI_2_A)[1] <- "Data"
rm(`anaI-META_cell2_a`)

assign(
  paste(MT_classification[1, 9], 'a', sep='_'),
  MT_classification[3:nrow(MT_classification), 10]
)
assign(
  paste(MT_classification[1, 9], 'a', sep='_'),
  na.omit(get(paste(MT_classification[1, 9], 'a', sep='_')))
)
metaII_1_A <- data.frame(as.numeric(as.matrix(`metaII-1_a`[1:nrow(`metaII-1_a`),1])))
names(metaII_1_A)[1] <- "Data"
rm(`metaII-1_a`)

assign(
  paste(MT_classification[1, 14], 'a', sep='_'),
  MT_classification[3:nrow(MT_classification), 15]
)
assign(
  paste(MT_classification[1, 14], 'a', sep='_'),
  na.omit(get(paste(MT_classification[1, 14], 'a', sep='_')))
)
metaII_2_A <- data.frame(as.numeric(as.matrix(`metaII-2_a`[1:nrow(`metaII-2_a`),1])))
names(metaII_2_A)[1] <- "Data"
rm(`metaII-2_a`)

assign(
  paste(MT_classification[1, 19], 'a', sep='_'),
  MT_classification[3:nrow(MT_classification), 20]
)
assign(
  paste(MT_classification[1, 19], 'a', sep='_'),
  na.omit(get(paste(MT_classification[1, 19], 'a', sep='_')))
)
lagX_6_A <- data.frame(as.numeric(as.matrix(`lagX-6_a`[1:nrow(`lagX-6_a`),1])))
names(lagX_6_A)[1] <- "Data"
rm(`lagX-6_a`)

assign(
  paste(MT_classification[1, 24], 'a', sep='_'),
  MT_classification[3:nrow(MT_classification), 25]
)
assign(
  paste(MT_classification[1, 24], 'a', sep='_'),
  na.omit(get(paste(MT_classification[1, 24], 'a', sep='_')))
)
lagX_A <- data.frame(as.numeric(as.matrix(`lagX_a`[1:nrow(`lagX_a`),1])))
names(lagX_A)[1] <- "Data"
rm(`lagX_a`)

assign(
  paste(MT_classification[1, 29], 'a', sep='_'),
  MT_classification[3:nrow(MT_classification), 30]
)
assign(
  paste(MT_classification[1, 29], 'a', sep='_'),
  na.omit(get(paste(MT_classification[1, 29], 'a', sep='_')))
)
lagX_9_A <- data.frame(as.numeric(as.matrix(`lagX-9_a`[1:nrow(`lagX-9_a`),1])))
names(lagX_9_A)[1] <- "Data"
rm(`lagX-9_a`)

assign(
  paste(MT_classification[1, 34], 'a', sep='_'),
  MT_classification[3:nrow(MT_classification), 35]
)
assign(
  paste(MT_classification[1, 34], 'a', sep='_'),
  na.omit(get(paste(MT_classification[1, 34], 'a', sep='_')))
)
lagX_5_A <- data.frame(as.numeric(as.matrix(`lagX-5_a`[1:nrow(`lagX-5_a`),1])))
names(lagX_5_A)[1] <- "Data"
rm(`lagX-5_a`)

assign(
  paste(MT_classification[1, 39], 'a', sep='_'),
  MT_classification[3:nrow(MT_classification), 40]
)
assign(
  paste(MT_classification[1, 39], 'a', sep='_'),
  na.omit(get(paste(MT_classification[1, 39], 'a', sep='_')))
)
anaII_15_A <- data.frame(as.numeric(as.matrix(`anaII-15_a`[1:nrow(`anaII-15_a`),1])))
names(anaII_15_A)[1] <- "Data"
rm(`anaII-15_a`)

assign(
  paste(MT_classification[1, 44], 'a', sep='_'),
  MT_classification[3:nrow(MT_classification), 45]
)
assign(
  paste(MT_classification[1, 44], 'a', sep='_'),
  na.omit(get(paste(MT_classification[1, 44], 'a', sep='_')))
)
lateanaII_2_A <- data.frame(as.numeric(as.matrix(`lateanaII-2_a`[1:nrow(`lateanaII-2_a`),1])))
names(lateanaII_2_A)[1] <- "Data"
rm(`lateanaII-2_a`)

assign(
  paste(MT_classification[1, 49], 'a', sep='_'),
  MT_classification[3:nrow(MT_classification), 50]
)
assign(
  paste(MT_classification[1, 49], 'a', sep='_'),
  na.omit(get(paste(MT_classification[1, 49], 'a', sep='_')))
)
lateanaII_3_A <- data.frame(as.numeric(as.matrix(`lateanaII-3_a`[1:nrow(`lateanaII-3_a`),1])))
names(lateanaII_3_A)[1] <- "Data"
rm(`lateanaII-3_a`)

assign(
  paste(MT_classification[1, 54], 'a', sep='_'),
  MT_classification[3:nrow(MT_classification), 55]
)
assign(
  paste(MT_classification[1, 54], 'a', sep='_'),
  na.omit(get(paste(MT_classification[1, 54], 'a', sep='_')))
)
lateanaII_1_A <- data.frame(as.numeric(as.matrix(`lateanaII-1_a`[1:nrow(`lateanaII-1_a`),1])))
names(lateanaII_1_A)[1] <- "Data"
rm(`lateanaII-1_a`)

assign(
  paste(MT_classification[1, 59], 'a', sep='_'),
  MT_classification[3:nrow(MT_classification), 60]
)
assign(
  paste(MT_classification[1, 59], 'a', sep='_'),
  na.omit(get(paste(MT_classification[1, 59], 'a', sep='_')))
)
anaII_1_A <- data.frame(as.numeric(as.matrix(`anaII-1_a`[1:nrow(`anaII-1_a`),1])))
names(anaII_1_A)[1] <- "Data"
rm(`anaII-1_a`)

library(ggplot2)
library(ggbeeswarm)

P1 <- ggplot(anaI_1_A, aes("anaI-1_a",`Data`)) + geom_quasirandom(size = 1, color = "gray45") + theme_classic() + 
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (fun.data  = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)


P1 <- P1 + geom_quasirandom(data = anaI_2_A, aes("anaI-2_a",`Data`), size = 1, color = "black") +
  stat_summary(data = anaI_2_A, aes("anaI-2_a",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = anaI_2_A, aes("anaI-2_a",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)


P1 <- P1 + geom_quasirandom(data = metaII_1_A, aes("metaII-1_a",`Data`), size = 1, color = "red3") +
  stat_summary(data = metaII_1_A, aes("metaII-1_a",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = metaII_1_A, aes("metaII-1_a",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)
P1 <- P1 + geom_quasirandom(data = metaII_1_X, aes("metaII-1_x",`Data`), size = 1, color = "indianred1") +
  stat_summary(data = metaII_1_X, aes("metaII-1_x",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = metaII_1_X, aes("metaII-1_x",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)

P1 <- P1 + geom_quasirandom(data = metaII_2_A, aes("metaII-2_a",`Data`), size = 1, color = "salmon") +
  stat_summary(data = metaII_2_A, aes("metaII-2_a",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = metaII_2_A, aes("metaII-2_a",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)
P1 <- P1 + geom_quasirandom(data = metaII_2_X, aes("metaII-2_x",`Data`), size = 1, color = "bisque") +
  stat_summary(data = metaII_2_X, aes("metaII-2_x",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = metaII_2_X, aes("metaII-2_x",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)

P1 <- P1 + geom_quasirandom(data = lagX_6_A, aes("lagX-6_a",`Data`), size = 1, color = "orange2") +
  stat_summary(data = lagX_6_A, aes("lagX-6_a",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = lagX_6_A, aes("lagX-6_a",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)
P1 <- P1 + geom_quasirandom(data = lagX_6_X, aes("lagX-6_x",`Data`), size = 1, color = "wheat1") +
  stat_summary(data = lagX_6_X, aes("lagX-6_x",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = lagX_6_X, aes("lagX-6_x",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)

P1 <- P1 + geom_quasirandom(data = lagX_A, aes("lagX_a",`Data`), size = 1, color = "lightgoldenrod") +
  stat_summary(data = lagX_A, aes("lagX_a",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = lagX_A, aes("lagX_a",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)
P1 <- P1 + geom_quasirandom(data = lagX_X, aes("lagX_x",`Data`), size = 1, color = "lightyellow2") +
  stat_summary(data = lagX_X, aes("lagX_x",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = lagX_X, aes("lagX_x",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)

P1 <- P1 + geom_quasirandom(data = lagX_9_A, aes("lagX-9_a",`Data`), size = 1, color = "gold1") +
  stat_summary(data = lagX_9_A, aes("lagX-9_a",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = lagX_9_A, aes("lagX-9_a",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)
P1 <- P1 + geom_quasirandom(data = lagX_9_X, aes("lagX-9_x",`Data`), size = 1, color = "khaki1") +
  stat_summary(data = lagX_9_X, aes("lagX-9_x",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = lagX_9_X, aes("lagX-9_x",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)

P1 <- P1 + geom_quasirandom(data = lagX_5_A, aes("lagX-5_a",`Data`), size = 1, color = "chartreuse2") +
  stat_summary(data = lagX_5_A, aes("lagX-5_a",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = lagX_5_A, aes("lagX-5_a",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)
P1 <- P1 + geom_quasirandom(data = lagX_5_X, aes("lagX-5_x",`Data`), size = 1, color = "darkolivegreen1") +
  stat_summary(data = lagX_5_X, aes("lagX-5_x",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = lagX_5_X, aes("lagX-5_x",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)

P1 <- P1 + geom_quasirandom(data = anaII_15_A, aes("anaII-15_a",`Data`), size = 1, color = "darkgreen") +
  stat_summary(data = anaII_15_A, aes("anaII-15_a",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = anaII_15_A, aes("anaII-15_a",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)
P1 <- P1 + geom_quasirandom(data = anaII_15_X, aes("anaII-15_x",`Data`), size = 1, color = "palegreen") +
  stat_summary(data = anaII_15_X, aes("anaII-15_x",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = anaII_15_X, aes("anaII-15_x",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)

P1 <- P1 + geom_quasirandom(data = lateanaII_2_A, aes("lateanaII-2_a",`Data`), size = 1, color = "dodgerblue1") +
  stat_summary(data = lateanaII_2_A, aes("lateanaII-2_a",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = lateanaII_2_A, aes("lateanaII-2_a",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)
P1 <- P1 + geom_quasirandom(data = lateanaII_2_X, aes("lateanaII-2_x",`Data`), size = 1, color = "skyblue1") +
  stat_summary(data = lateanaII_2_X, aes("lateanaII-2_x",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = lateanaII_2_X, aes("lateanaII-2_x",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)

P1 <- P1 + geom_quasirandom(data = lateanaII_3_A, aes("lateanaII-3_a",`Data`), size = 1, color = "royalblue4") +
  stat_summary(data = lateanaII_3_A, aes("lateanaII-3_a",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = lateanaII_3_A, aes("lateanaII-3_a",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)
P1 <- P1 + geom_quasirandom(data = lateanaII_3_X, aes("lateanaII-3_x",`Data`), size = 1, color = "slategray3") +
  stat_summary(data = lateanaII_3_X, aes("lateanaII-3_x",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = lateanaII_3_X, aes("lateanaII-3_x",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)

P1 <- P1 + geom_quasirandom(data = lateanaII_1_A, aes("lateanaII-1_a",`Data`), size = 1, color = "magenta2") +
  stat_summary(data = lateanaII_1_A, aes("lateanaII-1_a",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = lateanaII_1_A, aes("lateanaII-1_a",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)
P1 <- P1 + geom_quasirandom(data = lateanaII_1_X, aes("lateanaII-1_x",`Data`), size = 1, color = "pink") +
  stat_summary(data = lateanaII_1_X, aes("lateanaII-1_x",`Data`), fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + stat_summary (data = lateanaII_1_X, aes("lateanaII-1_x",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)

P1 <- P1 + geom_quasirandom(data = anaII_1_A, aes("anaII-1_a",`Data`), size = 1, color = "purple3") +
  stat_summary(data = anaII_1_A, aes("anaII-1_a",`Data`), fun = median, fun.min = median, fun.max = median, geom = "crossbar", width = 0.5) + stat_summary (data = anaII_1_A, aes("anaII-1_a",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)
P1 <- P1 + geom_quasirandom(data = anaII_1_X, aes("anaII-1_x",`Data`), size = 1, color = "thistle") +
  stat_summary(data = anaII_1_X, aes("anaII-1_x",`Data`), fun = median, fun.min = median, fun.max = median, geom = "crossbar", width = 0.5) + stat_summary (data = anaII_1_X, aes("anaII-1_x",`Data`),  fun.data = "mean_sdl", fun.args = list (mult=1), geom = "errorbar", color = "black", width = 0.2)
print(P1)

# Statistic
ANOVA_Test <- rbind(data.frame(anaI_1_A[1], Name = "anaI_1_a"),
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
                    data.frame(anaII_1_X[1], Name = "anaII_1_x"))

Anova_Results <- tibble()
Anova_Results[1,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "anaI_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[2,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "metaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[3,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "metaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[4,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "metaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[5,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "metaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[6,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "lagX_6_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[7,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "lagX_6_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[8,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "lagX_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[9,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "lagX_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[10,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "lagX_9_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[11,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "lagX_9_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[12,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "lagX_5_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[13,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "lagX_5_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[14,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "anaII_15_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[15,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "anaII_15_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[16,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[17,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[18,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[19,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[20,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[21,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[22,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[23,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_1_a" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[1,2] <- "anaI_1_a~anaI_2_a"
Anova_Results[2,2] <- "anaI_1_a~metaII_1_a"
Anova_Results[3,2] <- "anaI_1_a~metaII_1_x"
Anova_Results[4,2] <- "anaI_1_a~metaII_2_a"
Anova_Results[5,2] <- "anaI_1_a~metaII_2_x"
Anova_Results[6,2] <- "anaI_1_a~lagX_6_a"
Anova_Results[7,2] <- "anaI_1_a~lagX_6_x"
Anova_Results[8,2] <- "anaI_1_a~lagX_a"
Anova_Results[9,2] <- "anaI_1_a~lagX_x"
Anova_Results[10,2] <- "anaI_1_a~lagX_9_a"
Anova_Results[11,2] <- "anaI_1_a~lagX_9_x"
Anova_Results[12,2] <- "anaI_1_a~lagX_5_a"
Anova_Results[13,2] <- "anaI_1_a~lagX_5_x"
Anova_Results[14,2] <- "anaI_1_a~anaII_15_a"
Anova_Results[15,2] <- "anaI_1_a~anaII_15_x"
Anova_Results[16,2] <- "anaI_1_a~lateanaII_2_a"
Anova_Results[17,2] <- "anaI_1_a~lateanaII_2_x"
Anova_Results[18,2] <- "anaI_1_a~lateanaII_3_a"
Anova_Results[19,2] <- "anaI_1_a~lateanaII_3_x"
Anova_Results[20,2] <- "anaI_1_a~lateanaII_1_a"
Anova_Results[21,2] <- "anaI_1_a~lateanaII_1_x"
Anova_Results[22,2] <- "anaI_1_a~anaII_1_a"
Anova_Results[23,2] <- "anaI_1_a~anaII_1_x"

Anova_Results[24,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "metaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[25,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "metaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[26,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "metaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[27,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "metaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[28,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "lagX_6_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[29,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "lagX_6_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[30,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "lagX_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[31,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "lagX_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[32,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "lagX_9_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[33,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "lagX_9_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[34,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "lagX_5_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[35,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "lagX_5_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[36,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "anaII_15_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[37,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "anaII_15_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[38,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[39,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[40,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[41,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[42,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[43,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[44,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[45,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaI_2_a" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[24,2] <- "anaI_2_a~metaII_1_a"
Anova_Results[25,2] <- "anaI_2_a~metaII_1_x"
Anova_Results[26,2] <- "anaI_2_a~metaII_2_a"
Anova_Results[27,2] <- "anaI_2_a~metaII_2_x"
Anova_Results[28,2] <- "anaI_2_a~lagX_6_a"
Anova_Results[29,2] <- "anaI_2_a~lagX_6_x"
Anova_Results[30,2] <- "anaI_2_a~lagX_a"
Anova_Results[31,2] <- "anaI_2_a~lagX_x"
Anova_Results[32,2] <- "anaI_2_a~lagX_9_a"
Anova_Results[33,2] <- "anaI_2_a~lagX_9_x"
Anova_Results[34,2] <- "anaI_2_a~lagX_5_a"
Anova_Results[35,2] <- "anaI_2_a~lagX_5_x"
Anova_Results[36,2] <- "anaI_2_a~anaII_15_a"
Anova_Results[37,2] <- "anaI_2_a~anaII_15_x"
Anova_Results[38,2] <- "anaI_2_a~lateanaII_2_a"
Anova_Results[39,2] <- "anaI_2_a~lateanaII_2_x"
Anova_Results[40,2] <- "anaI_2_a~lateanaII_3_a"
Anova_Results[41,2] <- "anaI_2_a~lateanaII_3_x"
Anova_Results[42,2] <- "anaI_2_a~lateanaII_1_a"
Anova_Results[43,2] <- "anaI_2_a~lateanaII_1_x"
Anova_Results[44,2] <- "anaI_2_a~anaII_1_a"
Anova_Results[45,2] <- "anaI_2_a~anaII_1_x"

Anova_Results[46,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "metaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[47,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "metaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[48,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "metaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[49,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "lagX_6_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[50,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "lagX_6_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[51,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "lagX_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[52,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "lagX_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[53,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "lagX_9_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[54,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "lagX_9_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[55,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "lagX_5_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[56,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "lagX_5_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[57,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "anaII_15_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[58,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "anaII_15_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[59,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[60,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[61,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[62,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[63,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[64,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[65,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[66,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_a" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[46,2] <- "metaII_1_a~metaII_1_x"
Anova_Results[47,2] <- "metaII_1_a~metaII_2_a"
Anova_Results[48,2] <- "metaII_1_a~metaII_2_x"
Anova_Results[49,2] <- "metaII_1_a~lagX_6_a"
Anova_Results[50,2] <- "metaII_1_a~lagX_6_x"
Anova_Results[51,2] <- "metaII_1_a~lagX_a"
Anova_Results[52,2] <- "metaII_1_a~lagX_x"
Anova_Results[53,2] <- "metaII_1_a~lagX_9_a"
Anova_Results[54,2] <- "metaII_1_a~lagX_9_x"
Anova_Results[55,2] <- "metaII_1_a~lagX_5_a"
Anova_Results[56,2] <- "metaII_1_a~lagX_5_x"
Anova_Results[57,2] <- "metaII_1_a~anaII_15_a"
Anova_Results[58,2] <- "metaII_1_a~anaII_15_x"
Anova_Results[59,2] <- "metaII_1_a~lateanaII_2_a"
Anova_Results[60,2] <- "metaII_1_a~lateanaII_2_x"
Anova_Results[61,2] <- "metaII_1_a~lateanaII_3_a"
Anova_Results[62,2] <- "metaII_1_a~lateanaII_3_x"
Anova_Results[63,2] <- "metaII_1_a~lateanaII_1_a"
Anova_Results[64,2] <- "metaII_1_a~lateanaII_1_x"
Anova_Results[65,2] <- "metaII_1_a~anaII_1_a"
Anova_Results[66,2] <- "metaII_1_a~anaII_1_x"

Anova_Results[67,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "metaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[68,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "metaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[69,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "lagX_6_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[70,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "lagX_6_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[71,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "lagX_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[72,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "lagX_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[73,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "lagX_9_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[74,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "lagX_9_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[75,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "lagX_5_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[76,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "lagX_5_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[77,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "anaII_15_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[78,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "anaII_15_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[79,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[80,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[81,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[82,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[83,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[84,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[85,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[86,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_1_x" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[67,2] <- "metaII_1_x~metaII_2_a"
Anova_Results[68,2] <- "metaII_1_x~metaII_2_x"
Anova_Results[69,2] <- "metaII_1_x~lagX_6_a"
Anova_Results[70,2] <- "metaII_1_x~lagX_6_x"
Anova_Results[71,2] <- "metaII_1_x~lagX_a"
Anova_Results[72,2] <- "metaII_1_x~lagX_x"
Anova_Results[73,2] <- "metaII_1_x~lagX_9_a"
Anova_Results[74,2] <- "metaII_1_x~lagX_9_x"
Anova_Results[75,2] <- "metaII_1_x~lagX_5_a"
Anova_Results[76,2] <- "metaII_1_x~lagX_5_x"
Anova_Results[77,2] <- "metaII_1_x~anaII_15_a"
Anova_Results[78,2] <- "metaII_1_x~anaII_15_x"
Anova_Results[79,2] <- "metaII_1_x~lateanaII_2_a"
Anova_Results[80,2] <- "metaII_1_x~lateanaII_2_x"
Anova_Results[81,2] <- "metaII_1_x~lateanaII_3_a"
Anova_Results[82,2] <- "metaII_1_x~lateanaII_3_x"
Anova_Results[83,2] <- "metaII_1_x~lateanaII_1_a"
Anova_Results[84,2] <- "metaII_1_x~lateanaII_1_x"
Anova_Results[85,2] <- "metaII_1_x~anaII_1_a"
Anova_Results[86,2] <- "metaII_1_x~anaII_1_x"

Anova_Results[87,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "metaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[88,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "lagX_6_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[89,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "lagX_6_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[90,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "lagX_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[91,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "lagX_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[92,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "lagX_9_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[93,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "lagX_9_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[94,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "lagX_5_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[95,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "lagX_5_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[96,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "anaII_15_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[97,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "anaII_15_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[98,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[99,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[100,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[101,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[102,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[103,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[104,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[105,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_a" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[87,2] <- "metaII_2_a~metaII_2_x"
Anova_Results[88,2] <- "metaII_2_a~lagX_6_a"
Anova_Results[89,2] <- "metaII_2_a~lagX_6_x"
Anova_Results[90,2] <- "metaII_2_a~lagX_a"
Anova_Results[91,2] <- "metaII_2_a~lagX_x"
Anova_Results[92,2] <- "metaII_2_a~lagX_9_a"
Anova_Results[93,2] <- "metaII_2_a~lagX_9_x"
Anova_Results[94,2] <- "metaII_2_a~lagX_5_a"
Anova_Results[95,2] <- "metaII_2_a~lagX_5_x"
Anova_Results[96,2] <- "metaII_2_a~anaII_15_a"
Anova_Results[97,2] <- "metaII_2_a~anaII_15_x"
Anova_Results[98,2] <- "metaII_2_a~lateanaII_2_a"
Anova_Results[99,2] <- "metaII_2_a~lateanaII_2_x"
Anova_Results[100,2] <- "metaII_2_a~lateanaII_3_a"
Anova_Results[101,2] <- "metaII_2_a~lateanaII_3_x"
Anova_Results[102,2] <- "metaII_2_a~lateanaII_1_a"
Anova_Results[103,2] <- "metaII_2_a~lateanaII_1_x"
Anova_Results[104,2] <- "metaII_2_a~anaII_1_a"
Anova_Results[105,2] <- "metaII_2_a~anaII_1_x"

Anova_Results[106,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "lagX_6_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[107,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "lagX_6_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[108,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "lagX_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[109,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "lagX_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[110,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "lagX_9_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[111,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "lagX_9_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[112,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "lagX_5_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[113,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "lagX_5_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[114,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "anaII_15_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[115,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "anaII_15_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[116,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[117,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[118,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[119,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[120,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[121,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[122,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[123,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "metaII_2_x" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[106,2] <- "metaII_2_x~lagX_6_a"
Anova_Results[107,2] <- "metaII_2_x~lagX_6_x"
Anova_Results[108,2] <- "metaII_2_x~lagX_a"
Anova_Results[109,2] <- "metaII_2_x~lagX_x"
Anova_Results[110,2] <- "metaII_2_x~lagX_9_a"
Anova_Results[111,2] <- "metaII_2_x~lagX_9_x"
Anova_Results[112,2] <- "metaII_2_x~lagX_5_a"
Anova_Results[113,2] <- "metaII_2_x~lagX_5_x"
Anova_Results[114,2] <- "metaII_2_x~anaII_15_a"
Anova_Results[115,2] <- "metaII_2_x~anaII_15_x"
Anova_Results[116,2] <- "metaII_2_x~lateanaII_2_a"
Anova_Results[117,2] <- "metaII_2_x~lateanaII_2_x"
Anova_Results[118,2] <- "metaII_2_x~lateanaII_3_a"
Anova_Results[119,2] <- "metaII_2_x~lateanaII_3_x"
Anova_Results[120,2] <- "metaII_2_x~lateanaII_1_a"
Anova_Results[121,2] <- "metaII_2_x~lateanaII_1_x"
Anova_Results[122,2] <- "metaII_2_x~anaII_1_a"
Anova_Results[123,2] <- "metaII_2_x~anaII_1_x"

Anova_Results[124,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "lagX_6_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[125,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "lagX_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[126,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "lagX_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[127,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "lagX_9_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[128,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "lagX_9_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[129,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "lagX_5_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[130,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "lagX_5_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[131,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "anaII_15_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[132,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "anaII_15_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[133,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[134,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[135,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[136,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[137,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[138,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[139,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[140,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_a" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[124,2] <- "lagX_6_a~lagX_6_x"
Anova_Results[125,2] <- "lagX_6_a~lagX_a"
Anova_Results[126,2] <- "lagX_6_a~lagX_x"
Anova_Results[127,2] <- "lagX_6_a~lagX_9_a"
Anova_Results[128,2] <- "lagX_6_a~lagX_9_x"
Anova_Results[129,2] <- "lagX_6_a~lagX_5_a"
Anova_Results[130,2] <- "lagX_6_a~lagX_5_x"
Anova_Results[131,2] <- "lagX_6_a~anaII_15_a"
Anova_Results[132,2] <- "lagX_6_a~anaII_15_x"
Anova_Results[133,2] <- "lagX_6_a~lateanaII_2_a"
Anova_Results[134,2] <- "lagX_6_a~lateanaII_2_x"
Anova_Results[135,2] <- "lagX_6_a~lateanaII_3_a"
Anova_Results[136,2] <- "lagX_6_a~lateanaII_3_x"
Anova_Results[137,2] <- "lagX_6_a~lateanaII_1_a"
Anova_Results[138,2] <- "lagX_6_a~lateanaII_1_x"
Anova_Results[139,2] <- "lagX_6_a~anaII_1_a"
Anova_Results[140,2] <- "lagX_6_a~anaII_1_x"

Anova_Results[141,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "lagX_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[142,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "lagX_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[143,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "lagX_9_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[144,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "lagX_9_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[145,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "lagX_5_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[146,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "lagX_5_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[147,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "anaII_15_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[148,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "anaII_15_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[149,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[150,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[151,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[152,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[153,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[154,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[155,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[156,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_6_x" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[141,2] <- "lagX_6_x~lagX_a"
Anova_Results[142,2] <- "lagX_6_x~lagX_x"
Anova_Results[143,2] <- "lagX_6_x~lagX_9_a"
Anova_Results[144,2] <- "lagX_6_x~lagX_9_x"
Anova_Results[145,2] <- "lagX_6_x~lagX_5_a"
Anova_Results[146,2] <- "lagX_6_x~lagX_5_x"
Anova_Results[147,2] <- "lagX_6_x~anaII_15_a"
Anova_Results[148,2] <- "lagX_6_x~anaII_15_x"
Anova_Results[149,2] <- "lagX_6_x~lateanaII_2_a"
Anova_Results[150,2] <- "lagX_6_x~lateanaII_2_x"
Anova_Results[151,2] <- "lagX_6_x~lateanaII_3_a"
Anova_Results[152,2] <- "lagX_6_x~lateanaII_3_x"
Anova_Results[153,2] <- "lagX_6_x~lateanaII_1_a"
Anova_Results[154,2] <- "lagX_6_x~lateanaII_1_x"
Anova_Results[155,2] <- "lagX_6_x~anaII_1_a"
Anova_Results[156,2] <- "lagX_6_x~anaII_1_x"

Anova_Results[157,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_a" | Name == "lagX_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[158,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_a" | Name == "lagX_9_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[159,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_a" | Name == "lagX_9_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[160,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_a" | Name == "lagX_5_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[161,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_a" | Name == "lagX_5_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[162,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_a" | Name == "anaII_15_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[163,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_a" | Name == "anaII_15_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[164,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_a" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[165,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_a" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[166,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_a" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[167,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_a" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[168,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_a" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[169,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_a" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[170,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_a" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[171,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_a" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[157,2] <- "lagX_a~lagX_x"
Anova_Results[158,2] <- "lagX_a~lagX_9_a"
Anova_Results[159,2] <- "lagX_a~lagX_9_x"
Anova_Results[160,2] <- "lagX_a~lagX_5_a"
Anova_Results[161,2] <- "lagX_a~lagX_5_x"
Anova_Results[162,2] <- "lagX_a~anaII_15_a"
Anova_Results[163,2] <- "lagX_a~anaII_15_x"
Anova_Results[164,2] <- "lagX_a~lateanaII_2_a"
Anova_Results[165,2] <- "lagX_a~lateanaII_2_x"
Anova_Results[166,2] <- "lagX_a~lateanaII_3_a"
Anova_Results[167,2] <- "lagX_a~lateanaII_3_x"
Anova_Results[168,2] <- "lagX_a~lateanaII_1_a"
Anova_Results[169,2] <- "lagX_a~lateanaII_1_x"
Anova_Results[170,2] <- "lagX_a~anaII_1_a"
Anova_Results[171,2] <- "lagX_a~anaII_1_x"

Anova_Results[172,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_x" | Name == "lagX_9_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[173,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_x" | Name == "lagX_9_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[174,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_x" | Name == "lagX_5_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[175,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_x" | Name == "lagX_5_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[176,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_x" | Name == "anaII_15_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[177,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_x" | Name == "anaII_15_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[178,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_x" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[179,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_x" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[180,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_x" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[181,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_x" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[182,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_x" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[183,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_x" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[184,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_x" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[185,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_x" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[172,2] <- "lagX_x~lagX_9_a"
Anova_Results[173,2] <- "lagX_x~lagX_9_x"
Anova_Results[174,2] <- "lagX_x~lagX_5_a"
Anova_Results[175,2] <- "lagX_x~lagX_5_x"
Anova_Results[176,2] <- "lagX_x~anaII_15_a"
Anova_Results[177,2] <- "lagX_x~anaII_15_x"
Anova_Results[178,2] <- "lagX_x~lateanaII_2_a"
Anova_Results[179,2] <- "lagX_x~lateanaII_2_x"
Anova_Results[180,2] <- "lagX_x~lateanaII_3_a"
Anova_Results[181,2] <- "lagX_x~lateanaII_3_x"
Anova_Results[182,2] <- "lagX_x~lateanaII_1_a"
Anova_Results[183,2] <- "lagX_x~lateanaII_1_x"
Anova_Results[184,2] <- "lagX_x~anaII_1_a"
Anova_Results[185,2] <- "lagX_x~anaII_1_x"

Anova_Results[186,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_a" | Name == "lagX_9_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[187,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_a" | Name == "lagX_5_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[188,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_a" | Name == "lagX_5_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[189,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_a" | Name == "anaII_15_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[190,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_a" | Name == "anaII_15_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[191,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_a" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[192,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_a" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[193,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_a" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[194,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_a" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[195,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_a" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[196,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_a" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[197,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_a" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[198,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_a" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[186,2] <- "lagX_9_a~lagX_9_x"
Anova_Results[187,2] <- "lagX_9_a~lagX_5_a"
Anova_Results[188,2] <- "lagX_9_a~lagX_5_x"
Anova_Results[189,2] <- "lagX_9_a~anaII_15_a"
Anova_Results[190,2] <- "lagX_9_a~anaII_15_x"
Anova_Results[191,2] <- "lagX_9_a~lateanaII_2_a"
Anova_Results[192,2] <- "lagX_9_a~lateanaII_2_x"
Anova_Results[193,2] <- "lagX_9_a~lateanaII_3_a"
Anova_Results[194,2] <- "lagX_9_a~lateanaII_3_x"
Anova_Results[195,2] <- "lagX_9_a~lateanaII_1_a"
Anova_Results[196,2] <- "lagX_9_a~lateanaII_1_x"
Anova_Results[197,2] <- "lagX_9_a~anaII_1_a"
Anova_Results[198,2] <- "lagX_9_a~anaII_1_x"

Anova_Results[199,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_x" | Name == "lagX_5_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[200,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_x" | Name == "lagX_5_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[201,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_x" | Name == "anaII_15_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[202,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_x" | Name == "anaII_15_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[203,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_x" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[204,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_x" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[205,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_x" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[206,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_x" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[207,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_x" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[208,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_x" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[209,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_x" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[210,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_9_x" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[199,2] <- "lagX_9_x~lagX_5_a"
Anova_Results[200,2] <- "lagX_9_x~lagX_5_x"
Anova_Results[201,2] <- "lagX_9_x~anaII_15_a"
Anova_Results[202,2] <- "lagX_9_x~anaII_15_x"
Anova_Results[203,2] <- "lagX_9_x~lateanaII_2_a"
Anova_Results[204,2] <- "lagX_9_x~lateanaII_2_x"
Anova_Results[205,2] <- "lagX_9_x~lateanaII_3_a"
Anova_Results[206,2] <- "lagX_9_x~lateanaII_3_x"
Anova_Results[207,2] <- "lagX_9_x~lateanaII_1_a"
Anova_Results[208,2] <- "lagX_9_x~lateanaII_1_x"
Anova_Results[209,2] <- "lagX_9_x~anaII_1_a"
Anova_Results[210,2] <- "lagX_9_x~anaII_1_x"

Anova_Results[211,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_a" | Name == "lagX_5_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[212,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_a" | Name == "anaII_15_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[213,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_a" | Name == "anaII_15_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[214,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_a" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[215,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_a" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[216,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_a" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[217,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_a" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[218,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_a" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[219,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_a" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[220,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_a" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[221,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_a" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[211,2] <- "lagX_5_a~lagX_5_x"
Anova_Results[212,2] <- "lagX_5_a~anaII_15_a"
Anova_Results[213,2] <- "lagX_5_a~anaII_15_x"
Anova_Results[214,2] <- "lagX_5_a~lateanaII_2_a"
Anova_Results[215,2] <- "lagX_5_a~lateanaII_2_x"
Anova_Results[216,2] <- "lagX_5_a~lateanaII_3_a"
Anova_Results[217,2] <- "lagX_5_a~lateanaII_3_x"
Anova_Results[218,2] <- "lagX_5_a~lateanaII_1_a"
Anova_Results[219,2] <- "lagX_5_a~lateanaII_1_x"
Anova_Results[220,2] <- "lagX_5_a~anaII_1_a"
Anova_Results[221,2] <- "lagX_5_a~anaII_1_x"

Anova_Results[222,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_x" | Name == "anaII_15_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[223,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_x" | Name == "anaII_15_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[224,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_x" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[225,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_x" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[226,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_x" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[227,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_x" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[228,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_x" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[229,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_x" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[230,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_x" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[231,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lagX_5_x" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[222,2] <- "lagX_5_x~anaII_15_a"
Anova_Results[223,2] <- "lagX_5_x~anaII_15_x"
Anova_Results[224,2] <- "lagX_5_x~lateanaII_2_a"
Anova_Results[225,2] <- "lagX_5_x~lateanaII_2_x"
Anova_Results[226,2] <- "lagX_5_x~lateanaII_3_a"
Anova_Results[227,2] <- "lagX_5_x~lateanaII_3_x"
Anova_Results[228,2] <- "lagX_5_x~lateanaII_1_a"
Anova_Results[229,2] <- "lagX_5_x~lateanaII_1_x"
Anova_Results[230,2] <- "lagX_5_x~anaII_1_a"
Anova_Results[231,2] <- "lagX_5_x~anaII_1_x"

Anova_Results[232,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_a" | Name == "anaII_15_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[233,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_a" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[234,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_a" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[235,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_a" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[236,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_a" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[237,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_a" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[238,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_a" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[239,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_a" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[240,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_a" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[232,2] <- "anaII_15_a~anaII_15_x"
Anova_Results[233,2] <- "anaII_15_a~lateanaII_2_a"
Anova_Results[234,2] <- "anaII_15_a~lateanaII_2_x"
Anova_Results[235,2] <- "anaII_15_a~lateanaII_3_a"
Anova_Results[236,2] <- "anaII_15_a~lateanaII_3_x"
Anova_Results[237,2] <- "anaII_15_a~lateanaII_1_a"
Anova_Results[238,2] <- "anaII_15_a~lateanaII_1_x"
Anova_Results[239,2] <- "anaII_15_a~anaII_1_a"
Anova_Results[240,2] <- "anaII_15_a~anaII_1_x"

Anova_Results[241,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_x" | Name == "lateanaII_2_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[242,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_x" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[243,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_x" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[244,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_x" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[245,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_x" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[246,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_x" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[247,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_x" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[248,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_15_x" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[241,2] <- "anaII_15_x~lateanaII_2_a"
Anova_Results[242,2] <- "anaII_15_x~lateanaII_2_x"
Anova_Results[243,2] <- "anaII_15_x~lateanaII_3_a"
Anova_Results[244,2] <- "anaII_15_x~lateanaII_3_x"
Anova_Results[245,2] <- "anaII_15_x~lateanaII_1_a"
Anova_Results[246,2] <- "anaII_15_x~lateanaII_1_x"
Anova_Results[247,2] <- "anaII_15_x~anaII_1_a"
Anova_Results[248,2] <- "anaII_15_x~anaII_1_x"

Anova_Results[249,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_2_a" | Name == "lateanaII_2_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[250,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_2_a" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[251,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_2_a" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[252,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_2_a" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[253,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_2_a" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[254,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_2_a" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[255,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_2_a" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[249,2] <- "lateanaII_2_a~lateanaII_2_x"
Anova_Results[250,2] <- "lateanaII_2_a~lateanaII_3_a"
Anova_Results[251,2] <- "lateanaII_2_a~lateanaII_3_x"
Anova_Results[252,2] <- "lateanaII_2_a~lateanaII_1_a"
Anova_Results[253,2] <- "lateanaII_2_a~lateanaII_1_x"
Anova_Results[254,2] <- "lateanaII_2_a~anaII_1_a"
Anova_Results[255,2] <- "lateanaII_2_a~anaII_1_x"

Anova_Results[256,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_2_x" | Name == "lateanaII_3_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[257,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_2_x" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[258,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_2_x" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[259,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_2_x" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[260,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_2_x" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[261,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_2_x" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[256,2] <- "lateanaII_2_x~lateanaII_3_a"
Anova_Results[257,2] <- "lateanaII_2_x~lateanaII_3_x"
Anova_Results[258,2] <- "lateanaII_2_x~lateanaII_1_a"
Anova_Results[259,2] <- "lateanaII_2_x~lateanaII_1_x"
Anova_Results[260,2] <- "lateanaII_2_x~anaII_1_a"
Anova_Results[261,2] <- "lateanaII_2_x~anaII_1_x"

Anova_Results[262,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_3_a" | Name == "lateanaII_3_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[263,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_3_a" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[264,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_3_a" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[265,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_3_a" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[266,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_3_a" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[262,2] <- "lateanaII_3_a~lateanaII_3_x"
Anova_Results[263,2] <- "lateanaII_3_a~lateanaII_1_a"
Anova_Results[264,2] <- "lateanaII_3_a~lateanaII_1_x"
Anova_Results[265,2] <- "lateanaII_3_a~anaII_1_a"
Anova_Results[266,2] <- "lateanaII_3_a~anaII_1_x"

Anova_Results[267,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_3_x" | Name == "lateanaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[268,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_3_x" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[269,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_3_x" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[270,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_3_x" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[267,2] <- "lateanaII_3_x~lateanaII_1_a"
Anova_Results[268,2] <- "lateanaII_3_x~lateanaII_1_x"
Anova_Results[269,2] <- "lateanaII_3_x~anaII_1_a"
Anova_Results[270,2] <- "lateanaII_3_x~anaII_1_x"

Anova_Results[271,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_1_a" | Name == "lateanaII_1_x"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[272,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_1_a" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[273,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_1_a" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[271,2] <- "lateanaII_1_a~lateanaII_1_x"
Anova_Results[272,2] <- "lateanaII_1_a~anaII_1_a"
Anova_Results[274,2] <- "lateanaII_1_a~anaII_1_x"

Anova_Results[275,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_1_x" | Name == "anaII_1_a"),]))[[1]]$`Pr(>F)`[1]
Anova_Results[276,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "lateanaII_1_x" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[275,2] <- "lateanaII_1_x~anaII_1_a"
Anova_Results[276,2] <- "lateanaII_1_x~anaII_1_x"

Anova_Results[277,1] <- summary(aov(Data~Name, data = ANOVA_Test[with(ANOVA_Test, Name == "anaII_1_a" | Name == "anaII_1_x"),]))[[1]]$`Pr(>F)`[1]

Anova_Results[277,2] <- "anaII_1_a~anaII_1_x"

i = 1
while (i <= nrow(Anova_Results)) {
  if(Anova_Results[i,1] >= 0.05){
    Anova_Results[i,3] <- ". P >= 0.1"
  } else if (Anova_Results[i,1] >= 0.01 & Anova_Results[i,1] < 0.05){
    Anova_Results[i,3] <- "* P >= 0.05"
  } else if (Anova_Results[i,1] >= 0.001 & Anova_Results[i,1] < 0.01){
    Anova_Results[i,3] <- "** P >= 0. 01"
  } else if (Anova_Results[i,1] >= 0.0001 & Anova_Results[i,1] < 0.001){
    Anova_Results[i,3] <- "*** P >= 0.001"
  } else {
    Anova_Results[i,3] <- "ns"
  }
  
  if(i == nrow(Anova_Results)){
    names(Anova_Results)[1] <- "P value"
    names(Anova_Results)[2] <- "test"
    names(Anova_Results)[3] <- "signif."
  }
  i = i +1
}
write.csv(Anova_Results, file = "Anova_Results_MeiosisII_kMTs.csv")