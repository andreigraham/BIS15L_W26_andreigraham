
# At the end of this exercise, you will be able to:*    
#1. Define an object in R.  
#2. Use objects to perform calculations.  
#3. Explain the difference between data classes in R.  
#4. Use R to identify the class of specific data.  
#5. Define NA in R.  
#6. Determine whether or not data have NA values.  

## Working Directories and Paths
#Before we get started with R, it is important to understand the concept of working directories and paths. A working directory is the folder on your computer where R will look for files to read in and where it will save files that you create. You can check your current working directory using the `getwd()` function.

#getwd() #checks your current working directory


#What if you find that you are not in the correct working directory? You can change your working directory in two ways. The first is to look at the Session menu at the top of RStudio. Click on Session -> Set Working Directory -> Choose Directory. Then navigate to the folder you want to use as your working directory. 

#The second way is to use the `setwd()` function. You will need to provide the full path to the folder you want to use. For example:

#setwd("/Users/yourname/Documents/yourfolder") #uncomment and change to your path


#What is a path? A path is the location of a file or folder on your computer. It tells R where to find files to read in or where to save files you create. Paths can be absolute or relative. An absolute path provides the full location of a file or folder, starting from the root directory. A relative path provides the location of a file or folder in relation to the current working directory.

## Objects
#In order to access the potential of R we need to assign values or other types of data to `objects`. There is a specific format that I want you to follow, so please pay close attention.  

#Assign a value to object 'x'. The '<-' symbol is read as 'gets'. In this case, x gets 42. Make sure that you are in the environment panel and you should see the value associated with 'x'. On a mac, you can push `option` and `-` to automatically generate the gets symbol.  
#x <- 42


#To print the object to the screen, just type x.  
#x


#Assign a value of 30 to a new object y.
#y <- 30


#The = symbol works, but is not a convention followed by most programmers.
#z=10 #do not use


#Once objects have been created, you can do things with them.  
#x+y
#x/y


#Make two new objects, treatment and control. The value of treatment is 36 and the value of control is 38.

#treatment <- 36
#control <- 38


#What is the sum of treatment and control?
#treatment+control


#(Here we make a new object `my_experiment` that is the sum of the treatment and control. Notice that I use `_` and not spaces. 
#my_experiment <- treatment+control
#my_experiment


#We can also use the function sum to do the same thing. Notice that if I give a new object the same name as an existing object, the old one is replaced.
#my_experiment <- sum(treatment, control)
#my_experiment


#To learn more about the sum function, use the help command `?`.
#?sum


## Nomenclature
#We need to be careful about nomenclature when we write code. R allows us to give almost any name we want to an object, but there are exceptions. For example, we don't want to give a name to an object that is the same as a function in R.  
#else <- 12


#We get an error here because `else` is a function in R. You also don't want to give names that might get confused with functions; i.e. you can assign a value to 'mean' but this could become confusing because mean is also a function.  
#mean <- 20


#What is the mean of 2+8+2? (Do the math in your head first). Does the following code match your prediction?
#2+8+2/3


#Order of operations applies, so we need to tell R exactly what we want.
#(2+8+2)/3


#Here we use the mean function. Notice that we use `c` which stands for concatenate. This combines the three numbers into a single object that the mean function can use. This type of data structure is called a vector.
#mean(c(2, 8, 2))


#Why does this not work?
#mean(2, 8, 2)

## Practice
#1. Create three new objects, `venom_GT`, `chiron`, and `veyron`. These are the fastest cars in the world. Assign each car to its top speed. The venom_GT can go 270, chiron is 261, and veyron is 268. 
#venom_GT <- 270
#chiron <- 261
#veyron <- 268


#2. Use arithmetic to calculate the mean top speed for the cars.
#mean_speed <- (venom_GT + chiron + veyron) / 3
#mean_speed


#3. Use the function `mean()` to calculate the mean top speed for the cars.
#mean(c(venom_GT, chiron, veyron))


## Types of Data
#There are four frequently used `classes` of data: 1. numeric, 2. integer, 3. character, 4. logical.
#my_numeric <- 42
#my_integer <- 2L #adding an L automatically denotes an integer
#my_character <- "universe"
#my_logical <- FALSE


#To find out what type of data you are working with, use the `class()` function. This is important because sometimes we will need to change the type of data to perform certain analyses.
#class(my_numeric)
#class(my_integer)


#You can use the `is()` and `as()` functions to clarify or specify a type of data.
#is.integer(my_numeric) #is my_numeric an integer?


#Let's convert my_numeric to an integer.
#my_numeric <- 
  #as.integer(my_numeric) #create a new object specified as an integer


#```{r}
#is.integer(my_integer) #is my_numeric an integer?
#```

## Missing Data
#R has a special way to designate missing data, the NA. NA values in R have specific properties which are very useful if your data contains any missing values. Later this quarter we will have a lab focused on dealing with NAs.  

#NA values are used to designate missing data. `is.na` or `anyNA` are useful functions when dealing with NAs in data. 
#```{r}
#my_missing <- NA
#```

#```{r}
##is.na(my_missing)
#```

#```{r}
#anyNA(my_missing)
#```

## Practice  
#1. Let's create a vector that includes some missing data. For now, run the following code chunk.  
#```{r}
#new_vector <- c(7, 6.2, 5, 9, NA, 4, 9.8, 7, 3, 2)
#```

#2. Calculate the mean of `new_vector`.
#```{r}
#mean(new_vector)
#```

#3. How do you interpret this result? What does this mean about NAs? 
#  NA's are not included in the calculation of the mean.

#4. Recalculate the mean using the following code chunk. Why is the useful?  
#```{r}
#mean(new_vector, na.rm = TRUE) #removes NA values
#```

