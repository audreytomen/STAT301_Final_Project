# Load in data and packages
customers <- read_csv("data/raw/Ecommerce_Consumer_Behavior_Analysis_Data.csv")
library(tidyverse)

# Check the structure of the dataset
glimpse(customers)

# Number of observations
nrow(customers)

# Number of variables
ncol(customers)

# Check missing values in each variable
customers |>
  summarize(
    missing_social_media = sum(is.na(Social_Media_Influence)),
    missing_ads = sum(is.na(Engagement_with_Ads))
  )

customers |>
  count(Social_Media_Influence)

customers |>
  count(Engagement_with_Ads)

# Check for duplicate rows
nrow(customers) - nrow(distinct(customers))

# Initial data-quality checks found no missing values in the Social_Media_Influence and Engagement_with_Ads variables. 
# Both variables contain four categories: High, Medium, Low, and None. Although None could initially appear to represent 
# missing information, it likely indicates an absence of social media influence or advertising engagement rather than a 
# missing observation.