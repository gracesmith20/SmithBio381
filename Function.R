##############################
# FUNCTION: get_data
# packages: none
# purpose: open a data file
# input: name and path of .csv
# output: dataframe
# ---------------------------------
get_data <- function(file_name=NULL) {
  if(is.null(file_name)) {
    my_data <- data.frame(CT=rnorm(40, mean = 150, sd = 15),
                          RT=rnorm(40, mean = 140, sd = 20),
                          RL=rnorm(40, mean = 130, sd = 35), 
                          TR=rnorm(40, mean = 120, sd = 50))
  } else {
    my_data <- read.table(file=file_name,
                          header = TRUE,
                          sep = ",")
  }
  return(my_data)
}

get_data()

##############################
# FUNCTION: pivot_data
# packages: none
# purpose:
# input:
# output:
# ---------------------------------
pivot_data <- function(z) {
  z <-z %>%
    pivot_longer(cols=1:4,
                 names_to = "treatment",
                 values_to = "agb_Mg")
  
}

pivot_data()


##############################
# FUNCTION: calculate_stuff
# packages: none
# purpose:
# input:
# output:
# ---------------------------------
calculate_stuff <- function(x) {
  y <- aov(better_data$agb_Mg~better_data$treatment)
  summary(y)
  
  return(summary(y))
}


