---
title: "Homework 8"
author: "Andrei Graham"
date: "2026-02-05"
output:
  html_document: 
    theme: spacelab
    keep_md: yes
---

## Instructions
Answer the following questions and/or complete the exercises in RMarkdown. Please embed all of your code and push the final work to your repository. Your report should be organized, clean, and run free from errors. Remember, you must remove the `#` for any included code chunks to run.  

## Load the libraries

``` r
library("tidyverse")
library("janitor")
library("naniar")
options(scipen = 999)
```

## About the Data
For this assignment we are going to work with a data set from the [United Nations Food and Agriculture Organization](https://www.fao.org/fishery/en/collection/capture) on world fisheries. These data were downloaded and cleaned using the `fisheries_clean.Rmd` script.  

Load the data `fisheries_clean.csv` as a new object titled `fisheries_clean`.

``` r
fisheries_clean <- read_csv("data/fisheries_clean.csv")
```

1. Explore the data. What are the names of the variables, what are the dimensions, are there any NA's, what are the classes of the variables, etc.? You may use the functions that you prefer.

``` r
names(fisheries_clean)
```

```
## [1] "period"          "continent"       "geo_region"      "country"        
## [5] "scientific_name" "common_name"     "taxonomic_code"  "catch"          
## [9] "status"
```

``` r
class(fisheries_clean)
```

```
## [1] "spec_tbl_df" "tbl_df"      "tbl"         "data.frame"
```

``` r
glimpse(fisheries_clean)
```

```
## Rows: 1,055,015
## Columns: 9
## $ period          <dbl> 1950, 1951, 1952, 1953, 1954, 1955, 1956, 1957, 1958, …
## $ continent       <chr> "Asia", "Asia", "Asia", "Asia", "Asia", "Asia", "Asia"…
## $ geo_region      <chr> "Southern Asia", "Southern Asia", "Southern Asia", "So…
## $ country         <chr> "Afghanistan", "Afghanistan", "Afghanistan", "Afghanis…
## $ scientific_name <chr> "Osteichthyes", "Osteichthyes", "Osteichthyes", "Ostei…
## $ common_name     <chr> "Freshwater fishes NEI", "Freshwater fishes NEI", "Fre…
## $ taxonomic_code  <chr> "1990XXXXXXXX106", "1990XXXXXXXX106", "1990XXXXXXXX106…
## $ catch           <dbl> 100, 100, 100, 100, 100, 200, 200, 200, 200, 200, 200,…
## $ status          <chr> "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A",…
```

2. Convert the following variables to factors: `period`, `continent`, `geo_region`, `country`, `scientific_name`, `common_name`, `taxonomic_code`, and `status`.

``` r
fisheries_clean%>%
  mutate(period=as.factor(period),
        continent=as.factor(continent),
        geo_region=as.factor(geo_region),
        country=as.factor(country),
        scientific_name=as.factor(scientific_name),
        common_name=as.factor(common_name),
        taxonomic_code=as.factor(taxonomic_code),
        status=as.factor(status))
```

```
## # A tibble: 1,055,015 × 9
##    period continent geo_region    country     scientific_name common_name       
##    <fct>  <fct>     <fct>         <fct>       <fct>           <fct>             
##  1 1950   Asia      Southern Asia Afghanistan Osteichthyes    Freshwater fishes…
##  2 1951   Asia      Southern Asia Afghanistan Osteichthyes    Freshwater fishes…
##  3 1952   Asia      Southern Asia Afghanistan Osteichthyes    Freshwater fishes…
##  4 1953   Asia      Southern Asia Afghanistan Osteichthyes    Freshwater fishes…
##  5 1954   Asia      Southern Asia Afghanistan Osteichthyes    Freshwater fishes…
##  6 1955   Asia      Southern Asia Afghanistan Osteichthyes    Freshwater fishes…
##  7 1956   Asia      Southern Asia Afghanistan Osteichthyes    Freshwater fishes…
##  8 1957   Asia      Southern Asia Afghanistan Osteichthyes    Freshwater fishes…
##  9 1958   Asia      Southern Asia Afghanistan Osteichthyes    Freshwater fishes…
## 10 1959   Asia      Southern Asia Afghanistan Osteichthyes    Freshwater fishes…
## # ℹ 1,055,005 more rows
## # ℹ 3 more variables: taxonomic_code <fct>, catch <dbl>, status <fct>
```

3. Are there any missing values in the data? If so, which variables contain missing values and how many are missing for each variable?

``` r
#skip
```

4. How many countries are represented in the data?

``` r
fisheries_clean%>%
  group_by(country)%>%
  summarise()
```

```
## # A tibble: 249 × 1
##    country            
##    <chr>              
##  1 Afghanistan        
##  2 Albania            
##  3 Algeria            
##  4 American Samoa     
##  5 Andorra            
##  6 Angola             
##  7 Anguilla           
##  8 Antigua and Barbuda
##  9 Argentina          
## 10 Armenia            
## # ℹ 239 more rows
```

``` r
#249 countries
```

5. The variables `common_name` and `taxonomic_code` both refer to species. How many unique species are represented in the data based on each of these variables? Are the numbers the same or different?

``` r
#the numbers are different when sorting by common name as opposed to taxonomic code
fisheries_clean%>%
  group_by(common_name)%>%
  summarise()%>%
  n_distinct()
```

```
## [1] 3390
```

``` r
fisheries_clean%>%
  group_by(taxonomic_code)%>%
  summarise()%>%
  n_distinct()
```

```
## [1] 3722
```
6. In 2023, what were the top five countries that had the highest overall catch?

``` r
#China, Indonesia, India, Russia, and the US were the top five countries in 2023
fisheries_clean%>%
  group_by(country)%>%
  filter(period=="2023")%>%
  summarise(total_catch=sum(catch)) %>% 
  arrange(desc(total_catch))
```

```
## # A tibble: 238 × 2
##    country                  total_catch
##    <chr>                          <dbl>
##  1 China                      13424705.
##  2 Indonesia                   7820833.
##  3 India                       6177985.
##  4 Russian Federation          5398032 
##  5 United States of America    4623694 
##  6 Peru                        3519381.
##  7 Viet Nam                    3417238.
##  8 Japan                       2904942.
##  9 Chile                       2596488.
## 10 Norway                      2546846.
## # ℹ 228 more rows
```

7. In 2023, what were the top 10 most caught species? To keep things simple, assume `common_name` is sufficient to identify species. What does `NEI` stand for in some of the common names? How might this be concerning from a fisheries management perspective?

``` r
fisheries_clean%>%
  group_by(common_name)%>%
  filter(period=="2023")%>%
  summarise(total_catch=sum(catch)) %>% 
  arrange(desc(total_catch))
```

```
## # A tibble: 2,870 × 2
##    common_name                    total_catch
##    <chr>                                <dbl>
##  1 Marine fishes NEI                 8553907.
##  2 Freshwater fishes NEI             5880104.
##  3 Alaska pollock(=Walleye poll.)    3543411.
##  4 Skipjack tuna                     2954736.
##  5 Anchoveta(=Peruvian anchovy)      2415709.
##  6 Blue whiting(=Poutassou)          1739484.
##  7 Pacific sardine                   1678237.
##  8 Yellowfin tuna                    1601369.
##  9 Atlantic herring                  1432807.
## 10 Scads NEI                         1344190.
## # ℹ 2,860 more rows
```

``` r
#NEI might stand for not enough information

#Marine fishes, Freshwater fishes, Alaska pollock, Skipjack tuna, Anchoveta, Blue whiting, Pacific sardine, Yellowfin tuna, Atlantic herring, and Scads were the top 10 most fished species.
```

8. For the species that was caught the most above (not NEI), which country had the highest catch in 2023?

``` r
#Alaska pollock
#Russia had the highest catch for Alaska pollock in 2023

fisheries_clean%>%
  group_by(country)%>%
  filter(period=="2023",
         common_name=="Alaska pollock(=Walleye poll.)")%>%
  summarise(total_catch=sum(catch)) %>% 
  arrange(desc(total_catch))
```

```
## # A tibble: 6 × 2
##   country                               total_catch
##   <chr>                                       <dbl>
## 1 Russian Federation                       1893924 
## 2 United States of America                 1433538 
## 3 Japan                                     122900 
## 4 Democratic People's Republic of Korea      58730 
## 5 Republic of Korea                          28432.
## 6 Canada                                      5887.
```

9. How has fishing of this species changed over the last decade (2013-2023)? Create a  plot showing total catch by year for this species.

``` r
#fisheries_clean%>%
  #group_by(period)%>%
  #filter(fisheries_clean, between(period,2013,2023), 
         #common_name=="Alaska pollock(=Walleye poll.)")%>%
  #summarise(total_catch=sum(catch)) %>% 
  #arrange(desc(total_catch))
fisheries_clean%>%
  #group_by(country)%>%
  filter(period<=2013,
         common_name=="Alaska pollock(=Walleye poll.)")%>%
ggplot(mapping=aes(x=period, y=catch))+geom_jitter()+geom_smooth(method=lm, se=T)+labs(x="year", y="catch number")
```

```
## `geom_smooth()` using formula = 'y ~ x'
```

![](hw8_files/figure-html/unnamed-chunk-12-1.png)<!-- -->

``` r
#Over the last decade fishing has slowly increased and is increasing
```

10. Perform one exploratory analysis of your choice. Make sure to clearly state the question you are asking before writing any 

``` r
#Is the status of the fish species correlated to its catch number?
fisheries_clean%>%
  group_by(catch,status)%>%
  #sort_by(status)%>%
  summarise(total_catch=sum(catch))%>%
  ggplot(data=fisheries_clean,
    mapping=aes(x=catch, y=status))#+geom_boxplot()
```

![](hw8_files/figure-html/unnamed-chunk-13-1.png)<!-- -->

## Knit and Upload
Please knit your work as an .html file and upload to Canvas. Homework is due before the start of the next lab. No late work is accepted. Make sure to use the formatting conventions of RMarkdown to make your report neat and clean!  
