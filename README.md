# R script to create volatile wheel ##
Idea: Haley Sater  
Script: Rodrigo Amadeu  
Blueberry Breeding and Genomics Lab - University of Florida  
PI: Dr. Patricio Munoz  
www.blueberrybreeding.com  

Contact: Rodrigo Amadeu
rramadeu@gmail.com  
https://rramadeu.github.io  
Jun 12th 2020  

The R script creates two wheels. One with solid colors and a second with the same colors in gradient. The input is a xlsx spreadsheet with four columns (type, descrip, compounds, and colorHEX). 
Descrip and compounds are subcategories of type. Each type has an unique color.
The colorHEX column is which color should be in the solid wheel. For visual purpose only I colored the cells by the colorHEX, but the R script does not use this information.
The gradient wheel is create automatically based on the categories nesting. 

You just need to fill the xlsx with your data and run the code in R. 
It generates two svg figures that are easily edited in any image software (we used https://inkscape.org/).
We put the names by "hand" with inkscape due to time issues to code an automatic procedure...
