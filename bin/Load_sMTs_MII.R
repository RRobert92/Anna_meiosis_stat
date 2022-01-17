# Load data
library(readxl)
library(tidyverse)
sMT_classification <- read_excel("Data/sMT_classification_MII.xls",
                                sheet = "sMTs_length",
                                col_names = FALSE
)

#Load data
assign(
  paste(sMT_classification[1, 1]),
  sMT_classification[2:nrow(sMT_classification), 1]
)
assign(
  paste(sMT_classification[1, 1]),
  na.omit(get(paste(sMT_classification[1, 1])))
)
anaI_1_S <- data.frame(as.numeric(as.matrix(`anaI_META_1`[1:nrow(`anaI_META_1`),1])))
names(anaI_1_S)[1] <- "Data"
rm(`anaI_META_1`)

assign(
  paste(sMT_classification[1, 3]),
  sMT_classification[2:nrow(sMT_classification), 3]
)
assign(
  paste(sMT_classification[1, 3]),
  na.omit(get(paste(sMT_classification[1, 3])))
)
anaI_2_S <- data.frame(as.numeric(as.matrix(`anaI_META_2`[1:nrow(`anaI_META_2`),1])))
names(anaI_2_S)[1] <- "Data"
rm(`anaI_META_2`)

assign(
  paste(sMT_classification[1, 5]),
  sMT_classification[2:nrow(sMT_classification), 5]
)
assign(
  paste(sMT_classification[1, 5]),
  na.omit(get(paste(sMT_classification[1, 5])))
)
metaII1_S <- data.frame(as.numeric(as.matrix(`metaII1`[1:nrow(`metaII1`),1])))
names(metaII1_S)[1] <- "Data"
rm(`metaII1`)

assign(
  paste(sMT_classification[1, 7]),
  sMT_classification[2:nrow(sMT_classification), 7]
)
assign(
  paste(sMT_classification[1, 7]),
  na.omit(get(paste(sMT_classification[1, 7])))
)
metaII2_S <- data.frame(as.numeric(as.matrix(`metaII2`[1:nrow(`metaII2`),1])))
names(metaII2_S)[1] <- "Data"
rm(`metaII2`)

assign(
  paste(sMT_classification[1, 9]),
  sMT_classification[2:nrow(sMT_classification), 9]
)
assign(
  paste(sMT_classification[1, 9]),
  na.omit(get(paste(sMT_classification[1, 9])))
)
lagX6_S <- data.frame(as.numeric(as.matrix(`lagX6`[1:nrow(`lagX6`),1])))
names(lagX6_S)[1] <- "Data"
rm(`lagX6`)

assign(
  paste(sMT_classification[1, 11]),
  sMT_classification[2:nrow(sMT_classification), 11]
)
assign(
  paste(sMT_classification[1, 11]),
  na.omit(get(paste(sMT_classification[1, 11])))
)
lagX_S <- data.frame(as.numeric(as.matrix(`lagX`[1:nrow(`lagX`),1])))
names(lagX_S)[1] <- "Data"
rm(`lagX`)

assign(
  paste(sMT_classification[1, 13]),
  sMT_classification[2:nrow(sMT_classification), 13]
)
assign(
  paste(sMT_classification[1, 13]),
  na.omit(get(paste(sMT_classification[1, 13])))
)
lagX9_S <- data.frame(as.numeric(as.matrix(`lagX9`[1:nrow(`lagX9`),1])))
names(lagX9_S)[1] <- "Data"
rm(`lagX9`)

assign(
  paste(sMT_classification[1, 15]),
  sMT_classification[2:nrow(sMT_classification), 15]
)
assign(
  paste(sMT_classification[1, 15]),
  na.omit(get(paste(sMT_classification[1, 15])))
)
lagX5_S <- data.frame(as.numeric(as.matrix(`lagX5`[1:nrow(`lagX5`),1])))
names(lagX5_S)[1] <- "Data"
rm(`lagX5`)

assign(
  paste(sMT_classification[1, 17]),
  sMT_classification[2:nrow(sMT_classification), 17]
)
assign(
  paste(sMT_classification[1, 17]),
  na.omit(get(paste(sMT_classification[1, 17])))
)
anaII15_S <- data.frame(as.numeric(as.matrix(`anaII15`[1:nrow(`anaII15`),1])))
names(anaII15_S)[1] <- "Data"
rm(`anaII15`)

assign(
  paste(sMT_classification[1, 19]),
  sMT_classification[2:nrow(sMT_classification), 19]
)
assign(
  paste(sMT_classification[1, 19]),
  na.omit(get(paste(sMT_classification[1, 19])))
)
lateanaII2_S <- data.frame(as.numeric(as.matrix(`lateanaII2`[1:nrow(`lateanaII2`),1])))
names(lateanaII2_S)[1] <- "Data"
rm(`lateanaII2`)

assign(
  paste(sMT_classification[1, 21]),
  sMT_classification[2:nrow(sMT_classification), 21]
)
assign(
  paste(sMT_classification[1, 21]),
  na.omit(get(paste(sMT_classification[1, 21])))
)
lateanaII3_S <- data.frame(as.numeric(as.matrix(`lateanaII3`[1:nrow(`lateanaII3`),1])))
names(lateanaII3_S)[1] <- "Data"
rm(`lateanaII3`)

assign(
  paste(sMT_classification[1, 23]),
  sMT_classification[2:nrow(sMT_classification), 23]
)
assign(
  paste(sMT_classification[1, 23]),
  na.omit(get(paste(sMT_classification[1, 23])))
)
lateanaII1_S <- data.frame(as.numeric(as.matrix(`lateanaII1`[1:nrow(`lateanaII1`),1])))
names(lateanaII1_S)[1] <- "Data"
rm(`lateanaII1`)

assign(
  paste(sMT_classification[1, 25]),
  sMT_classification[2:nrow(sMT_classification), 25]
)
assign(
  paste(sMT_classification[1, 25]),
  na.omit(get(paste(sMT_classification[1, 25])))
)
anaII1_S <- data.frame(as.numeric(as.matrix(`anaII1`[1:nrow(`anaII1`),1])))
names(anaII1_S)[1] <- "Data"
rm(`anaII1`)