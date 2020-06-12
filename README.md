# R Script to create the Volatile Wheel ##
Idea: Haley Sater  
Script: Rodrigo Amadeu  
Blueberry Breeding Lab - University of Florida  
PI: Dr. Patricio Munoz  
www.blueberrybreeding.com  

Questions: rramadeu@ufl.edu  
rramadeu.github.io  
Jun 2nd 2019  

The R script creates two wheels. One with solid colors and a second with colors in gradient. 

The input is a xlsx spreadsheet with four columns (type, descrip, compounds, and colorHEX). 
Descrip and compounds are subcategories of type. Each type has an unique color.
The colorHEX column is which color should be in the solid wheel. For visual purpose only I colored the cells by the colorHEX, but the R script does not use this information.
The gradient wheel is create automatically based on the categories nesting. 

You just need to fill the xlsx with your data and run the code in R. 
It generates two svg figures that are easily edited in any image software (we used https://inkscape.org/).
We put the names by hand due to time issues to code an automatic procedure...
