## @knitr reproducibility

InstallAndLoadRequiredPackages <- function() {
  # Load the required packages.
  if (!require('pacman')) {
    install.packages('pacman')
  }
  pacman::p_load(cowplot, grid, gridExtra, gtable, tidyverse)
}

InstallAndLoadRequiredPackages()

set.seed(12345) # Everybody's in the car, so come on / Let's ride to the
