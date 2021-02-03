# Load data
library(readxl)
library(tidyverse)
kMT_classification <- read_excel("Data/aMT_classification_MI.xls",
                                sheet = "aMTs_length",
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
metaI5a_E <- data.frame(as.numeric(as.matrix(`metaI5`[2:nrow(`metaI5`),1])))
names(metaI5a_E)[1] <- "Data"
rm(`metaI5`)

assign(
  paste(kMT_classification[1, 4]),
  kMT_classification[2:nrow(kMT_classification), 4]
)
assign(
  paste(kMT_classification[1, 4]),
  na.omit(get(paste(kMT_classification[1, 4])))
)
metaI7a_E <- data.frame(as.numeric(as.matrix(`metaI7`[2:nrow(`metaI7`),1])))
names(metaI7a_E)[1] <- "Data"
rm(`metaI7`)

assign(
  paste(kMT_classification[1, 7]),
  kMT_classification[2:nrow(kMT_classification), 7]
)
assign(
  paste(kMT_classification[1, 7]),
  na.omit(get(paste(kMT_classification[1, 7])))
)
metaIa_E <- data.frame(as.numeric(as.matrix(`metaI`[2:nrow(`metaI`),1])))
names(metaIa_E)[1] <- "Data"
rm(`metaI`)

assign(
  paste(kMT_classification[1, 10]),
  kMT_classification[2:nrow(kMT_classification), 10]
)
assign(
  paste(kMT_classification[1, 10]),
  na.omit(get(paste(kMT_classification[1, 10])))
)
anaI4a_E <- data.frame(as.numeric(as.matrix(`anaI4`[2:nrow(`anaI4`),1])))
names(anaI4a_E)[1] <- "Data"
rm(`anaI4`)

assign(
  paste(kMT_classification[1, 13]),
  kMT_classification[2:nrow(kMT_classification), 13]
)
assign(
  paste(kMT_classification[1, 13]),
  na.omit(get(paste(kMT_classification[1, 13])))
)
anaI3a_E <- data.frame(as.numeric(as.matrix(`anaI3`[2:nrow(`anaI3`),1])))
names(anaI3a_E)[1] <- "Data"
rm(`anaI3`)

assign(
  paste(kMT_classification[1, 16]),
  kMT_classification[2:nrow(kMT_classification), 16]
)
assign(
  paste(kMT_classification[1, 16]),
  na.omit(get(paste(kMT_classification[1, 16])))
)
anaI7a_E <- data.frame(as.numeric(as.matrix(`anaI7`[2:nrow(`anaI7`),1])))
names(anaI7a_E)[1] <- "Data"
rm(`anaI7`)

assign(
  paste(kMT_classification[1, 19]),
  kMT_classification[2:nrow(kMT_classification), 19]
)
assign(
  paste(kMT_classification[1, 19]),
  na.omit(get(paste(kMT_classification[1, 19])))
)
anaI1a_E <- data.frame(as.numeric(as.matrix(`anaI1`[2:nrow(`anaI1`),1])))
names(anaI1a_E)[1] <- "Data"
rm(`anaI1`)


#Load data lateral
assign(
  paste(kMT_classification[1, 1]),
  kMT_classification[2:nrow(kMT_classification), 2]
)
assign(
  paste(kMT_classification[1, 1]),
  na.omit(get(paste(kMT_classification[1, 1])))
)
metaI5a_L <- data.frame(as.numeric(as.matrix(`metaI5`[2:nrow(`metaI5`),1])))
names(metaI5a_L)[1] <- "Data"
rm(`metaI5`)

assign(
  paste(kMT_classification[1, 4]),
  kMT_classification[2:nrow(kMT_classification), 5]
)
assign(
  paste(kMT_classification[1, 4]),
  na.omit(get(paste(kMT_classification[1, 4])))
)
metaI7a_L <- data.frame(as.numeric(as.matrix(`metaI7`[2:nrow(`metaI7`),1])))
names(metaI7a_L)[1] <- "Data"
rm(`metaI7`)

assign(
  paste(kMT_classification[1, 7]),
  kMT_classification[2:nrow(kMT_classification), 8]
)
assign(
  paste(kMT_classification[1, 7]),
  na.omit(get(paste(kMT_classification[1, 7])))
)
metaIa_L <- data.frame(as.numeric(as.matrix(`metaI`[2:nrow(`metaI`),1])))
names(metaIa_L)[1] <- "Data"
rm(`metaI`)

assign(
  paste(kMT_classification[1, 10]),
  kMT_classification[2:nrow(kMT_classification), 11]
)
assign(
  paste(kMT_classification[1, 10]),
  na.omit(get(paste(kMT_classification[1, 10])))
)
anaI4a_L <- data.frame(as.numeric(as.matrix(`anaI4`[2:nrow(`anaI4`),1])))
names(anaI4a_L)[1] <- "Data"
rm(`anaI4`)

assign(
  paste(kMT_classification[1, 13]),
  kMT_classification[2:nrow(kMT_classification), 14]
)
assign(
  paste(kMT_classification[1, 13]),
  na.omit(get(paste(kMT_classification[1, 13])))
)
anaI3a_L <- data.frame(as.numeric(as.matrix(`anaI3`[2:nrow(`anaI3`),1])))
names(anaI3a_L)[1] <- "Data"
rm(`anaI3`)

assign(
  paste(kMT_classification[1, 16]),
  kMT_classification[2:nrow(kMT_classification), 17]
)
assign(
  paste(kMT_classification[1, 16]),
  na.omit(get(paste(kMT_classification[1, 16])))
)
anaI7a_L <- data.frame(as.numeric(as.matrix(`anaI7`[2:nrow(`anaI7`),1])))
names(anaI7a_L)[1] <- "Data"
rm(`anaI7`)

assign(
  paste(kMT_classification[1, 19]),
  kMT_classification[2:nrow(kMT_classification), 20]
)
assign(
  paste(kMT_classification[1, 19]),
  na.omit(get(paste(kMT_classification[1, 19])))
)
anaI1a_L <- data.frame(as.numeric(as.matrix(`anaI1`[2:nrow(`anaI1`),1])))
names(anaI1a_L)[1] <- "Data"
rm(`anaI1`)
