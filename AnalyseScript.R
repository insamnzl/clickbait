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
library(qualtRics)
library(qualtRics)
library(jmv)
library(likert)
library(psych)

#Datensatz laden
filename <- "data/clickbait_daten_test.csv"
raw <- readSurvey (filename)

raw.short <- raw[,c(-1:-17, -21, -139:-140)]

raw.short$Gender <- as.factor(raw.short$Gender)
raw.short$Ausbildung <- as.factor(raw.short$Ausbildung)
raw.short$BeruflTaetigkeit <- as.factor(raw.short$BeruflTaetigkeit)
raw.short$Age <- as.numeric(raw.short$Age)

raw.short$Schlagzeile1 <- as.factor(raw.short$Schlagzeile1)
raw.short$Schlagzeile2 <- as.factor(raw.short$Schlagzeile2)
raw.short$Schlagzeile3 <- as.factor(raw.short$Schlagzeile3)
raw.short$Schlagzeile4 <- as.factor(raw.short$Schlagzeile4)
raw.short$Schlagzeile5 <- as.factor(raw.short$Schlagzeile5)
raw.short$Schlagzeile6 <- as.factor(raw.short$Schlagzeile6)
raw.short$Schlagzeile7 <- as.factor(raw.short$Schlagzeile7)
raw.short$Schlagzeile8 <- as.factor(raw.short$Schlagzeile8)
raw.short$Schlagzeile9 <- as.factor(raw.short$Schlagzeile9)
raw.short$Schlagzeile10 <- as.factor(raw.short$Schlagzeile10)
raw.short$Schlagzeile11 <- as.factor(raw.short$Schlagzeile11)
raw.short$Schlagzeile12 <- as.factor(raw.short$Schlagzeile12)



#Faktoren zuweisen
skala.zutreffen <- c("Trifft überhaupt nicht zu",
                      "Trifft nicht zu",
                      "Trifft eher nicht zu",
                      "Trifft eher zu",
                      "Trifft zu",
                      "Trifft voll und ganz zu")

skala.semdiff <- c("1", "2", "3", "4", "5")

raw.short$BigFive10_1 <- ordered(raw.short$BigFive10_1, levels = skala.zutreffen)
raw.short$BigFive10_2 <- ordered(raw.short$BigFive10_2, levels = skala.zutreffen)
raw.short$BigFive10_3 <- ordered(raw.short$BigFive10_3, levels = skala.zutreffen)
raw.short$BigFive10_4 <- ordered(raw.short$BigFive10_4, levels = skala.zutreffen)
raw.short$BigFive10_5 <- ordered(raw.short$BigFive10_5, levels = skala.zutreffen)
raw.short$BigFive10_6 <- ordered(raw.short$BigFive10_6, levels = skala.zutreffen)
raw.short$BigFive10_7 <- ordered(raw.short$BigFive10_7, levels = skala.zutreffen)
raw.short$BigFive10_8 <- ordered(raw.short$BigFive10_8, levels = skala.zutreffen)
raw.short$BigFive10_9 <- ordered(raw.short$BigFive10_9, levels = skala.zutreffen)
raw.short$BigFive10_10 <- ordered(raw.short$BigFive10_10, levels = skala.zutreffen)

raw.short$InternetSkillScale_1 <-ordered (raw.short$InternetSkillScale_1, levels = skala.zutreffen)
raw.short$InternetSkillScale_2 <-ordered (raw.short$InternetSkillScale_2, levels = skala.zutreffen)
raw.short$InternetSkillScale_3 <-ordered (raw.short$InternetSkillScale_3, levels = skala.zutreffen)
raw.short$InternetSkillScale_4 <-ordered (raw.short$InternetSkillScale_4, levels = skala.zutreffen)
raw.short$InternetSkillScale_5 <-ordered (raw.short$InternetSkillScale_5, levels = skala.zutreffen)
raw.short$InternetSkillScale_6 <-ordered (raw.short$InternetSkillScale_6, levels = skala.zutreffen)
raw.short$InternetSkillScale_7 <-ordered (raw.short$InternetSkillScale_7, levels = skala.zutreffen)
raw.short$InternetSkillScale_8 <-ordered (raw.short$InternetSkillScale_8, levels = skala.zutreffen)


