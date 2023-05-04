##################################################
# Use this R script to learn some R basics. 
##################################################

## Cars is the name of a built-in dataframe (a table or dataset)

# If you just give the name of an object (like a dataframe), the contents will 
#   be printed (listed) to the Console. (Don't do this for big ones.)
cars

# Show the first few rows of a dataframe
head(cars)

# Use <dataframe>$<column> to refer to a particular column. Here it gets printed.
cars$dist

## YOU DO: Type a command to print the other column of the cars dataframe. Then 
##   run the command.


# See documentation for a dataframe or a function
?cars
?head

# Two more ways to examine a dataframe - open it in the Viewer & show the STRucture
View(mtcars)
str(mtcars)

# Type a command to view the documentation for mtcars


# YOU DO: Type commands to open the InsectSprays dataframe in the viewer. Then 
#   show its structure. Then open the documentation for it. 



# Commands for producing summary statistics and a plot for the entire dataframe
summary(cars)
plot(cars)


# This command produces summary statistics for a single column
summary(mtcars$mpg)


# Import data from a CSV file and create a dataframe named "rose". Notice: the
#   result of what's on the right gets assigned to the object on the left.
rose <- read.csv("RoseBowl.csv")

# YOU DO: look at the Environment pane (top-right quadrant). 
#    1. Notice how many rows (observations) and columns (variables) there are.
#    2. Double-click on rose to View the table, then click on the Begin.R tab to  
#       return to this file.


# YOU DO: Now, run this to create a new column named MOV (margin of victory). 
#   Notice now many columns there are now (Env pane) and then use the rose tab 
#   to look again at the rose table in the viewer.
rose$MOV <- rose$WinPts - rose$LosePts

# YOU DO: Type a command to produce summary statistics for this new MOV column.



# In this class, instead of "base R" functions like summary() and plot(), you'll  
#   use ggformula functions provided in the mosaic package. These have a 
#   standardized format and arguments. First you must load that package using 
#   the library function.
library(mosaic)

# A cheat sheet on ggformula has been provided on Blackboard under Course Resources.
#   Below are a couple examples.

# Use this to make a scatter plot. The first portion is <RESPONSE> ~ <EXPLANATORY>
gf_point(MOV ~ Year, data=rose)

# Use this to make a boxplot of one variable. It's listed in the explanatory spot.
gf_boxplot(~ MOV, data=rose)

