################################################################################
# Module Gaussian fit
#
# (c) 2020 Kiewisz/Schwarz
# This code is licensed under GPL V3.0 license (see LICENSE.txt for details)
#
# Author: Robert Kiewisz
# Created: 2020-12-25
#
# Usage example: FWHM(x, y, Output_ID)
#
# Where x - X axis data
# Where y - Y axis data
# Where Output_ID: 1 for FWHM coordinates
#                  2 for peak distribution coordinates
#                  3 for length of of FWHM
#                  4 for Gaussian fit
################################################################################

FWHM <- function(x, y, Output_ID) {
  
  #Generate fitted line for given data
  Fit1000 <- round(as.numeric(lm(y ~ splines::ns(x, 1000))[["fitted.values"]]), 2)
  bin <- as_tibble(cbind(Fit1000, x, y))

  # Calculate peak of the distribution
  Peak <- tibble(
    X = filter(bin, y == max(bin$Fit1000))["x"],
    Y = max(bin$Fit1000)
  )

  # Calculate Half distribution
  Half_max <- as.numeric(max(bin$Fit1000) / 2)
  d <- as_tibble(as.numeric(y - Half_max))
  bin <- as_tibble(cbind(bin, d))
  
  # Calculate FWHM
  x1 <- tibble(
    X = bin[which.min(abs(bin[1:which(bin$x == as.numeric(Peak$X)), ]$value)), ]["x"],
    Y = bin[which.min(abs(bin[1:which(bin$x == as.numeric(Peak$X)), ]$value)), ]["y"]
  )
  x2 <- tibble(
    X = bin[as.numeric(which(bin$x == as.numeric(Peak$X)) + 
                       which.min(abs(bin[which(bin$x == as.numeric(Peak$X)):nrow(bin), ]$value)) - 1), ]["x"],
    Y = bin[as.numeric(which(bin$x == as.numeric(Peak$X)) + 
                       which.min(abs(bin[which(bin$x == as.numeric(Peak$X)):nrow(bin), ]$value)) - 1), ]["y"]
  )

  # FWHM
  df <- tibble(
    X = c(x1$X, x2$X),
    Y = c(x1$Y, x2$Y)
  )
  
  # Output: Coordinates for peak
  if (Output_ID == 1) {
    names(Peak)[1] <- "X"
    names(Peak)[2] <- "Y"
    print(Peak)
  }

  # Output: Coordinates for FWHM
  if (Output_ID == 2) {
    print(df)
  }

  # Output: Length of of FWHM
  if (Output_ID == 3) {
    print(abs(as.numeric(df$X[1]) - as.numeric(df$X[2])))
  }

  # Output: Fit
  if (Output_ID == 4) {
    print(Fit1000)
  }
}