#-->[Home](https://jmledford3115.github.io/datascibiol/)  

#---
  title: "Lab 3.1"
date: "`r Sys.Date()`"
output:
  html_document:
  theme: spacelab
toc: yes
toc_float: yes
pdf_document:
  toc: yes
#---
  
  ## Learning Goals
 # *At the end of this exercise, you will be able to:*    
#  1. Define data structure.    
#2. Build a new vector and call elements within it.  
#3. Combine a series of vectors into a data frame.  
#4. Name columns and rows in a data frame.  
#5. Select columns and rows and use summary functions.   
##6. Write your data frame to a csv file!  
  
  ## Load the tidyverse
 # A library is a collection of R functions and data sets. The [tidyverse](https://tidyverse.org/) is a collection of R packages designed for data science. For this course, we will be using many of the packages in the tidyverse. We load the tidyverse with the command below.  
#```{r}
##library("tidyverse")
#```

## Data Structures
#In addition to classes of data, R also organizes data in different ways. These are called data structures and include vectors, lists, matrices, data frames, and factors. Here, we will introduce vectors and data frames.  

## Vectors
#Vectors are a common way of organizing data in R.  We create vectors using the `c` command. The `c` stands for concatenate. We used this command in lab 2.  

#A numeric vector.
#```{r}
#my_vector <- c(10, 20, 30)
#```

#A character vector.
#```{r}
#days_of_the_week <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")
#```

#A convenient trick for creating a vector to play around with is to generate a sequence of numbers.
#```{r}
#my_vector_sequence <- c(1:100)
#```

## Identifying vector elements
#We can use `[]` to pull out elements in a vector. We just need to specify their position in the vector; i.e. day 3 is Wednesday.
#```{r}
#days_of_the_week[4]
#```

#```{r}
#my_vector_sequence[10]
#```

## Practice
#1. Use `[]` to determine which element in `my_vector_sequence` has a value of 15.
#```{r}
#my_vector_sequence[15]
#```

#2. We can use operators such as <, >, ==, <==, etc. Show all values in `my_vector_sequence` that are less than or equal to 10. 
#```{r}
#my_vector_sequence <= 10
#```

#3. If you use `[]` then you only get the values, not the logical evaluation of the entire vector. Experiment with this by adjusting the chunk below.    
#```{r}
#my_vector_sequence[my_vector_sequence <= 10]
#```

## Data Frames
#The data frame is the most common way to organize data within R. A data frame stores data of many different classes. Essentially, data frames are spreadsheets like you would find in Excel. We usually don't build data frames in RStudio from scratch, but this example will show you how they are structured.  

#Let's build separate vectors that include length (in), weight (oz), and sex of three [ruby-throated hummingbirds](https://www.audubon.org/field-guide/bird/ruby-throated-hummingbird).  
#```{r}
#Sex <- c("male", "female", "male")
#Length <- c(3.2, 3.7, 3.4)
#Weight <- c(2.9, 4.0, 3.1)
#```

#Since we work in the tidyverse, we use `tibble()` to create a data frame.  
#```{r}
#hbirds <- tibble(Sex, Length, Weight)
#```

#Notice that not only are the data neat and clean looking, there is also information provided about the class of data. `dbl` means that the value is a type of numeric [double precision floating point](http://uc-r.github.io/integer_double/).  
#```{r}
#hbirds
#```

#What are the column names of our data frame? Notice that R defaulted to using the names of our vectors, but we could name them something else when creating the data frame, or rename them later.  
#```{r}
#names(hbirds)
#```

#What are the dimensions of the `hbirds` data frame? The `dim()` and `str()` commands provide this information.   
#```{r}
#dim(hbirds)
#```

#```{r}
#str(hbirds)
#```

#Let's use lowercase names when we create the data frame. We just changed to lowercase here, but we could use any names we wish.  
#```{r}
#hbirds <- tibble(sex=Sex, length=Length, weight_g=Weight)
#hbirds
#```

## Accessing Data Frame Columns and Rows 
#The same methods of selecting elements in vectors and data matrices apply to data frames. We use `[]`. We have two positions where the first applies to the rows, and the second to the columns.  

#The first row.  
#```{r}
#hbirds[1,]
#```

#The third column.  
#```{r}
#hbirds[ ,3]
#```

## Calculations
#We can use the `$` to access a column (variable) in a data frame. Here we calculate the mean length of the hummingbirds.  
#```{r}
#mean(hbirds$length)
#```

## Writing Data to File
#We should save our hbirds data frame so we can use it again later! There are many ways to save data in R, here we write our data frame to a csv file. We use `row.names = FALSE` to avoid row numbers from printing out. 
#```{r}
#write.csv(hbirds, "hbirds_data.csv", row.names = FALSE)
#```

## That's it! Let's take a break and then move on to part 2!  
---
  title: "Lab 3.2"
date: "`r Sys.Date()`"
output:
  html_document:
  theme: spacelab
toc: yes
toc_float: yes
pdf_document:
  toc: yes
---
  
  ## Learning Goals
 # *At the end of this exercise, you will be able to:*    
  #1. Import .csv files as data frames using `read_csv()`.  
#2. Understand the importance of paths and working directories to import data.  
#2. Use summary functions to explore the dimensions, structure, and contents of a data frame.  

## Load tidyverse
#```{r message=FALSE, warning=FALSE}
#library("tidyverse")
#```

## Data Frames
#In part 1, you learned how to work with vectors and data frames. For the remainder of the course, we will work exclusively with data frames. Recall that data frames store multiple classes of data. Last time, you were shown how to build data frames by combining multiple vectors using  `tibble()`.  

