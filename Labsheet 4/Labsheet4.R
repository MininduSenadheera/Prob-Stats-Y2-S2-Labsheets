#Question 1
#importing file
TeamData<-read.table(file="DATA4.txt", header = TRUE, sep = " " )

#viewing the table
fix(TeamData) 

#display column names
colnames(TeamData)

#changing column names
names(TeamData)<-c("Team","Attendance","Salary","Years")
colnames(TeamData)
fix(TeamData)

#boxplot
boxplot(TeamData$Attendance, main = "Box plot for attendance", ylab = "Attendace")
boxplot(TeamData$Salary, main = "Box plot for salary", ylab = "Salary")
boxplot(TeamData$Years, main = "Box plot for years", ylab = "years")

#histogram
hist(TeamData$Attendance, main = "Histogram for attendance", ylab = "Frequency", xlab = "Attendace")
hist(TeamData$Salary, main = "Histogram for salary", ylab = "Frequency", xlab = "Salary")
hist(TeamData$Years, main = "Histogram for years", ylab = "Frequency", xlab = "Years")

#stem and leaf
stem(TeamData$Attendance)
stem(TeamData$Salary)
stem(TeamData$Years)

#summary
summary(TeamData)

#standard deviation
sapply(TeamData, sd)

#IQR
IQR(TeamData$Attendance)
IQR(TeamData$Salary)
IQR(TeamData$Years)

#function to find mode
#first method
FindMode<-function(column){
  counts<-table(column)
  names(counts[counts==max(counts)])
}
FindMode(TeamData$Years)
#second method
Findmode<-function(column){
  uniqnum<-unique(column)
  uniqnum[which.max(tabulate(match(column,uniqnum)))]
}
Findmode(TeamData$Years)

#Function to find outliers
FindOutliers<-function(column){
  q1<-quantile(column)
  q3<-quantile(column)
  iqr<-q3-q1
  
  upperbound<-q3+1.5*iqr
  lowerbound<-q1-1.5*iqr
  
  print(paste("Upper bound = ", upperbound))
  print(paste("Lower bound = ", lowerbound))
  print(paste("Outliers: ", paste(sort(column[column<lowerbound|column>upperbound]),collapse = ",")))
}
FindOutliers(TeamData$Years)
