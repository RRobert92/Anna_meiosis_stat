# Load data
library(readxl)
library(tidyverse)
sMT_classification <- read_excel("Data/sMT_classification_MI.xls",
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
metaI5s <- data.frame(as.numeric(as.matrix(`metaI5`[1:nrow(`metaI5`),1])))
names(metaI5s)[1] <- "Data"
rm(`metaI5`)

assign(
  paste(sMT_classification[1, 3]),
  sMT_classification[2:nrow(sMT_classification), 3]
)
assign(
  paste(sMT_classification[1, 3]),
  na.omit(get(paste(sMT_classification[1, 3])))
)
metaI7s <- data.frame(as.numeric(as.matrix(`metaI7`[1:nrow(`metaI7`),1])))
names(metaI7s)[1] <- "Data"
rm(`metaI7`)

assign(
  paste(sMT_classification[1, 5]),
  sMT_classification[2:nrow(sMT_classification), 5]
)
assign(
  paste(sMT_classification[1, 5]),
  na.omit(get(paste(sMT_classification[1, 5])))
)
metaIs <- data.frame(as.numeric(as.matrix(`metaI`[1:nrow(`metaI`),1])))
names(metaIs)[1] <- "Data"
rm(`metaI`)

assign(
  paste(sMT_classification[1, 7]),
  sMT_classification[2:nrow(sMT_classification), 7]
)
assign(
  paste(sMT_classification[1, 7]),
  na.omit(get(paste(sMT_classification[1, 7])))
)
anaI4s <- data.frame(as.numeric(as.matrix(`anaI4`[1:nrow(`anaI4`),1])))
names(anaI4s)[1] <- "Data"
rm(`anaI4`)

assign(
  paste(sMT_classification[1, 9]),
  sMT_classification[2:nrow(sMT_classification), 9]
)
assign(
  paste(sMT_classification[1, 9]),
  na.omit(get(paste(sMT_classification[1, 9])))
)
anaI3s <- data.frame(as.numeric(as.matrix(`anaI3`[1:nrow(`anaI3`),1])))
names(anaI3s)[1] <- "Data"
rm(`anaI3`)

assign(
  paste(sMT_classification[1, 11]),
  sMT_classification[2:nrow(sMT_classification), 11]
)
assign(
  paste(sMT_classification[1, 11]),
  na.omit(get(paste(sMT_classification[1, 11])))
)
anaI7s <- data.frame(as.numeric(as.matrix(`anaI7`[1:nrow(`anaI7`),1])))
names(anaI7s)[1] <- "Data"
rm(`anaI7`)

assign(
  paste(sMT_classification[1, 13]),
  sMT_classification[2:nrow(sMT_classification), 13]
)
assign(
  paste(sMT_classification[1, 13]),
  na.omit(get(paste(sMT_classification[1, 13])))
)
anaI1s <- data.frame(as.numeric(as.matrix(`anaI1`[1:nrow(`anaI1`),1])))
names(anaI1s)[1] <- "Data"
rm(`anaI1`)