raw.short$Schlagzeile1SemDiff_1 <-ordered(raw.short$Schlagzeile1SemDiff_1,levels = skala.semdiff)
raw.short$Schlagzeile1SemDiff_2 <-ordered(raw.short$Schlagzeile1SemDiff_2,levels = skala.semdiff)
raw.short$Schlagzeile1SemDiff_3 <-ordered(raw.short$Schlagzeile1SemDiff_3,levels = skala.semdiff)
raw.short$Schlagzeile1SemDiff_4 <-ordered(raw.short$Schlagzeile1SemDiff_4,levels = skala.semdiff)
raw.short$Schlagzeile1SemDiff_5 <-ordered(raw.short$Schlagzeile1SemDiff_5,levels = skala.semdiff)
raw.short$Schlagzeile1SemDiff_6 <-ordered(raw.short$Schlagzeile1SemDiff_6,levels = skala.semdiff)
raw.short$Schlagzeile1SemDiff_7 <-ordered(raw.short$Schlagzeile1SemDiff_7,levels = skala.semdiff)

raw.short$Schlagzeile2SemDiff_1 <-ordered(raw.short$Schlagzeile2SemDiff_1,levels = skala.semdiff)
raw.short$Schlagzeile2SemDiff_2 <-ordered(raw.short$Schlagzeile2SemDiff_2,levels = skala.semdiff)
raw.short$Schlagzeile2SemDiff_3 <-ordered(raw.short$Schlagzeile2SemDiff_3,levels = skala.semdiff)
raw.short$Schlagzeile2SemDiff_4 <-ordered(raw.short$Schlagzeile2SemDiff_4,levels = skala.semdiff)
raw.short$Schlagzeile2SemDiff_5 <-ordered(raw.short$Schlagzeile2SemDiff_5,levels = skala.semdiff)
raw.short$Schlagzeile2SemDiff_6 <-ordered(raw.short$Schlagzeile2SemDiff_6,levels = skala.semdiff)
raw.short$Schlagzeile2SemDiff_7 <-ordered(raw.short$Schlagzeile2SemDiff_7,levels = skala.semdiff)

raw.short$Schlagzeile3SemDiff_1 <-ordered(raw.short$Schlagzeile3SemDiff_1,levels = skala.semdiff)
raw.short$Schlagzeile3SemDiff_2 <-ordered(raw.short$Schlagzeile3SemDiff_2,levels = skala.semdiff)
raw.short$Schlagzeile3SemDiff_3 <-ordered(raw.short$Schlagzeile3SemDiff_3,levels = skala.semdiff)
raw.short$Schlagzeile3SemDiff_4 <-ordered(raw.short$Schlagzeile3SemDiff_4,levels = skala.semdiff)
raw.short$Schlagzeile3SemDiff_5 <-ordered(raw.short$Schlagzeile3SemDiff_5,levels = skala.semdiff)
raw.short$Schlagzeile3SemDiff_6 <-ordered(raw.short$Schlagzeile3SemDiff_6,levels = skala.semdiff)
raw.short$Schlagzeile3SemDiff_7 <-ordered(raw.short$Schlagzeile3SemDiff_7,levels = skala.semdiff)

raw.short$Schlagzeile4SemDiff_1 <-ordered(raw.short$Schlagzeile4SemDiff_1,levels = skala.semdiff)
raw.short$Schlagzeile4SemDiff_2 <-ordered(raw.short$Schlagzeile4SemDiff_2,levels = skala.semdiff)
raw.short$Schlagzeile4SemDiff_3 <-ordered(raw.short$Schlagzeile4SemDiff_3,levels = skala.semdiff)
raw.short$Schlagzeile4SemDiff_4 <-ordered(raw.short$Schlagzeile4SemDiff_4,levels = skala.semdiff)
raw.short$Schlagzeile4SemDiff_5 <-ordered(raw.short$Schlagzeile4SemDiff_5,levels = skala.semdiff)
raw.short$Schlagzeile4SemDiff_6 <-ordered(raw.short$Schlagzeile4SemDiff_6,levels = skala.semdiff)
raw.short$Schlagzeile4SemDiff_7 <-ordered(raw.short$Schlagzeile4SemDiff_7,levels = skala.semdiff)

