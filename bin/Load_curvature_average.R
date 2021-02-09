# Load data
curvature <- read_excel("Data/curvature_all.xls",
                                sheet = "average",
                                col_names = FALSE
)

#Load data
assign(
  paste(curvature[1, 1]),
  curvature[2:nrow(curvature), 1]
)
assign(
  paste(curvature[1, 1]),
  na.omit(get(paste(curvature[1, 1])))
)
metaIall_C <- data.frame(as.numeric(as.matrix(`metaI`[1:nrow(`metaI`),1])))
names(metaIall_C)[1] <- "Data"
rm(`metaI`)

assign(
  paste(curvature[1, 2]),
  curvature[2:nrow(curvature), 2]
)
assign(
  paste(curvature[1, 2]),
  na.omit(get(paste(curvature[1, 2])))
)
anaIall_C <- data.frame(as.numeric(as.matrix(`anaI`[1:nrow(`anaI`),1])))
names(anaIall_C)[1] <- "Data"
rm(`anaI`)

assign(
  paste(curvature[1, 3]),
  curvature[2:nrow(curvature), 3]
)
assign(
  paste(curvature[1, 3]),
  na.omit(get(paste(curvature[1, 3])))
)
metaIIall_C <- data.frame(as.numeric(as.matrix(`metaII`[1:nrow(`metaII`),1])))
names(metaIIall_C)[1] <- "Data"
rm(`metaII`)

assign(
  paste(curvature[1, 4]),
  curvature[2:nrow(curvature), 4]
)
assign(
  paste(curvature[1, 4]),
  na.omit(get(paste(curvature[1, 4])))
)
anaIIall_C <- data.frame(as.numeric(as.matrix(`anaII`[1:nrow(`anaII`),1])))
names(anaIIall_C)[1] <- "Data"
rm(`anaII`)

assign(
  paste(curvature[1, 5]),
  curvature[2:nrow(curvature), 5]
)
assign(
  paste(curvature[1, 5]),
  na.omit(get(paste(curvature[1, 5])))
)
lateanaIIall_C <- data.frame(as.numeric(as.matrix(`lateanaII`[1:nrow(`lateanaII`),1])))
names(lateanaIIall_C)[1] <- "Data"
rm(`lateanaII`)

