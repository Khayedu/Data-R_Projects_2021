# Initialization --------------------------------------------------------------
install.packages("weathercan")
# ... any other packages

library(readr)
library(weathercan)
library(ggplot2)
# ... any other libraries


# Startup Function --------------------------------------------------------

startup <- function() {
  
  # Getting the working directory
  wd <- getwd()
  
  # Creating extra directories --------------------------------------------------
  directories <- c("Data - Raw", "Data - Clean", "Results", "Scripts", 
                   "Figures")
  
  if (file.exists("ReadMe.txt")){
    print("Directories already exist")
  } else {
    dir.create("Data - Raw")
    dir.create("Data - Clean")
    dir.create("Results")
    dir.create("Scripts")
    dir.create("Figures")
    file.create("ReadMe.txt")
  }
  
  
  # Creating other scripts ------------------------------------------------------
  files <- c("DataClean.R","DataVis.R","DataAnalysis.R","Functions.R","Main.R")
  
  if (file.exists(files[1])) {
    print("Files already exist")
  } else {
    file.create("Scripts/DataClean.R")
  }
  
  if (file.exists(files[2])) {
    print("Files already exist")
  } else {
    file.create("Scripts/DataVis.R")
  }
  
  if (file.exists(files[3])) {
    print("Files already exist")
  } else {
    file.create("Scripts/DataAnalysis.R")
  }
  
  if (file.exists(files[4])) {
    print("Files already exist")
  } else {
    file.create("Scripts/Functions.R")
  }  
  
  if (file.exists(files[5])) {
    print("Files already exist")
  } else {
    file.create("Main.R")
  }
  
  
  # Sources -----------------------------------------------------------------
  
  source("Scripts/Functions.R")    
  
}

startup()