raw.short$Schlagzeile5SemDiff_1 <-ordered(raw.short$Schlagzeile5SemDiff_1,levels = skala.semdiff)
raw.short$Schlagzeile5SemDiff_2 <-ordered(raw.short$Schlagzeile5SemDiff_2,levels = skala.semdiff)
raw.short$Schlagzeile5SemDiff_3 <-ordered(raw.short$Schlagzeile5SemDiff_3,levels = skala.semdiff)
raw.short$Schlagzeile5SemDiff_4 <-ordered(raw.short$Schlagzeile5SemDiff_4,levels = skala.semdiff)
raw.short$Schlagzeile5SemDiff_5 <-ordered(raw.short$Schlagzeile5SemDiff_5,levels = skala.semdiff)
raw.short$Schlagzeile5SemDiff_6 <-ordered(raw.short$Schlagzeile5SemDiff_6,levels = skala.semdiff)
raw.short$Schlagzeile5SemDiff_7 <-ordered(raw.short$Schlagzeile5SemDiff_7,levels = skala.semdiff)

raw.short$Schlagzeile6SemDiff_1 <-ordered(raw.short$Schlagzeile6SemDiff_1,levels = skala.semdiff)
raw.short$Schlagzeile6SemDiff_2 <-ordered(raw.short$Schlagzeile6SemDiff_2,levels = skala.semdiff)
raw.short$Schlagzeile6SemDiff_3 <-ordered(raw.short$Schlagzeile6SemDiff_3,levels = skala.semdiff)
raw.short$Schlagzeile6SemDiff_4 <-ordered(raw.short$Schlagzeile6SemDiff_4,levels = skala.semdiff)
raw.short$Schlagzeile6SemDiff_5 <-ordered(raw.short$Schlagzeile6SemDiff_5,levels = skala.semdiff)
raw.short$Schlagzeile6SemDiff_6 <-ordered(raw.short$Schlagzeile6SemDiff_6,levels = skala.semdiff)
raw.short$Schlagzeile6SemDiff_7 <-ordered(raw.short$Schlagzeile6SemDiff_7,levels = skala.semdiff)

raw.short$Schlagzeile7SemDiff_1 <-ordered(raw.short$Schlagzeile7SemDiff_1,levels = skala.semdiff)
raw.short$Schlagzeile7SemDiff_2 <-ordered(raw.short$Schlagzeile7SemDiff_2,levels = skala.semdiff)
raw.short$Schlagzeile7SemDiff_3 <-ordered(raw.short$Schlagzeile7SemDiff_3,levels = skala.semdiff)
raw.short$Schlagzeile7SemDiff_4 <-ordered(raw.short$Schlagzeile7SemDiff_4,levels = skala.semdiff)
raw.short$Schlagzeile7SemDiff_5 <-ordered(raw.short$Schlagzeile7SemDiff_5,levels = skala.semdiff)
raw.short$Schlagzeile7SemDiff_6 <-ordered(raw.short$Schlagzeile7SemDiff_6,levels = skala.semdiff)
raw.short$Schlagzeile7SemDiff_7 <-ordered(raw.short$Schlagzeile7SemDiff_7,levels = skala.semdiff)

raw.short$Schlagzeile8SemDiff_1 <-ordered(raw.short$Schlagzeile8SemDiff_1,levels = skala.semdiff)
raw.short$Schlagzeile8SemDiff_2 <-ordered(raw.short$Schlagzeile8SemDiff_2,levels = skala.semdiff)
raw.short$Schlagzeile8SemDiff_3 <-ordered(raw.short$Schlagzeile8SemDiff_3,levels = skala.semdiff)
raw.short$Schlagzeile8SemDiff_4 <-ordered(raw.short$Schlagzeile8SemDiff_4,levels = skala.semdiff)
raw.short$Schlagzeile8SemDiff_5 <-ordered(raw.short$Schlagzeile8SemDiff_5,levels = skala.semdiff)
raw.short$Schlagzeile8SemDiff_6 <-ordered(raw.short$Schlagzeile8SemDiff_6,levels = skala.semdiff)
raw.short$Schlagzeile8SemDiff_7 <-ordered(raw.short$Schlagzeile8SemDiff_7,levels = skala.semdiff)

raw.short$Schlagzeile9SemDiff_1 <-ordered(raw.short$Schlagzeile9SemDiff_1,levels = skala.semdiff)
raw.short$Schlagzeile9SemDiff_2 <-ordered(raw.short$Schlagzeile9SemDiff_2,levels = skala.semdiff)
raw.short$Schlagzeile9SemDiff_3 <-ordered(raw.short$Schlagzeile9SemDiff_3,levels = skala.semdiff)
raw.short$Schlagzeile9SemDiff_4 <-ordered(raw.short$Schlagzeile9SemDiff_4,levels = skala.semdiff)
raw.short$Schlagzeile9SemDiff_5 <-ordered(raw.short$Schlagzeile9SemDiff_5,levels = skala.semdiff)
raw.short$Schlagzeile9SemDiff_6 <-ordered(raw.short$Schlagzeile9SemDiff_6,levels = skala.semdiff)
raw.short$Schlagzeile9SemDiff_7 <-ordered(raw.short$Schlagzeile9SemDiff_7,levels = skala.semdiff)