## Importing Data
#Scientists often make their data available as supplementary material associated with a publication. This is excellent scientific practice as it insures repeatability by showing exactly how analyses were performed. As data scientists, we capitalize on this by importing data directly into R.  

#R allows us to import a wide variety of data types. The most common type of file is a .csv file which stands for comma separated values. Spreadsheets are often developed in Excel then saved as .csv files for use in R. There are packages that allow you to open excel files and many other formats but .csv is the most common.  

#To import a file, first make sure that you are in the correct working directory. If you are not in the correct directory, R will not "see" the file.
#```{r}
#getwd()
#```

## Load the data
#Here we import a .csv file. Since we are using the tidyverse, we import the file using `read_csv()`. `readr` is included in the tidyverse set of packages.  
#```{r}
#hot_springs <- read_csv("hsprings.csv")
#```

#Notice that when the data are imported, you are presented with a message that tells you how R interpreted the column classes. This is also where error messages will appear if there are problems.  

#Use the `str()` function to get an idea of the data structure of `hot_springs`.  
#```{r}
#str(hot_springs)
#```

## Change column classes
#When making plots or performing statistical modeling, it may be important to convert column classes. For example, if a column contains categorical data (e.g., scientist names, treatment groups, etc.) it may be best to convert that column to a factor class.  

#Recall that factors are categorical variables that have a fixed number of possible values called levels.  

#What is the class of the scientist column? Let's change it to factor and then show the levels of that factor.  
#```{r}
#class(hot_springs$scientist)
#```

#```{r}
#hot_springs$scientist <- as.factor(hot_springs$scientist)
#```

#Did our change work? We can also check the levels of each column.
#```{r}
#levels(hot_springs$scientist)
#```

## Practice
#1. Change the class of the springs column to factor.
#```{r}
#hot_springs$spring <- as.factor(hot_springs$spring)
#```

#2. What are the levels of the springs column?
#```{r}
#levels(hot_springs$spring)
#```

## Importing Data from a Published Study
#In your lab 3 folder there is another folder titled `data`. Inside the `data` folder there is a `.csv` titled `Gaeta_etal_CLC_data.csv`. Open this data and store them as an object called `fish`.  

#The data are from: Gaeta J., G. Sass, S. Carpenter. 2012. Biocomplexity at North Temperate Lakes LTER: Coordinated Field Studies: Large Mouth Bass Growth 2006. Environmental Data Initiative.  [link](https://portal.edirepository.org/nis/mapbrowse?scope=knb-lter-ntl&identifier=267)  
#```{r}
#fish <- read_csv("data/Gaeta_etal_CLC_data.csv")
#```

## Additional summary functions
#Once data have been loaded, you need to get an idea of its structure, contents, and dimensions. I routinely run one or more of these commands when data are first imported.  

#We can summarize our data frame with the`summary()` function.  
#```{r}
#summary(fish)
#```

#`glimpse()` is another useful summary function.
#```{r}
#glimpse(fish)
#```

#`nrow()` gives the numbers of rows.
#```{r}
#nrow(fish)
#```

#`ncol` gives the number of columns.
#```{r}
#ncol(fish)
#```

#`dim()` gives the dimensions.
#```{r}
#dim(fish)
#```

#`names` gives the column names.
#```{r}
#names(fish)
#```

#`head()` prints the first n rows of the data frame.
#```{r}
#head(fish)
#```

#`tail()` prinst the last n rows of the data frame.
#```{r}
#tail(fish)
#```

#`table()` is useful when you have a limited number of categorical variables. It produces fast counts of the number of observations in a variable.
#```{r}
#table(fish$lakeid)
#```

## Practice
#1. Load the data `mammal_lifehistories_v2.csv` and place it into a new object called `mammals`.
#```{r}
#mammals <- read_csv("data/mammal_lifehistories_v2.csv")
#```

#2. Provide the dimensions of the data frame.
#```{r}
#dim(mammals)
#```

#3. Check the column names in the data frame. 
#```{r}
#names(mammals)
#```

#4. Use `str()` to show the structure of the data frame and its individual columns; compare this to `glimpse()`. 
#```{r}
#str(mammals)
#glimpse(mammals)
#```

#5. Try the `table()` command to produce counts of mammal order.  
#```{r}
#table(mammals$order)
#```

#---
  title: "Lab 4"
date: "`r Sys.Date()`"
output:
  html_document:
  theme: spacelab
toc: yes
toc_float: yes
pdf_document:
  toc: yes
#---
  
  ## Learning Goals
#  *At the end of this exercise, you will be able to:*    
 # 1. Understand and apply the syntax of building plots using `ggplot2`.  
#2. Build a boxplot using `ggplot2`.  
#3. Build a scatterplot using `ggplot2`.  
#4. Build a barplot using `ggplot2`.

##Resources  
#- [R for Data Science 2e](https://r4ds.hadley.nz/data-visualize.html) 
#- [ggplot2 cheatsheet](https://posit.co/resources/cheatsheets/)  

## Libraries
#```{r}
#library(tidyverse)
#library(palmerpenguins)
#```

## Grammar of Graphics
#The ability to quickly produce and customize graphs is a strength of R. Data visualizations are produced by the package `ggplot2` and it is a core part of the tidyverse. The syntax for using ggplot is specific and common to all types of plots. This is what Hadley Wickham calls a [Grammar of Graphics](http://vita.had.co.nz/papers/layered-grammar.pdf). The "gg" in `ggplot` stands for grammar of graphics.

