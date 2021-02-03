# Load data
curvature <- read_excel("Data/curvature_all.xls",
                                sheet = "curvature",
                                col_names = FALSE
)

#Load data Meiosis I
assign(
  paste(curvature[1, 1]),
  curvature[2:nrow(curvature), 1]
)
assign(
  paste(curvature[1, 1]),
  na.omit(get(paste(curvature[1, 1])))
)
metaI5_C <- data.frame(as.numeric(as.matrix(`metaI5`[1:nrow(`metaI5`),1])))
names(metaI5_C)[1] <- "Data"
rm(`metaI5`)

assign(
  paste(curvature[1, 2]),
  curvature[2:nrow(curvature), 2]
)
assign(
  paste(curvature[1, 2]),
  na.omit(get(paste(curvature[1, 2])))
)
metaI7_C <- data.frame(as.numeric(as.matrix(`metaI7`[1:nrow(`metaI7`),1])))
names(metaI7_C)[1] <- "Data"
rm(`metaI7`)

assign(
  paste(curvature[1, 3]),
  curvature[2:nrow(curvature), 3]
)
assign(
  paste(curvature[1, 3]),
  na.omit(get(paste(curvature[1, 3])))
)
metaI_C <- data.frame(as.numeric(as.matrix(`metaI`[1:nrow(`metaI`),1])))
names(metaI_C)[1] <- "Data"
rm(`metaI`)

assign(
  paste(curvature[1, 4]),
  curvature[2:nrow(curvature), 4]
)
assign(
  paste(curvature[1, 4]),
  na.omit(get(paste(curvature[1, 4])))
)
anaI4_C <- data.frame(as.numeric(as.matrix(`anaI4`[1:nrow(`anaI4`),1])))
names(anaI4_C)[1] <- "Data"
rm(`anaI4`)

assign(
  paste(curvature[1, 5]),
  curvature[2:nrow(curvature), 5]
)
assign(
  paste(curvature[1, 5]),
  na.omit(get(paste(curvature[1, 5])))
)
anaI3_C <- data.frame(as.numeric(as.matrix(`anaI3`[1:nrow(`anaI3`),1])))
names(anaI3_C)[1] <- "Data"
rm(`anaI3`)

assign(
  paste(curvature[1, 6]),
  curvature[2:nrow(curvature), 6]
)
assign(
  paste(curvature[1, 6]),
  na.omit(get(paste(curvature[1, 6])))
)
anaI7_C <- data.frame(as.numeric(as.matrix(`anaI7`[1:nrow(`anaI7`),1])))
names(anaI7_C)[1] <- "Data"
rm(`anaI7`)

assign(
  paste(curvature[1, 7]),
  curvature[2:nrow(curvature), 7]
)
assign(
  paste(curvature[1, 7]),
  na.omit(get(paste(curvature[1, 7])))
)
anaI1_C <- data.frame(as.numeric(as.matrix(`anaI1`[1:nrow(`anaI1`),1])))
names(anaI1_C)[1] <- "Data"
rm(`anaI1`)

#Load data Meiosis II
assign(
  paste(curvature[1, 9]),
  curvature[2:nrow(curvature), 9]
)
assign(
  paste(curvature[1, 9]),
  na.omit(get(paste(curvature[1, 9])))
)
ana_meta_1_C <- data.frame(as.numeric(as.matrix(`ana_meta_1`[1:nrow(`ana_meta_1`),1])))
names(ana_meta_1_C)[1] <- "Data"
rm(`ana_meta_1`)

assign(
  paste(curvature[1, 10]),
  curvature[2:nrow(curvature), 10]
)
assign(
  paste(curvature[1, 10]),
  na.omit(get(paste(curvature[1, 10])))
)
ana_meta_2_C <- data.frame(as.numeric(as.matrix(`ana_meta_2`[1:nrow(`ana_meta_2`),1])))
names(ana_meta_2_C)[1] <- "Data"
rm(`ana_meta_2`)

assign(
  paste(curvature[1, 11]),
  curvature[2:nrow(curvature), 11]
)
assign(
  paste(curvature[1, 11]),
  na.omit(get(paste(curvature[1, 11])))
)
metaII1_C <- data.frame(as.numeric(as.matrix(`metaII1`[1:nrow(`metaII1`),1])))
names(metaII1_C)[1] <- "Data"
rm(`metaII1`)

