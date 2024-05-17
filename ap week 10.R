?unique
library("DBI")
library(tidyverse)
library(nycflights13)
install.packages("nycflights13")
#to indentify which vairables in the flights table are foreign keys?
flights[1,]
#get the tall number for thre flights and find that tall number in theplanes table
imd <-which(planes$tailnum ==flights[ 1, "tailnum"][(1)])
planes[imd,]


unique(planes$year)
#we cna see that that tailnum has manu unique values as the number of rows - this means that the key number is 

##testing code - is necessary
 
flights[1,]

colnames(flights)
rownames(planes)
### Now combining the flights and airlines tables


flights%>%left_join(airlines, by = "carrier")#joins the tables together
view(airlines)
View(carrier)




### to demonstrate the result from performing each type of join, we will use the following small data frames

# List of students and class they are enrolled in 
students <- data.frame(
  names <- c("Alice", "Bob", "Charlie","Doris"),
  enrolledIn <- c(1,2,5,6)
)


# List of class IDs and details of each class
classes <- data.frame(
  classId = c(1,2,3,4),
  className = c("Maths", "English", "Science", "History"))


#joing now
students %>%inner_join(classes, by = c("enrolledIn" = "classId"))

##
classes
students <- data.frame(
  name = c("Alice", "Bob","Charlie", "Doris"),
  enrolledIn = c(1,2,5,6))

classes <- data.frame(
  classId = c(1,2,3,4),
  className = c("Maths", "English", "Science",  "History"))
library(tidyverse)

students %>% inner_join(classes, by = c("enrolledIn" = "classId"))


students%>% full_join(classes, by = c("enrolledIn"= "classId"))


#semi join


students %>% semi_join(classes, by = c("enrolledIn"= "classId"))



#write an SQL statement using the student table to provide the names of all students in a maths class
library(DBI)
#establish a connection to the database
con <- dbConnect(RSQLite :: SQLite(), dbname = "C:\Home\AP assignment folder\seminar.db")

#list the tables in the database
dbListTables(con)






