# Load data
library(readxl)
library(tidyverse)
kMT_classification <- read_excel("Data/kMT_classification.xls",
                                sheet = "xMTs_length",
                                col_names = FALSE
)

#Load data end-on
assign(
  paste(kMT_classification[1, 1]),
  kMT_classification[2:nrow(kMT_classification), 1]
)
assign(
  paste(kMT_classification[1, 1]),
  na.omit(get(paste(kMT_classification[1, 1])))
)
metaII1x_E <- data.frame(as.numeric(as.matrix(`metaII1`[2:nrow(`metaII1`),1])))
names(metaII1x_E)[1] <- "Data"
rm(`metaII1`)

assign(
  paste(kMT_classification[1, 4]),
  kMT_classification[2:nrow(kMT_classification), 4]
)
assign(
  paste(kMT_classification[1, 4]),
  na.omit(get(paste(kMT_classification[1, 4])))
)
metaII2x_E <- data.frame(as.numeric(as.matrix(`metaII2`[2:nrow(`metaII2`),1])))
names(metaII2x_E)[1] <- "Data"
rm(`metaII2`)

assign(
  paste(kMT_classification[1, 7]),
  kMT_classification[2:nrow(kMT_classification), 7]
)
assign(
  paste(kMT_classification[1, 7]),
  na.omit(get(paste(kMT_classification[1, 7])))
)
lagX6x_E <- data.frame(as.numeric(as.matrix(`lagX6`[2:nrow(`lagX6`),1])))
names(lagX6x_E)[1] <- "Data"
rm(`lagX6`)

assign(
  paste(kMT_classification[1, 10]),
  kMT_classification[2:nrow(kMT_classification), 10]
)
assign(
  paste(kMT_classification[1, 10]),
  na.omit(get(paste(kMT_classification[1, 10])))
)
lagXx_E <- data.frame(as.numeric(as.matrix(`lagX`[2:nrow(`lagX`),1])))
names(lagXx_E)[1] <- "Data"
rm(`lagX`)

assign(
  paste(kMT_classification[1, 13]),
  kMT_classification[2:nrow(kMT_classification), 13]
)
assign(
  paste(kMT_classification[1, 13]),
  na.omit(get(paste(kMT_classification[1, 13])))
)
lagX5x_E <- data.frame(as.numeric(as.matrix(`lagX5`[2:nrow(`lagX5`),1])))
names(lagX5x_E)[1] <- "Data"
rm(`lagX5`)

assign(
  paste(kMT_classification[1, 16]),
  kMT_classification[2:nrow(kMT_classification), 16]
)
assign(
  paste(kMT_classification[1, 16]),
  na.omit(get(paste(kMT_classification[1, 16])))
)
anaII15x_E <- data.frame(as.numeric(as.matrix(`anaII15`[2:nrow(`anaII15`),1])))
names(anaII15x_E)[1] <- "Data"
rm(`anaII15`)

assign(
  paste(kMT_classification[1, 19]),
  kMT_classification[2:nrow(kMT_classification), 19]
)
assign(
  paste(kMT_classification[1, 19]),
  na.omit(get(paste(kMT_classification[1, 19])))
)
lateanaII2x_E <- data.frame(as.numeric(as.matrix(`lateanaII2`[2:nrow(`lateanaII2`),1])))
names(lateanaII2x_E)[1] <- "Data"
rm(`lateanaII2`)

assign(
  paste(kMT_classification[1, 22]),
  kMT_classification[2:nrow(kMT_classification), 22]
)
assign(
  paste(kMT_classification[1, 22]),
  na.omit(get(paste(kMT_classification[1, 22])))
)
lateanaII3x_E <- data.frame(as.numeric(as.matrix(`lateanaII3`[2:nrow(`lateanaII3`),1])))
names(lateanaII3x_E)[1] <- "Data"
rm(`lateanaII3`)

assign(
  paste(kMT_classification[1, 25]),
  kMT_classification[2:nrow(kMT_classification), 25]
)
assign(
  paste(kMT_classification[1, 25]),
  na.omit(get(paste(kMT_classification[1, 25])))
)
lateanaII1x_E <- data.frame(as.numeric(as.matrix(`lateanaII1`[2:nrow(`lateanaII1`),1])))
names(lateanaII1x_E)[1] <- "Data"
rm(`lateanaII1`)

assign(
  paste(kMT_classification[1, 28]),
  kMT_classification[2:nrow(kMT_classification), 28]
)
assign(
  paste(kMT_classification[1, 28]),
  na.omit(get(paste(kMT_classification[1, 28])))
)
anaII1x_E <- data.frame(as.numeric(as.matrix(`anaII1`[2:nrow(`anaII1`),1])))
names(anaII1x_E)[1] <- "Data"
rm(`anaII1`)