## Philosophy
#What makes a good chart? In my opinion a good chart is elegant in its simplicity. It provides a clean, clear visual of the data without being overwhelming to the reader. This can be hard to do and takes some careful thinking. Always keep in mind that the reader will almost never know the data as well as you do so you need to be mindful about how you present the facts.  

## Data Types
#We first need to define some of the data types we will use to build plots.  

#+ `discrete` quantitative data that only contains integers
#+ `continuous` quantitative data that can take any numerical value
#+ `categorical` qualitative data that can take on a limited number of values

## Basics
#The syntax used by ggplot takes some practice to get used to, especially for customizing plots, but the basic elements are the same. It is helpful to think of plots as being built up in layers.  

#In short, **plot= data + geom_ + aesthetics**.  

#We start by calling the ggplot function, identifying the data, and specifying the axes. We then add the `geom` type to describe how we want our data represented. Each `geom_` works with specific types of data and R is capable of building plots of single variables, multiple variables, and even maps. Lastly, we add aesthetics.

## Example
#To make things easy, let's start with some built in data.
#```{r}
#names(penguins)
#```

#```{r}
#glimpse(penguins) #notice that we have a mix of categorical and continuous data
#```

#Let's start by asking the question: How does body mass vary among penguin species?
  
 # To make a plot, we need to first specify the data and map the aesthetics. The aesthetics include how each variable in our data set will be used. In the example below, I am using the aes() function to identify the x and y variables in the plot.
#```{r}
#ggplot(data=penguins, #specify the data
 #      mapping=aes(x=species, y=body_mass_g)) #map the aesthetics
#```

#Notice that we have a nice background, labeled axes, and even a value range of our variables on the y-axis- but no plot. This is because we need to tell ggplot how we want our data represented. This is called the geometry or `geom()`. There are many types of `geom`, see the ggplot [cheatsheet](https://posit.co/resources/cheatsheets/).

#Here we want a boxplot, specified by `geom_boxplot()`. We will explore boxplots in more detail later, but for now we just need an example.
#```{r}
#ggplot(data=penguins, #specify the data
 #      mapping=aes(x=species, y=body_mass_g))+ #map the aesthetics
  #geom_boxplot() #add the plot type
#```

## Practice
#1. How does flipper length vary among penguin species?
 # ```{r}
#names(penguins)
#```

#```{r}
#ggplot(data=penguins, 
 #      mapping=aes(x=species, y=flipper_length_mm))+
  #geom_boxplot()
#```

## Scatterplots and barplots
#Now that we have a general idea of the syntax, let's explore two common plots: 1) scatter plots and 2) bar plots.

### 1. Scatter Plots
#Scatter plots are good at revealing relationships that are not readily visible in the raw data.   

#Let's ask the question: Is there a relationship between body mass and flipper length?
 # ```{r}
#names(penguins)
#```

#```{r}
#ggplot(data=penguins, #specify the data
 #      mapping=aes(x=body_mass_g, y=flipper_length_mm))+ #map the aesthetics
  #geom_point() #add the plot type
#```

#Notice the warning! R is telling us that there are some missing values in our data. This is common in real world data sets. R automatically omits these missing values when plotting. We can also deal with the NA's explicitly using the `na.rm=T` function.  
#```{r}
#ggplot(data=penguins, #specify the data
 #      mapping=aes(x=body_mass_g, y=flipper_length_mm))+ #map the aesthetics
  #geom_point(na.rm=T) #add the plot type, disregard NA's
#```

#To add a regression (best of fit) line, we add another layer.
#```{r}
#ggplot(data=penguins, #specify the data
#       mapping=aes(x=body_mass_g, y=flipper_length_mm))+ #map the aesthetics
 # geom_point()+ #add the plot type
  #geom_smooth(method=lm, se=T) #add a regression line
#```

#This graph is fine, but it doesn't distinguish between species. It might be helpful for the reader to see how each species is represented. We can do this by mapping the color aesthetic to species.
#```{r}
#ggplot(data=penguins, #specify the data
 #      mapping=aes(x=body_mass_g, y=flipper_length_mm, color=species))+ #map the aesthetics
 # geom_point()+ #add the plot type, map color to species
  #geom_smooth(method=lm, se=T) #add a regression line
#```

#The plot above looks good, but I think it's a bit messy having the regression line presented for each species. When we add the color aesthetic, it is passed down to all layers. To fix this, we can move the color aesthetic to just the geom_point layer.
#```{r}
#ggplot(data=penguins, #specify the data
 #      mapping=aes(x=body_mass_g, y=flipper_length_mm))+ #map the aesthetics
  #geom_point(mapping = aes(color = species))+ #add the plot type, map color to species
  #geom_smooth(method=lm, se=T) #add a regression line
#```

#Another helpful aesthetic is `shape` which can be used to distinguish points by shape instead of or in addition to color. A common approach is to map both color and shape to the same variable.
#```{r}
#ggplot(data=penguins, #specify the data
 #      mapping=aes(x=body_mass_g, y=flipper_length_mm))+ #map the aesthetics
  #geom_point(mapping = aes(color = species, shape=species))+ #add the plot type, map color to species
  #geom_smooth(method=lm, se=T) #add a regression line
#```

#But don't we want a title? We do this using the `labs()` function.
#```{r}
#ggplot(data=penguins, #specify the data
 #      mapping=aes(x=body_mass_g, y=flipper_length_mm))+ #map the aesthetics
  #geom_point(mapping = aes(color = species, shape=species))+ #add the plot type, map color to species
  #geom_smooth(method=lm, se=T)+ #add a regression line
  #labs(title = "Body mass (g) vs. Flipper length (mm)")
#```

### Practice
#1. Is there a relationship between bill length and bill depth?
#```{r}
#names(penguins)
#```

