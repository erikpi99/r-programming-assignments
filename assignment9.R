# Assignment 9 

data("mtcars")

head(mtcars)

#Step 1 

# Scatter plot

plot(mtcars$wt, mtcars$mpg,
     main   = "Base: Weight vs. MPG",
     xlab   = "Weight",
     ylab   = "MPG")

# Histogram

hist(mtcars$mpg,
     main = "Base: Distribution of MPG",
     xlab = "MPG")

#Step 2

library(lattice)

# Conditional scatter plot (small multiples)
xyplot(mpg ~ wt | factor(cyl),
       data = mtcars,
       main = "Lattice: MPG vs. Weight by Cylinders")

# Box-and-whisker plot
bwplot(mpg ~ factor(cyl),
       data = mtcars,
       main = "Lattice: MPG by Cylinders")

#Step 3

library(ggplot2)

# Scatter plot with smoothing
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: MPG vs. Weight with Trend by Cylinders")

# Faceted histogram
ggplot(mtcars, aes(mpg)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ factor(cyl)) +
  labs(title = "ggplot2: MPG Distribution by Cylinders")


