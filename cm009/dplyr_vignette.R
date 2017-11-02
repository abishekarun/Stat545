#install.packages("nycflights13")
library(nycflights13)
glimpse(airlines)
glimpse(flights)

flights2 <- flights %>% select(year:day, hour, origin, dest, tailnum, carrier)
glimpse(flights2)

flights2 %>% 
  left_join(airlines)

flights2 %>% left_join(weather)
flights2 %>% left_join(planes, by = "tailnum")
flights2 %>% left_join(airports, c("dest" = "faa"))
flights2 %>% left_join(airports, c("origin" = "faa"))

(df1 <- data_frame(x = c(1, 2), y = 2:1))
(df2 <- data_frame(x = c(1, 3), a = 10, b = "a"))
df1 %>% inner_join(df2) %>% knitr::kable()
df1 %>% left_join(df2)
df1 %>% right_join(df2)
df2 %>% left_join(df1)
df1 %>% full_join(df2)

df1 <- data_frame(x = c(1, 1, 2), y = 1:3)
df2 <- data_frame(x = c(1, 1, 2), z = c("a", "b", "a"))

df1 %>% left_join(df2)

flights %>% 
  anti_join(planes, by = "tailnum") %>% 
  count(tailnum, sort = TRUE)

df1 <- data_frame(x = c(1, 1, 3, 4), y = 1:4)
df2 <- data_frame(x = c(1, 1, 2), z = c("a", "b", "a"))

# Four rows to start with:
df1 %>% nrow()
#> [1] 4
# And we get four rows after the join
df1 %>% inner_join(df2, by = "x") %>% nrow()
#> [1] 4
# But only two rows actually match
df1 %>% semi_join(df2, by = "x") %>% nrow()

(df1 <- data_frame(x = 1:2, y = c(1L, 1L)))
(df2 <- data_frame(x = 1:2, y = 1:2))
intersect(df1,df2)
union(df1,df2)
setdiff(df1,df2)
setdiff(df2,df1)