#```{r}
#ggplot(data=penguins,
 #      mapping=aes(x=bill_length_mm, y=bill_depth_mm))+
  #geom_point(mapping=aes(color=species))+
  #geom_smooth(method=lm, se=T)+
  #labs(title="Bill length (mm) vs. Bill depth (mm)")
#```

### Bar Plot: `geom_bar()`
#The simplest type of bar plot counts the number of observations in a categorical variable. In this case, we want to know how many observations are present in the variable `species`. Notice that we do not specify a y-axis because it is count by default.  
#```{r}
#names(penguins)
#```

#```{r}
#ggplot(data=penguins, #specify the data
 #      mapping=aes(x=species))+ #map the aesthetics
  #geom_bar() #good for counts
#```

#What if we want to use the color aesthetic like we did for `geom_point` above? Let's try...
#```{r}
#ggplot(data=penguins, #specify the data
 #      mapping=aes(x=species))+ #map the aesthetics
  #geom_bar(mapping=aes(color=species)) #good for counts
#```

#This doesn't work because the color aesthetic is being applied to the bars themselves. Instead, we need to use `fill` to color the inside of the bars.
#```{r}
#ggplot(data=penguins, #specify the data
 #      mapping=aes(x=species))+ #map the aesthetics
  #geom_bar(mapping=aes(fill=species)) #good for counts
#```

## Practice
#1. Make a bar plot showing the number of penguins on each island.
#```{r}
#names(penguins)
#```

#```{r}
#ggplot(data=penguins, 
 #      mapping=aes(x=island))+
  #geom_bar(mapping=aes(fill=island))
#```

#2. Make a bar plot showing the number of penguins of each species on each island. (Hint: use `fill` to distinguish species)
#```{r}
#ggplot(data=penguins,
#       mapping=aes(x=island))+
#  geom_bar(mapping=aes(fill=species), position="dodge")
#```

## Wrap-up  
#Please review the learning goals and be sure to use the code here as a reference when completing the homework.    

#-->[Home](https://jmledford3115.github.io/datascibiol/)

#---
title: "Lab 5.1"
date: "`r Sys.Date()`"
output:
  html_document:
    theme: spacelab
    toc: yes
    toc_float: yes
  pdf_document:
    toc: yes
#---

## Learning Goals
#*At the end of this exercise, you will be able to:*    
#1. Use the `select()` function of `dplyr` to build data frames restricted to variables of interest.  
#2. Use the `rename()` function to provide new, consistent names to variables in data frames.  

## Load the tidyverse
#```{r}
#library("tidyverse")
#library("palmerpenguins") #load the palmerpenguins package
#```

## Palmerpenguins
#These data are from: Gorman KB, Williams TD, Fraser WR (2014). Ecological sexual dimorphism and environmental variability within a community of Antarctic penguins (genus _Pygoscelis_). PLoS ONE 9(3):e90081. https://doi.org/10.1371/journal.pone.0090081

## Data Structure
#Once data have been uploaded, let's get an idea of its structure, contents, and dimensions.  
#```{r}
#glimpse(penguins)
#```

#```{r}
#summary(penguins)
#```

## Tidyverse
#Recall that the [tidyverse](www.tidyverse.org) is a collection of packages that make workflow in R easier. The packages operate more intuitively than base R commands and share a common organizational philosophy. In lab 4, we learned how to use `ggplot2` to make visualization of data easier. In this lab, we will learn how to use the package `dplyr` to wrangle data. 

## dplyr
#The first package that we will use to wrangle data is `dplyr`. `dplyr` is used to transform data frames by extracting, rearranging, and summarizing data such that they are focused on a question of interest. This is very helpful,  especially when wrangling large data, and makes dplyr one of most frequently used packages in the tidyverse. The two functions we will use most are `select()` and `filter()`.  

#These functions are often called verbs, and the format used for each is the same. The output is always a new, more restricted dataframe.  

## `select()`
#The verb `select()` allows you to pull out columns of interest from a dataframe; it does not affect the rows. To do this, just add the names of the columns of interest to the `select()` command. The order in which you add them, will determine the order in which they appear in the output.  

#For smaller dataframes, `select()` may not make much sense. However, for larger dataframes with many variables, `select()` is very useful. Let's look at the fish data again.
#```{r}
#names(penguins)
#```

#We are only interested in species and body mass. We can use `select()` to extract these columns.
#```{r}
#select(penguins, species, body_mass_g)
#```

#```{r}
#penguins <- penguins
#```

#To add a range of columns use `start_col:end_col`.
#```{r}
#select(penguins, species:flipper_length_mm)
#```

#The ! operator is useful in select. It allows us to select everything except the specified variables.
#```{r}
#select(penguins, !body_mass_g)
#```

#Alternatively, you can use the `c()` function to exclude multiple columns.
#```{r}
#select(penguins, !c(species, island, year, sex))
#```

#For very large data frames with lots of variables, `select()` utilizes lots of different operators to make things easier. Let's say we are only interested in the variables that deal with length.
#```{r}
#select(penguins, contains("mm"))
#```

#`starts_with()`
#```{r}
#select(penguins, starts_with("bill"))
#```

#`ends_with()`
#```{r}
#select(penguins, ends_with("mm"))
#```

#You can also select columns based on the class of data.  
#```{r}
#select(penguins, where(is.numeric))
#```

#There are a few verbs that go with `select()` because they deal with columns. One of these is `rename()`. `rename()` allows you to rename columns in a dataframe. The format is `new_name = old_name`.
#```{r}
#rename(penguins, body_mass=body_mass_g)
#```

