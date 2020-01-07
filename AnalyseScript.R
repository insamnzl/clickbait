#Bibliotheken laden -----
#install.packages("tidyverse")
#install.packages("lubridate")
#install.packages("psych")
#install.packages("esquisse")
#install.packages("ggthemes")
#install.packages("ggplot2")
#install.packages("jmv")
#install.packages("likert")
install.packages("qualtRics")

#install.packages("devtools")
library(devtools)
devtools::install_github("HCIC/r-tools")
library(tidyverse)
source(qualtRics)
library(qualtRics)
library(jmv)
library(likert)

#Datensatz laden
filename <- "data/clickbait_daten_test.csv"
raw <- readSurvey (filename)

