# Download libraries and dataset

library(tidyverse)
library(dplyr)
library(ggplot2)

df <- read_csv("C:/Users/noxsh/Downloads/archive (4)/AI_Student_Life_Pakistan_2026.csv")

# Look at our data

head(df)


# Data cleaning

sum(is.na(df))
  # No null values
duplicated(df)
  # No duplicates


# Get to know our data

mean(df$Age)
  # average age 19.38
sum(df$Gender == "Male")
  # 48 males
sum(df$Gender == "Female")
  # 52 females
mean(df$Daily_Usage_Hours)
  # 3.06h avg. daily use


# Is there correlation between Daily_Usage_hours and Age?

cor(df$Age, df$Daily_Usage_Hours)
# -0.163 


# What is the most common usage of AI amoung students?

ggplot(df, aes(x = AI_Tool_Used, fill = Education_Level)) +
  geom_bar(position = "dodge") +
  scale_fill_viridis_d() +
  labs(title = "AI tool Used By Students") +
  theme_minimal()
  # visual reputaion of popularity of AIEducation_Level# visual reputaion of popularity of AI tools by Education level

# Does more AI usage lead to a higher impact on grades?

df <- df %>%
  mutate(
    hours_group = ntile(Daily_Usage_Hours, 4),
    hours_group = recode(hours_group,
                         `1` = "low",
                         `2` = "midlow",
                         `3` = "midhigh",
                         `4` = "high")
  )
  # grouping our data by useage

df$hours_group <- factor(df$hours_group,
                    levels = c("low", "midlow", "midhigh", "high"),
                    ordered = TRUE)
  # order our data

ggplot(df, aes(x = hours_group, fill = Impact_on_Grades)) +
  geom_bar(position = "fill") +
  labs(y = "Proportion",
       title = "Grade Distribution by Study Hours")


# Is there a difference in average daily usage hours between grade impacts

df <- df %>% 
  mutate(Impact_group = case_when(
    Impact_on_Grades == "No Change" ~ 0,
    Impact_on_Grades == "Slight Decline" ~ 0,
    Impact_on_Grades == "Improved" ~ 1
  ))

t.test(df$Daily_Usage_Hours, df$Impact_group)
   # H0- There is no difference in average daily usage hours between the grade impact
   # H1- There is a difference in average daily usage hours between the grade impact

ggplot(df, aes(x = Impact_group, y = Daily_Usage_Hours)) +
  geom_boxplot() +
  geom_jitter(width = 0.2, alpha = 0.5) +
  labs(title = "Daily Usage by Impact Group") +
  theme_minimal()

# Liner modle of age and hours

lm(Age ~ Daily_Usage_Hours, data = df)
summary(model)

library(ggplot2)

ggplot(df, aes(x = Age, y = Daily_Usage_Hours)) +
  geom_point() +
  geom_smooth(method = "lm", se = TRUE) +
  labs(title = "Linear Model: Age vs Daily Usage Hours",
       x = "Age",
       y = "Daily Usage Hours") +
  theme_minimal()