#Alternatively, you can rename from within select.
#```{r}
#select(penguins, species, body_mass=body_mass_g)
#```

#The second is `relocate()`. `relocate()` allows you to move columns to different locations within a dataframe. Let's say we want to move `length` to be the first column in the dataframe.
#```{r}
#relocate(penguins, year)
#```

## Practice  
#For these exercises, we will use the `msleep` dataset from the `ggplot2` package. This dataset contains information about the sleep habits of various mammals. [Reference](https://ggplot2.tidyverse.org/reference/msleep.html): V. M. Savage and G. B. West. A quantitative, theoretical framework for understanding mammalian sleep. Proceedings of the National Academy of Sciences, 104 (3):1051-1056, 2007. 

#1. What are the names in the `msleep` dataframe?
#```{r}
#names(msleep)
#```

#2. Use `glimpse()` to get an idea of the structure of the `msleep` dataframe.
#```{r}
#glimpse(msleep)
#```
    
#3. Make a new dataframe that only includes the variables `order`, `genus`, and `bodywt.`
#```{r}
#select(msleep, "order", "genus", "bodywt")
#```

#4. What if we are only interested in the numeric variables? Make a new dataframe that is restricted to numerics.
#```{r}
#select(msleep, where(is.numeric))
#```

#5. Make a dataframe that includes all variables except `name.`
#```{r}
#select(msleep, !name)
#```

#---
title: "Lab 5.2"
date: "`r Sys.Date()`"
output:
  html_document:
    theme: spacelab
    toc: yes
    toc_float: yes
  pdf_document:
    toc: yes
#---

## Learning Goals  
#*At the end of this exercise, you will be able to:*    
#1. Use the `filter()` function of `dplyr` to extract observations of interest.  
#2. Use `filter()` on multiple conditions to extract observations of interest.  
#3. Use `arrange()` to sort data frames by specific variables.  
#4. Use pipes `%>%` to connect multiple functions.

## Load the tidyverse
#```{r}
#library("tidyverse")
#library("palmerpenguins") #load the palmerpenguins package
#```

## Palmerpenguins
#These data are from: Gorman KB, Williams TD, Fraser WR (2014). Ecological sexual dimorphism and environmental variability within a community of Antarctic penguins (genus _Pygoscelis_). PLoS ONE 9(3):e90081. https://doi.org/10.1371/journal.pone.0090081

## Review  
#In the previous lab, we used `select()` to extract columns of interest from a data frame. This helps us focus our attention on the variables relevant to our question. However, it doesn't allow us to extract information in rows. The `filter()` function allows us to extract data in rows that meet specific criteria.  

## `filter()`
#Unlike `select()`, `filter()` allows us to extract data that meet specific criteria within a row. Let's say that we are interested only in the Adelie penguins from the `penguins` data frame. We can use `filter()` to extract these observations.  
#```{r}
#glimpse(penguins)
#```

#```{r}
#filter(penguins, species=="Adelie")
#```

#```{r}
#names(penguins)
#```

#Similarly, if we are only interested in penguins with a body mass greater than or equal to 5500g we can use `filter()` to extract these observations.  
#```{r}
#filter(penguins, body_mass_g>=5500)
#```

#+ `filter()` allows all of the expected operators; i.e. >, >=, <, <=, != (not equal), and == (equal).  

#Using the `!` operator allows for the exclusion of specific observations.
#```{r}
#filter(penguins, species!="Chinstrap")
#```

## Using `filter()` with multiple observations  
#The `%in%` [operator](https://www.tutorialspoint.com/r/r_operators.htm) determines whether or not a value is part of a vector.    
#```{r}
#filter(penguins, body_mass_g %in% c(5250, 5500))
#```

#Alternatively, you can use `between` if you are looking for a range of specific values.  
#```{r}
#filter(penguins, between(body_mass_g, 5250, 5500))
#```

#How would you use `%in%` to get the same result?
#```{r}
#filter(penguins, body_mass_g %in% c(5250, 5300, 5350, 5400, 5450, 5500))
#```

#You can also extract observations "near" a certain value but you need to specify a tolerance.  
#```{r}
#filter(penguins, near(body_mass_g, 5400, tol=100))
#```

## Practice
#The data are from: Gaeta J., G. Sass, S. Carpenter. 2012. Biocomplexity at North Temperate Lakes LTER: Coordinated Field Studies: Large Mouth Bass Growth 2006. Environmental Data Initiative.  [link](https://portal.edirepository.org/nis/mapbrowse?scope=knb-lter-ntl&identifier=267)  

#1. Load the data
#```{r}
#fish <- read_csv("data/Gaeta_etal_CLC_data.csv")
#```#

#```{r}
#glimpse(fish)
#```

#2. Filter the `fish` data to include the samples from lake "BO".
#```{r}
#filter(fish, lakeid=="BO")
#```

#3. Filter the data to include all lakes except "AR".
#```{r}
#filter(fish, lakeid!="AR")
#```

#4. Filter the fish data to include all fish with a scalelength within 0.25 of 8.
#```{r}
#filter(fish, near(scalelength, 8, tol=0.25))
#```

#5. Filter the fish data to include fish with a scalelength between 2 and 4.
#```{r}
#filter(fish, between(scalelength, 2, 4))
#```

## Using `filter()` on multiple conditions
#You can also use `filter()` to extract data based on multiple conditions. Below we extract the Chinstrap penguins that have a body mass greater than 4500g.
#```{r}
#filter(penguins, species=="Chinstrap" & body_mass_g> 4500)
#```

#Notice that the `|` operator generates a different result. Why?
#```{r}
#filter(penguins, species=="Chinstrap" | body_mass_g> 4500)
#```

