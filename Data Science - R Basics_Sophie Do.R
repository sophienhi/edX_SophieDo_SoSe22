#Section 1

#1.1
a <-2
b <--1
c <--4
(-b-sqrt(b^2-4*a*c))/(2*a)
(-b+sqrt(b^2-4*a*c))/(2*a)

#1.2
log(1024,4)

#1.3
install.packages("dslabs")
library(dslabs)
data(movielens)
str(movielens)
class(movielens$title)
class(movielens$genres)

#1.4
nlevels(movielens$genres)



#Section 2

#2.1
x <- c(2, 43, 27, 96, 18)
order(x)
rank(x)
sort(x)

#2.2
min(x)
which.min(x)
max(x)
which.max(x)

#2.3
name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)
time_in_hours <- time/60
time_in_hours[4]
speed <- distance/time_in_hours
speed[1]
i_max <- which.max(speed)
name[i_max]



#Section 3
data(heights)
options(digits=3)

#3.1
mean_height <- mean(heights$height)
mean_height
ind <- which(heights$height > mean_height)
length(ind)

#3.2
females <- heights$sex == "Female"
above_average_height <- heights$height > mean_height
females_above_average_height <- females & above_average_height
sum(females_above_average_height)

#3.3
mean(heights$sex == "Female")

#3.4
min(heights$height)
i_min <- match(min(heights$height), heights$height)
i_min
heights$sex[i_min]

#3.5
max(heights$height)
x <- 50:82
x
sum(!x %in% heights$height)

#3.6
install.packages("dplyr")
library(dplyr)
heights2 <- mutate(heights, height_cm = height*2.54)
heights2$height_cm[18]
mean(heights2$height_cm)

#3.7
females_in_heights2 <- filter(heights2, sex=="Female")
nrow(females_in_heights2)
mean(females_in_heights2$height_cm)

#3.8
data(olive)
head(olive)
plot(olive$palmitoleic, olive$palmitic)

#3.9
hist(olive$eicosenoic)

#3.10
boxplot(palmitic ~ region, data=olive)
