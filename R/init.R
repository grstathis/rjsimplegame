#Script to create boiler plate code of the htmlwidget package.
#Run this script only once when you create the project.
#Author : Stathis Grigoropoulos


#Uncomment the install packages code to check the needed packages.
#install.packages('roxygen2')
#install.packages('htmlwidgets')
library(htmlwidgets)
scaffoldWidget("rjgame", edit = FALSE)
