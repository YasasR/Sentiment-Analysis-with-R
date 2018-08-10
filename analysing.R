#get required libraries
library(tidyverse)
library(tidytext)
library(stringr)
library(dplyr)
library(sentimentr)

## set Working Directory
setwd("E:/cloud/ProjectR")

## loading review Data set
data<-read.csv("Data/Review.csv",stringsAsFactors = FALSE)


#tidying data
reviewdata <- data %>%
  select(name,categories,brand,reviews.rating,reviews.text,reviews.date) %>%
  filter(!is.na(reviews.date)) 
names(reviewdata) <- c("productName","categories","brand","reviewRating","reviewText","reviewDate")
reviewdata$reviewRating<- as.numeric(reviewdata$reviewRating)

Products <- data_frame(unique(reviewdata$productName))