#Load data lateral
assign(
  paste(kMT_classification[1, 1]),
  kMT_classification[2:nrow(kMT_classification), 2]
)
assign(
  paste(kMT_classification[1, 1]),
  na.omit(get(paste(kMT_classification[1, 1])))
)
metaII1x_L <- data.frame(as.numeric(as.matrix(`metaII1`[2:nrow(`metaII1`),1])))
names(metaII1x_L)[1] <- "Data"
rm(`metaII1`)

assign(
  paste(kMT_classification[1, 4]),
  kMT_classification[2:nrow(kMT_classification), 5]
)
assign(
  paste(kMT_classification[1, 4]),
  na.omit(get(paste(kMT_classification[1, 4])))
)
metaII2x_L <- data.frame(as.numeric(as.matrix(`metaII2`[2:nrow(`metaII2`),1])))
names(metaII2x_L)[1] <- "Data"
rm(`metaII2`)

assign(
  paste(kMT_classification[1, 7]),
  kMT_classification[2:nrow(kMT_classification), 8]
)
assign(
  paste(kMT_classification[1, 7]),
  na.omit(get(paste(kMT_classification[1, 7])))
)
lagX6x_L <- data.frame(as.numeric(as.matrix(`lagX6`[2:nrow(`lagX6`),1])))
names(lagX6x_L)[1] <- "Data"
rm(`lagX6`)

assign(
  paste(kMT_classification[1, 10]),
  kMT_classification[2:nrow(kMT_classification), 11]
)
assign(
  paste(kMT_classification[1, 10]),
  na.omit(get(paste(kMT_classification[1, 10])))
)
lagXx_L <- data.frame(as.numeric(as.matrix(`lagX`[2:nrow(`lagX`),1])))
names(lagXx_L)[1] <- "Data"
rm(`lagX`)

assign(
  paste(kMT_classification[1, 13]),
  kMT_classification[2:nrow(kMT_classification), 14]
)
assign(
  paste(kMT_classification[1, 13]),
  na.omit(get(paste(kMT_classification[1, 13])))
)
lagX5x_L <- data.frame(as.numeric(as.matrix(`lagX5`[2:nrow(`lagX5`),1])))
names(lagX5x_L)[1] <- "Data"
rm(`lagX5`)

assign(
  paste(kMT_classification[1, 16]),
  kMT_classification[2:nrow(kMT_classification), 17]
)
assign(
  paste(kMT_classification[1, 16]),
  na.omit(get(paste(kMT_classification[1, 16])))
)
anaII15x_L <- data.frame(as.numeric(as.matrix(`anaII15`[2:nrow(`anaII15`),1])))
names(anaII15x_L)[1] <- "Data"
rm(`anaII15`)

assign(
  paste(kMT_classification[1, 19]),
  kMT_classification[2:nrow(kMT_classification), 20]
)
assign(
  paste(kMT_classification[1, 19]),
  na.omit(get(paste(kMT_classification[1, 19])))
)
lateanaII2x_L <- data.frame(as.numeric(as.matrix(`lateanaII2`[2:nrow(`lateanaII2`),1])))
names(lateanaII2x_L)[1] <- "Data"
rm(`lateanaII2`)

assign(
  paste(kMT_classification[1, 22]),
  kMT_classification[2:nrow(kMT_classification), 23]
)
assign(
  paste(kMT_classification[1, 22]),
  na.omit(get(paste(kMT_classification[1, 22])))
)
lateanaII3x_L <- data.frame(as.numeric(as.matrix(`lateanaII3`[2:nrow(`lateanaII3`),1])))
names(lateanaII3x_L)[1] <- "Data"
rm(`lateanaII3`)

assign(
  paste(kMT_classification[1, 25]),
  kMT_classification[2:nrow(kMT_classification), 26]
)
assign(
  paste(kMT_classification[1, 25]),
  na.omit(get(paste(kMT_classification[1, 25])))
)
lateanaII1x_L <- data.frame(as.numeric(as.matrix(`lateanaII1`[2:nrow(`lateanaII1`),1])))
names(lateanaII1x_L)[1] <- "Data"
rm(`lateanaII1`)

assign(
  paste(kMT_classification[1, 28]),
  kMT_classification[2:nrow(kMT_classification), 29]
)
assign(
  paste(kMT_classification[1, 28]),
  na.omit(get(paste(kMT_classification[1, 28])))
)
anaII1x_L <- data.frame(as.numeric(as.matrix(`anaII1`[2:nrow(`anaII1`),1])))
names(anaII1x_L)[1] <- "Data"
rm(`anaII1`)
