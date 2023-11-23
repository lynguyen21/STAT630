# Import data (from R package)
library(openintro)
data("fastfood")

?openintro
?fastfood

# Column names
names(fastfood)
colnames(fastfood)

# Dimensions
dim(fastfood)

nrow(fastfood)
ncol(fastfood)

# View first 6 rows
head(fastfood)

# View last 6 rows
tail(fastfood)

# Accessing columns by name
fastfood$total_carb

# Accessing columns by index
fastfood[ ,1]

# Accessing rows
fastfood[1:10, ]

# Accessing cells
fastfood[1:10, 1:10]

# Adding column
fastfood$new_col <- NA

# Changing values in cells
fastfood[1, 3] <- 300

# Summary of all columns
summary(fastfood$restaurant)

# Coerce the data type
fastfood$restaurant <- factor(fastfood$restaurant)

# Table function
table(fastfood$restaurant)

# Subsetting data
fastfood[fastfood$calories <= 100, ]

fastfood[fastfood$cholesterol <= 10,]

fastfood[fastfood$cal_fat <= 20,]

apply(fastfood[,3:5], 2, mean)

apply(fastfood[,3:5], 2, sd)


# Summary statistics
mean(fastfood$calories)
sd()
var()
median()
min()
max()
range()

# Plot function
boxplot(fastfood$sodium)

# Histogram function
hist(fastfood$sodium)

# Bar plot
plot(fastfood$restaurant)

barplot(table(fastfood$restaurant))
