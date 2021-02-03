# Load data
library(readxl)
library(tidyverse)
kMT_classification <- read_excel("Data/xMT_classification_MI.xls",
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
metaI5x_E <- data.frame(as.numeric(as.matrix(`metaI5`[2:nrow(`metaI5`),1])))
names(metaI5x_E)[1] <- "Data"
rm(`metaI5`)

assign(
  paste(kMT_classification[1, 4]),
  kMT_classification[2:nrow(kMT_classification), 4]
)
assign(
  paste(kMT_classification[1, 4]),
  na.omit(get(paste(kMT_classification[1, 4])))
)
metaI7x_E <- data.frame(as.numeric(as.matrix(`metaI7`[2:nrow(`metaI7`),1])))
names(metaI7x_E)[1] <- "Data"
rm(`metaI7`)

assign(
  paste(kMT_classification[1, 7]),
  kMT_classification[2:nrow(kMT_classification), 7]
)
assign(
  paste(kMT_classification[1, 7]),
  na.omit(get(paste(kMT_classification[1, 7])))
)
metaIx_E <- data.frame(as.numeric(as.matrix(`metaI`[2:nrow(`metaI`),1])))
names(metaIx_E)[1] <- "Data"
rm(`metaI`)


#Load data lateral
assign(
  paste(kMT_classification[1, 1]),
  kMT_classification[2:nrow(kMT_classification), 2]
)
assign(
  paste(kMT_classification[1, 1]),
  na.omit(get(paste(kMT_classification[1, 1])))
)
metaI5x_L <- data.frame(as.numeric(as.matrix(`metaI5`[2:nrow(`metaI5`),1])))
names(metaI5x_L)[1] <- "Data"
rm(`metaI5`)

assign(
  paste(kMT_classification[1, 4]),
  kMT_classification[2:nrow(kMT_classification), 5]
)
assign(
  paste(kMT_classification[1, 4]),
  na.omit(get(paste(kMT_classification[1, 4])))
)
metaI7x_L <- data.frame(as.numeric(as.matrix(`metaI7`[2:nrow(`metaI7`),1])))
names(metaI7x_L)[1] <- "Data"
rm(`metaI7`)

assign(
  paste(kMT_classification[1, 7]),
  kMT_classification[2:nrow(kMT_classification), 8]
)
assign(
  paste(kMT_classification[1, 7]),
  na.omit(get(paste(kMT_classification[1, 7])))
)
metaIx_L <- data.frame(as.numeric(as.matrix(`metaI`[2:nrow(`metaI`),1])))
names(metaIx_L)[1] <- "Data"
rm(`metaI`)

