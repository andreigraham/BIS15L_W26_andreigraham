---
  title: "meow"
author: "Andrei Graham"
date: "`r Sys.Date()`"
output:
  html_document: 
  theme: spacelab
---

Objects
#x<- a #
#to print an object to the screen just type x (or the name of the object in this case)

#you can add, divide, subtract, etc

#to combine many objects into one, use "c" which makes it into a vector
#mean(c(x,y))

#Types of data
#use class() to figure out which type of data you are working with
#class(my_integer)
#is.integer(my_numeric) = is my numeric an integer?

#to convert my_numeric to an integer
#my_numeric<- as.integer(my_numeric)

Data structure


Identifying vector elements


data frames


Calculations


Importing data
#read_csv()
#hot_springs<- read_csv("hsprings.csv")
#str(hot_springs) gives you the idea of the data structure

#fish<- read_csv("data/Gaeta_etal_CLC_data.csv")

change column class
#class(hot_springs$scientist) gives you the class of the scientist column in the hot springs data set
#hot_springs$scientist<- as.factor(hot_springs$scientist)
#levels(hot_springs$scientist) also gives you the levels of each column

additional summary functions
#summary(fish)
#glimpse(fish)
#nrow(fish)
#ncol(fish)
#dim(fish)
#names(fish)
#head(fish)
#tail(fish)
#table(fish$lakeid) produces fast counts of the number of observations in a variable

plots
#ggplot(data=penguins, mapping=aes(x=species, y=body_mass_g))+ geom_boxplot()

#scatterplot
#ggplot(data=penguins, #specify the data
mapping=aes(x=body_mass_g, y=flipper_length_mm))+ #map the aesthetics
  geom_point(na.rm=T)

ggplot(data=penguins, #specify the data
       mapping=aes(x=body_mass