#Rules:  
#+ `filter(condition1, condition2)` will return rows where both conditions are met. By default the , means &.    
#+ `filter(condition1, !condition2)` will return all rows where condition one is true but condition 2 is not.  
#+ `filter(condition1 | condition2)` will return rows where condition 1 or condition 2 is met.  
#
#In this case, we filter out the penguins with a body mass over 5000g and a bill length over 50mm or a bill depth over 18mm.
#```{r}
#filter(penguins, body_mass_g>5000 & (bill_length_mm>50 | bill_depth_mm>18))
#```

## Pipes `%>%` 
#In order to start combining `select()`, `filter()`, and other functions efficiently, we need to learn pipes. Pipes feed the output from one function into the input of another function.  

#Let's say we are only interested in the body mass of Gentoo penguins. We can use pipes to first select the species and body mass columns then filter that output only for Gentoo penguins. Notice that we only need to call the data one time.
#```{r}
#penguins %>% 
#  select(species, body_mass_g) %>% 
#  filter(species=="Gentoo")
#```

#We can sort the output of `filter()` using the `arrange()` function. Here we filter for Gentoo penguins and then sort them by body mass in ascending order.
#```{r}
#penguins %>% 
 # select(species, body_mass_g) %>% 
#  filter(species=="Gentoo") %>% 
#  arrange(body_mass_g)
#```

#To sort in descending order, wrap the variable name in `desc()`.
#```{r}
#penguins %>% 
#  select(species, body_mass_g) %>% 
 # filter(species=="Gentoo") %>% 
  #arrange(desc(body_mass_g))
#```

#`slice()`
#```{r}
#penguins %>% 
#  select(species, body_mass_g) %>% 
#  filter(species=="Gentoo") %>% 
#  slice_min(body_mass_g, n=1)#don't forget to specify the variable
#```

#```{r}
#?slice
#```

## Practice
#Let's use the fish data again to keep things simple.

#1. We are interested in the radii length and scalelength of fish with the id `300`. Extract this information from the `fish` data. Please sort the data by radii length.

#```{r}
#names(fish)
#```

#```{r}
#fish %>% 
#  select(fish_id, radii_length_mm, scalelength) %>% 
 # filter(fish_id==300) %>% 
  #arrange(scalelength)
#```

#2. We are interested in the fish from the lakes "AL" and "AR" with a radii length between 2 and 4. Extract this information from the `fish` data. Please sort the data in descending order by radii length.
#```{r}
#fish %>% 
#  select(lakeid, radii_length_mm) %>% 
 # filter(lakeid=="AL" | lakeid=="AR") %>% 
  #filter(between(radii_length_mm, 2, 4)) %>% 
  #arrange(desc(radii_length_mm))
#```

## Wrap-up  

#Please review the learning goals and be sure to use the code here as a reference when completing the homework.  
#-->[Home](https://jmledford3115.github.io/datascibiol/)

## That's it! Let's take a break and then move on to part 2! 

#-->[Home](https://jmledford3115.github.io/datascibiol/)  

---
title: "Lab 6.1"
date: "`r Sys.Date()`"
output:
  html_document:
    theme: spacelab
    toc: yes
    toc_float: yes
  pdf_document:
    toc: yes
---

## Learning Goals
#*At the end of this exercise, you will be able to:*    
#1. Use `distinct()` to find unique observations in rows.    
#2. Use `mutate()` to create new columns from existing columns.    
#3. Use `mutate()` with `across` and `where` to transform multiple columns that meet specific criteria.
#4. Use `if_else()` to conditionally change values in a column.
#5. Clean data using `janitor` and `mutate()`.  

## Load the tidyverse
#```{r}
#library("tidyverse")
#library("janitor")
#library("palmerpenguins") #load the palmerpenguins package
#options(scipen=999) #turn off scientific notation
#```

## Palmerpenguins
#These data are from: Gorman KB, Williams TD, Fraser WR (2014). Ecological sexual dimorphism and environmental variability within a community of Antarctic penguins (genus _Pygoscelis_). PLoS ONE 9(3):e90081. https://doi.org/10.1371/journal.pone.0090081

## Review & Practice
#Recall that the the verbs `select()` and `filter()` are used to extract columns and rows from a dataframe. We use the pipe operator `%>%` to connect multiple functions together.  

#1. Select species, island, and body mass from the penguins data. Arrange results by body mass.
#```{r}
#penguins %>% 
 # select(species, island, body_mass_g) %>% 
  #arrange(body_mass_g)
#```

#2. Filter the penguins data to only include observations from Biscoe and Dream islands.
#```{r}
#penguins %>% 
#  filter(island=="Biscoe" | island=="Dream")
#```

#```{r}
#penguins %>% 
 # filter(island==c("Biscoe", "Dream"))
#```

#```{r}
#penguins %>% 
 # filter(island %in% c("Biscoe", "Dream"))
#```

#3. Make a plot that shows the relationship between body mass and flipper length. How does this compare among different species?
#```{r}
#penguins %>% 
 # ggplot(aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
  #geom_point() +
  #geom_smooth(method="lm", se=FALSE)
#```

## `distinct()`
#`distinct()` looks for all unique observations in rows. This is a little tricky because it can look like it is working column-wise, but it is actually working row-wise.  

#One helpful approach to new data is to find any duplicated rows. If we first look at the dimensions of the penguins data, we see it has 344 rows and 8 columns.
#```{r}
#dim(penguins)
#```

#Using `distinct()` across all rows, we see there are no duplicates. This means every row contains unique observations across all variables.
#```{r}
#penguins %>% 
 # distinct()
#```

