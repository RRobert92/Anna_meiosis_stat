################################################################################
# Module Load Meiosis Data
#
# (c) 2020 Kiewisz/Schwarz
# This code is licensed under GPL V3.0 license (see LICENSE.txt for details)
#
# Author: Anna Schwarz
# Created: 2020-12-23
# Reviewed: Robert Kiewisz
################################################################################

MT_classification <- read_excel("Data/MT_classification.xls",
                                sheet = "MT length distrib. Meiosis II",
                                col_names = FALSE
)

# Load X chromosome data

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

# Load Autosomes data

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