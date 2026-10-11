# Module 7 

# Task 1
data("mtcars")

head(mtcars)

str(mtcars)

# Task 2
print(mtcars)

summary(mtcars)

plot(mtcars)

class(mtcars)

# Task 3

s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)
class(s3_obj) <- "student_s3"

print(s3_obj)

class(s3_obj)



setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)

print(s4_obj)

class(s4_obj)

print.student_s3 <- function(x, ...) {
  print(x$name)
}

print(s3_obj)

setMethod("show", "student_s4", function(object) {
  print(object@name)
})

print(s4_obj)


# Discussion Questions 

# How can you tell whether an object uses S3 or S4? (Which functions inspect its class system?)

# You can use the class function to see what class the object belongs to. The isS4 function can be used to check if the object uses S4.

# How do you determine an object’s underlying type (e.g., integer vs. list)?

# If you use the typeof() function, you can see what type of data the object has. 

# What is a generic function in R?

# A generic function in R is a function that works differently depending on the class of the object. 

# What are the principal differences between S3 and S4 (e.g., method definition, formal class declarations)?

# S3 is simpler compared to S4. With S3 you can assign the class directly by using the class function. With S4, you have to define the class and specify what type of data it can contain using the setClass() function. 



