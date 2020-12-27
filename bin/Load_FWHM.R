################################################################################
# Module Load data for FWHM
#
# (c) 2020 Schwarz/Kiewisz
# This code is licensed under GPL V3.0 license (see LICENSE.txt for details)
#
# Author: Anna Schwarz & Robert Kiewisz
# Created: 2020-12-27
################################################################################

# Load data
Data <- read_excel("Data/chromosome_stretch_example_lagX6.xls")

# Get a names from first column and use it as a column names
names(Data) <- paste(Data[1, ])
Data <- mutate_all(
  Data[2:nrow(Data), ],
  as.numeric
)