assign(
  paste(curvature[1, 12]),
  curvature[2:nrow(curvature), 12]
)
assign(
  paste(curvature[1, 12]),
  na.omit(get(paste(curvature[1, 12])))
)
metaII2_C <- data.frame(as.numeric(as.matrix(`metaII2`[1:nrow(`metaII2`),1])))
names(metaII2_C)[1] <- "Data"
rm(`metaII2`)

assign(
  paste(curvature[1, 13]),
  curvature[2:nrow(curvature), 13]
)
assign(
  paste(curvature[1, 13]),
  na.omit(get(paste(curvature[1, 13])))
)
lagX6_C <- data.frame(as.numeric(as.matrix(`lagX6`[1:nrow(`lagX6`),1])))
names(lagX6)[1] <- "Data"
rm(`lagX6`)

assign(
  paste(curvature[1, 14]),
  curvature[2:nrow(curvature), 14]
)
assign(
  paste(curvature[1, 14]),
  na.omit(get(paste(curvature[1, 14])))
)
lagX_C <- data.frame(as.numeric(as.matrix(`lagX`[1:nrow(`lagX`),1])))
names(lagX_C)[1] <- "Data"
rm(`lagX`)

assign(
  paste(curvature[1, 15]),
  curvature[2:nrow(curvature), 15]
)
assign(
  paste(curvature[1, 15]),
  na.omit(get(paste(curvature[1, 15])))
)
lagX9_C <- data.frame(as.numeric(as.matrix(`lagX9`[1:nrow(`lagX9`),1])))
names(lagX9_C)[1] <- "Data"
rm(`lagX9`)

assign(
  paste(curvature[1, 16]),
  curvature[2:nrow(curvature), 16]
)
assign(
  paste(curvature[1, 16]),
  na.omit(get(paste(curvature[1, 16])))
)
lagX5_C <- data.frame(as.numeric(as.matrix(`lagX5`[1:nrow(`lagX5`),1])))
names(lagX5_C)[1] <- "Data"
rm(`lagX5`)

assign(
  paste(curvature[1, 17]),
  curvature[2:nrow(curvature), 17]
)
assign(
  paste(curvature[1, 17]),
  na.omit(get(paste(curvature[1, 17])))
)
anaII15_C <- data.frame(as.numeric(as.matrix(`anaII15`[1:nrow(`anaII15`),1])))
names(anaII15_C)[1] <- "Data"
rm(`anaII15`)

assign(
  paste(curvature[1, 18]),
  curvature[2:nrow(curvature), 18]
)
assign(
  paste(curvature[1, 18]),
  na.omit(get(paste(curvature[1, 18])))
)
lateanaII2_C <- data.frame(as.numeric(as.matrix(`lateanaII2`[1:nrow(`lateanaII2`),1])))
names(lateanaII2_C)[1] <- "Data"
rm(`lateanaII2`)

assign(
  paste(curvature[1, 19]),
  curvature[2:nrow(curvature), 19]
)
assign(
  paste(curvature[1, 19]),
  na.omit(get(paste(curvature[1, 19])))
)
lateanaII3_C <- data.frame(as.numeric(as.matrix(`lateanaII3`[1:nrow(`lateanaII3`),1])))
names(lateanaII3_C)[1] <- "Data"
rm(`lateanaII3`)

assign(
  paste(curvature[1, 20]),
  curvature[2:nrow(curvature), 20]
)
assign(
  paste(curvature[1, 20]),
  na.omit(get(paste(curvature[1, 20])))
)
lateanaII1_C <- data.frame(as.numeric(as.matrix(`lateanaII1`[1:nrow(`lateanaII1`),1])))
names(lateanaII1_C)[1] <- "Data"
rm(`lateanaII1`)

assign(
  paste(curvature[1, 21]),
  curvature[2:nrow(curvature), 21]
)
assign(
  paste(curvature[1, 21]),
  na.omit(get(paste(curvature[1, 21])))
)
anaII1_C <- data.frame(as.numeric(as.matrix(`anaII1`[1:nrow(`anaII1`),1])))
names(anaII1_C)[1] <- "Data"
rm(`anaII1`)