#But if we only look at species, we can see that there are only 3 unique species in the data.
#```{r}
#penguins %>% 
#  distinct(species)
#```

#What if we want to know which islands each species occurs on?
#```{r}
#penguins %>% 
#  distinct(species, island, .keep_all=TRUE)
#```

## `mutate()`
#`mutate()` is another verb that acts on columns. It allows us to create new columns from existing columns in a data frame. When we use `mutate()`, the columns are added to the end of the dataframe by default. Let's create a new column that converts body mass from grams to kilograms.
#```{r}
#penguins %>%
 # mutate(body_mass_kg = body_mass_g/1000) %>% 
#  select(species, body_mass_g, body_mass_kg) %>% 
#  arrange(body_mass_kg)
#```

## `mutate()` and `across()`
#We use `across()` within `mutate()` to apply a function to multiple columns. This is especially helpful when cleaning data. For example, let's say we want to convert all columns that end with `mm` to centimeters. We can use `across()` to do this.
#`{r}
#penguins %>%
  #mutate(across(ends_with("mm"), ~./10)) %>%
  #select(species, 
   #      bill_length_cm=bill_length_mm, 
  #       bill_depth_cm=bill_depth_mm, 
 #        flipper_length_cm=flipper_length_mm)
#`

#What does the `~./10` mean? The `~` indicates that what follows is a formula (lambda function). The `.` represents the current column being processed. So, `./10` means "take the current column and divide it by 10". This operation is applied to all columns that end with `mm`.

## Cleaning Data
#Cleaning raw data is an essential, but tedious step in data analysis. It's impossible to predict every scenario that you will come across, but there are some common issues that we can learn to address.

#We already learned how to use `rename()` to change column names. We also learned how to rename columns from within `select()`. But, this can be very inefficient if we have a large dataset.

#Let's have a look at some new data focused on mammal lifehistories. The data are from: S. K. Morgan Ernest. 2003. Life history characteristics of placental non-volant mammals. Ecology 84:3402.   [link](http://esapubs.org/archive/ecol/E084/093/)  
#`{r}
#mammals <- read_csv("data/mammal_lifehistories_v2.csv")
#`

#What is the structure of the data? Are there any NA's or other issues?
 # ```{r}
#glimpse(mammals)
#`

#One thing to notice is the column names are inconsistent. This is going to cause problems for us down the line. We could rename each column, one at a time, using `rename()`, but that would be tedious. Instead, we can use the `clean_names()` function from the `janitor` package to fix all of the column names at once.
#`{r}
#mammals <- mammals %>% 
 # clean_names()
#`

#`{r}
#glimpse(mammals)

#Notice that `clean_names()` has converted all column names to lowercase and replaced spaces with underscores. But, no adjustments were made to the data itself. What if we want to change observations from upper case to lower case?
 # ```{r}
#mammals %>% 
 # mutate(across(c("order", "family"), tolower)) #specific columns
#`

#This will change all columns to lower case. But, notice what happens to numeric columns.
#`{r}
#mammals %>% 
 # mutate(across(everything(), tolower)) #all columns
#`

#For this reason, it might be better to use `where` so we can specify only character columns.
#```{r}
#mammals <- mammals %>%
 # mutate(across(where(is.character), tolower)) #all character columns
#```

## `if_else()`
#We briefly introduce `if_else()` here because it allows us to use `mutate()` but not have the entire column affected in the same way. With `ifelse()`, you first specify a logical statement, afterwards what needs to happen if the statement returns `TRUE`, and lastly what needs to happen if it's  `FALSE`.  

#Have a look at the data from mammals below. Notice that the values for newborn include `-999.00`. This is sometimes used as a placeholder for NA (but, is a really bad idea). We can use `if_else()` to replace `-999.00` with `NA`.  
#```{r}
#mammals %>% 
 # select(genus, species, newborn) %>% 
  #arrange(newborn)
#```

#`{r}
#mammals %>% 
 # select(genus, species, newborn) %>%
  #mutate(newborn_new = ifelse(newborn == -999.00, NA, newborn))%>% 
  #arrange(newborn)
#```

## Practice
#1. Following the example above, convert all -999 values in the mammals dataframe to NA.
#```{r}
#mammals <- mammals %>%
 # mutate(across(c(mass, wean_mass, gestation, max_life, newborn, weaning, litter_size, afr, litters_year),
  #              ~ifelse(. == -999, NA, .)))
#```

#```{r}
#summary(mammals)
#```

#2. In the mammals data, make a new column `mass_kg` that that converts mass from grams to kilograms. Select the columns genus, species, mass, and mass_kg, and arrange the data by mass_kg in descending order. What is the common name for the species with the highest mass?  
#_blue whale_
#```{r}
#mammals %>% 
 # mutate(mass_kg = mass/1000) %>% 
  #select(genus, species, mass, mass_kg) %>% 
  #arrange(desc(mass_kg))
#```

#3. What is the relationship between gestation and newborn mass?
#```{r}
#mammals %>% 
#  mutate(mass_kg = mass/1000) %>% 
 # mutate(wean_gestation_ratio = log10(newborn/gestation)) %>% 
  #select(genus, species, wean_gestation_ratio) %>% 
  #arrange(desc(wean_gestation_ratio))
#```

#```{r}
#mammals %>% 
#  ggplot(aes(x=gestation, y=log10(newborn))) +
 # geom_point()+
  #geom_smooth(method="lm", se=FALSE)
#```

#4. Which mammal has the longest life span in years?  
#_fin whale_
#```{r}
#mammals %>% 
#  select(family, genus, species, max_life) %>% 
 # mutate(max_life_new = max_life/12) %>%
  #arrange(desc(max_life_new))
``
