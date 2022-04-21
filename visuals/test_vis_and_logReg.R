
# import libraries
library(tidyverse)
library(plyr)
# import file
df <- read_csv('../NBAdraft.csv')

glm.fit <- glm(lottery ~ MP_college+FG+FGA+FG_college_perc+`2P`+`2PA`+`2P_perc`+`3P`+          `3PA`+`3P_perc` +FT+FTA+FT_perc+ORB+DRB+TRB_college+AST_college+STL+BLK+TOV+PF           +PTS_college+SOS , data = df, family = binomial)
summary(glm.fit)

one.way <- aov(lottery ~ MP_college+FG+FGA+FG_college_perc+`2P`+`2PA`+`2P_perc`+`3P`+          `3PA`+`3P_perc` +FT+FTA+FT_perc+ORB+DRB+TRB_college+AST_college+STL+BLK+TOV+PF           +PTS_college+SOS , data = df)
summary(one.way)

glm.fit <- glm(lottery ~ MP_college+FG+FGA+`2P`+`2PA`+FT+FTA+SOS , data = df, family = binomial)
summary(glm.fit)

names(df)
