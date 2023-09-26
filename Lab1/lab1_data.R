#EPI_data <- read.csv("EPI_data_2010.csv")
EPI_data <- read.csv("C:/Users/heffec/Documents/GitHub/DataAnalytics_Fall2023_ChrisHeffernan/Lab1/EPI_data_2010.csv")
#or
#EPI_data <- read.xlsx(”<path>/2010EPI_data.xlsx")
# Note: replace default data frame name – cannot start with numbers!
View(EPI_data)
#
attach(EPI_data) 	# sets the ‘default’ object
fix(EPI_data) 	# launches a simple data editor
EPI 			# prints out values EPI_data$EPI
tf <- is.na(EPI) # records True values if the value is NA
E <- EPI[!tf] # filters out NA values, new array

#other data
GRUMP_data <- read.csv("GPW3_GRUMP_SummaryInformation_2010.csv")