raw.short$Schlagzeile10SemDiff_1 <-ordered(raw.short$Schlagzeile10SemDiff_1,levels = skala.semdiff)
raw.short$Schlagzeile10SemDiff_2 <-ordered(raw.short$Schlagzeile10SemDiff_2,levels = skala.semdiff)
raw.short$Schlagzeile10SemDiff_3 <-ordered(raw.short$Schlagzeile10SemDiff_3,levels = skala.semdiff)
raw.short$Schlagzeile10SemDiff_4 <-ordered(raw.short$Schlagzeile10SemDiff_4,levels = skala.semdiff)
raw.short$Schlagzeile10SemDiff_5 <-ordered(raw.short$Schlagzeile10SemDiff_5,levels = skala.semdiff)
raw.short$Schlagzeile10SemDiff_6 <-ordered(raw.short$Schlagzeile10SemDiff_6,levels = skala.semdiff)
raw.short$Schlagzeile10SemDiff_7 <-ordered(raw.short$Schlagzeile10SemDiff_7,levels = skala.semdiff)

raw.short$Schlagzeile11SemDiff_1 <-ordered(raw.short$Schlagzeile11SemDiff_1,levels = skala.semdiff)
raw.short$Schlagzeile11SemDiff_2 <-ordered(raw.short$Schlagzeile11SemDiff_2,levels = skala.semdiff)
raw.short$Schlagzeile11SemDiff_3 <-ordered(raw.short$Schlagzeile11SemDiff_3,levels = skala.semdiff)
raw.short$Schlagzeile11SemDiff_4 <-ordered(raw.short$Schlagzeile11SemDiff_4,levels = skala.semdiff)
raw.short$Schlagzeile11SemDiff_5 <-ordered(raw.short$Schlagzeile11SemDiff_5,levels = skala.semdiff)
raw.short$Schlagzeile11SemDiff_6 <-ordered(raw.short$Schlagzeile11SemDiff_6,levels = skala.semdiff)
raw.short$Schlagzeile11SemDiff_7 <-ordered(raw.short$Schlagzeile11SemDiff_7,levels = skala.semdiff)

raw.short$Schlagzeile12SemDiff_1 <-ordered(raw.short$Schlagzeile12SemDiff_1,levels = skala.semdiff)
raw.short$Schlagzeile12SemDiff_2 <-ordered(raw.short$Schlagzeile12SemDiff_2,levels = skala.semdiff)
raw.short$Schlagzeile12SemDiff_3 <-ordered(raw.short$Schlagzeile12SemDiff_3,levels = skala.semdiff)
raw.short$Schlagzeile12SemDiff_4 <-ordered(raw.short$Schlagzeile12SemDiff_4,levels = skala.semdiff)
raw.short$Schlagzeile12SemDiff_5 <-ordered(raw.short$Schlagzeile12SemDiff_5,levels = skala.semdiff)
raw.short$Schlagzeile12SemDiff_6 <-ordered(raw.short$Schlagzeile12SemDiff_6,levels = skala.semdiff)
raw.short$Schlagzeile12SemDiff_7 <-ordered(raw.short$Schlagzeile12SemDiff_7,levels = skala.semdiff)


#Skalen berechnen

schluesselliste <- list( Big5 = c("-BigFive10_1", "BigFive10_2", "-BigFive10_3", "-BigFive10_4", "-BigFive10_5", "BigFive10_6", "-BigFive10_7", "BigFive10_8", "BigFive10_9", "BigFive10_10"),
                         InternetSkills = c("InternetSkillScale_1", "InternetSkillScale_2", "InternetSkillScale_3", "InternetSkillScale_4", "InternetSkillScale_5", "-InternetSkillScale_6", "-InternetSkillScale_7", "-InternetSkillScale_8"))

scores <- scoreItems(schluesselliste, raw.short, missing = TRUE, min = 1, max = 6)

data <- bind_cols(raw.short, as.tibble(scores$scores))
data <- data %>%
  select (-starts_with("BigFive10", ignore.case = F)) %>%
  select (-starts_with ("InternetSkillScale", ignore.case = F))


