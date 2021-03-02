# Load data
centrioles <- read_excel("Data/centriole_distances.xls",
                                sheet = "centrioles",
                                col_names = FALSE
)

#Load data centriole distances
assign(
  paste(centrioles[1, 1]),
  centrioles[2:nrow(centrioles), 1]
)
assign(
  paste(centrioles[1, 1]),
  na.omit(get(paste(centrioles[1, 1])))
)
metaI_centrioles <- data.frame(as.numeric(as.matrix(`metaI`[1:nrow(`metaI`),1])))
names(metaI_centrioles)[1] <- "Data"
rm(`metaI`)

assign(
  paste(centrioles[1, 2]),
  centrioles[2:nrow(centrioles), 2]
)
assign(
  paste(centrioles[1, 2]),
  na.omit(get(paste(centrioles[1, 2])))
)
anaI_centrioles <- data.frame(as.numeric(as.matrix(`anaI`[1:nrow(`anaI`),1])))
names(anaI_centrioles)[1] <- "Data"
rm(`anaI`)

assign(
  paste(centrioles[1, 3]),
  centrioles[2:nrow(centrioles), 3]
)
assign(
  paste(centrioles[1, 3]),
  na.omit(get(paste(centrioles[1, 3])))
)
metaII_centrioles <- data.frame(as.numeric(as.matrix(`metaII`[1:nrow(`metaII`),1])))
names(metaII_centrioles)[1] <- "Data"
rm(`metaII`)

assign(
  paste(centrioles[1, 4]),
  centrioles[2:nrow(centrioles), 4]
)
assign(
  paste(centrioles[1, 4]),
  na.omit(get(paste(centrioles[1, 4])))
)
anaII_centrioles <- data.frame(as.numeric(as.matrix(`anaII`[1:nrow(`anaII`),1])))
names(anaII_centrioles)[1] <- "Data"
rm(`anaII`)

assign(
  paste(centrioles[1, 5]),
  centrioles[2:nrow(centrioles), 5]
)
assign(
  paste(centrioles[1, 5]),
  na.omit(get(paste(centrioles[1, 5])))
)
lateanaII_centrioles <- data.frame(as.numeric(as.matrix(`lateanaII`[1:nrow(`lateanaII`),1])))
names(lateanaII_centrioles)[1] <- "Data"
rm(`lateanaII`)

