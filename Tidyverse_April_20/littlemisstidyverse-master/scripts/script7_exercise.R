# load packages 
library(tidyverse)

# A new data set! This is from an experient I ran looking at
# how people reason about... stuff. The details don't really
# matter, other than to note that there are 21 observations
# per person, and it would be nice to have code that would let
# us select a person and look at their data
reasoning <- read_csv("./datasets/frames_ex2.csv")

# ------ Part 1 ------

# Print the data to screen. Notice that there are a lot of
# rows, because every row is a single judgment!
YOUR-CODE-HERE

# Use filter to extract the data from person with id = 12
one_person <- reasoning %>% 
  YOUR-CODE-HERE

# Take a look at the raw data
YOUR-CODE-HERE

# Next let's look at their average "response" across each of the
# 7 test items (i.e., group by test item and compute the mean
# response for each one)
generalisation <- person %>%
  group_by(YOUR-CODE-HERE) %>%
  summarise(mean_response = YOUR-CODE-HERE)

# Now plot the generalisations. We haven't talked much about 
# the details of plotting yet, but see if you can work out what
# this code is doing anyway!
pic <- generalisation %>% 
  ggplot(aes(x = test_item, y = mean_response)) +
  geom_point() + 
  geom_smooth(method = lm)

plot(pic)


# ------ Part 2 ------

# Often when data arrive in this "long" format where every 
# row is a single response, it would also be nice to have 
# a simplified summary. 
#
# For this data set, we would like to retain the "id", 
# "gender", "age" and "condition" variables, since those
# are our between-subject measures.
#
# Let's also calculate the mean response for each person,
# and keep the "mean_response" in the output

little_reason <- reasoning %>%
  select( YOUR-CODE-HERE ) %>%
  group_by( YOUR-CODE-HERE ) %>%
  summarise( YOUR-CODE-HERE ) 

# ... bonus: think about how you might summarise this 
# simpler data using the tools we've talked about
