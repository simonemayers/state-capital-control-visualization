# Load ggplot2
library(ggplot2)
library(here)



# Create data
years <- seq(1938, 2010, by = 2)
rep_year <- rep(years, each = 3)
condition <- rep(c("Democratic", "Mixed", "Republic"), length.out = length(rep_year))
value <- c(
  15, 10, 21,  # 1938 21,10, 15
  12, 19, 15,  # 1940
  20, 17, 9,  # 1942
  18, 18, 10,  # 1944
  21, 17, 8,  # 1946
  13, 18, 15,  # 1948
  16, 15, 15,  # 1950
  24, 14, 8,  # 1952
  14, 16, 16,  # 1954
  11, 18, 17,  # 1956
  5, 22, 21,  # 1958
  8, 22, 18,  # 1960
  10, 21, 17,  # 1962
  3, 24, 21,  # 1964
  10, 14, 24,  # 1966
  15, 13, 20,  # 1968
  10, 17, 21,  # 1970
  8, 17, 24,  # 1972
  1, 27, 21,  # 1974
  0, 27, 22,  # 1976
  4, 21, 24,  # 1978
  7, 17, 25,  # 1980
  4, 24, 21,  # 1982
  4, 17, 28,  # 1984
  5, 14, 30,  # 1986
  4, 14, 31,  # 1988
  3, 17, 29,  # 1990
  3, 16, 30,  # 1992
  15, 8, 26,  # 1994
  12, 6, 31,  # 1996
  14, 10, 25,  # 1998
  13, 8, 28,  # 2000
  12, 8, 29,  # 2002
  12, 7, 30,  # 2004
  8, 17, 24,  # 2006
  20, 11, 18,  # 2008
  24, 14, 11   # 2010
  )
data <- data.frame(rep_year, condition, value)

# Plot stacked bar
ggplot(data, aes(fill = condition, y = value, x = rep_year)) + 
  geom_bar(position = "stack", stat = "identity") +
  scale_y_continuous(breaks = seq(0, max(50), by = 10)) +  # Set y-axis breaks
  scale_x_continuous(breaks = seq(0, max(data$rep_year), by = 10)) +  # Set x-axis breaks
  labs(x = "Years", y = "States", fill = "Control of State Capitals") +
  theme_minimal()



ggplot(data, aes(x = rep_year, y = value, fill = condition)) +
  geom_bar(stat = "identity") +
  facet_wrap(~ condition) +
  labs(x = "Years", y = "States") +
  theme_minimal()


