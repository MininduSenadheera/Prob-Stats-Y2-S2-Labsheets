#Question 1
#loading file
PSData<-read.csv(file = "DATA3.csv", header = TRUE,sep = ",")
#opening the data on a table
fix(PSData)

#this will print data in console
PSData

#this will display the column names
colnames(PSData)

#changing column names
names(PSData)<-c("Age","Gender","Accommodation")
colnames(PSData)

#display data in age column
PSData$Age

#display data in gender column
PSData$Gender

#display data in accommodation column
PSData$Accommodation

#setting 1 as male and 2 as female
PSData$Gender<-factor(PSData$Gender, c(1,2),c("Male","Female"))
PSData$Gender

#setting 1 as home, 2 as boarded and 3 as Lodging
PSData$Accommodation<-factor(PSData$Accommodation, c(1,2,3),c("Home","Boarded","Lodging"))
PSData$Accommodation

#Creating frequency table
Gender.freq<-table(PSData$Gender)
#displaying the table
Gender.freq

#Creating frequency table
Accommodation.freq<-table(PSData$Accommodation)
#displaying the table
Accommodation.freq

#Creating frequency table
Age.freq<-table(PSData$Age)
#displaying the table
Age.freq

#Question 2
#Creating pie charts
pie(Gender.freq,main = "Pie chart for gender")
pie(Age.freq,main = "Pie chart for age")
pie(Accommodation.freq,main = "Pie chart for accommodation")

#creating bar chart
barplot(Gender.freq, main = "Bar plot for gender", ylab = "Frequency")
barplot(Age.freq, main = "Bar plot for age", ylab = "Frequency")
barplot(Accommodation.freq, main = "Bar plot for accommodation", ylab = "Frequency")

#creating box plots
#for gender and accommodation cant create box plot as there are character values
boxplot(PSData$Age, main = "Box plot for age")

#creating histogram
#for gender and accommodation cant create histogram as there are not numeric
hist(PSData$Age, main = "Histogram for age")

#Question 3
#creating a table with gender and accommodation
Gender_Accom_Freq<-table(PSData$Gender,PSData$Accommodation)
#displaying table
Gender_Accom_Freq

#create a stacked bar chart
#beside true means create chart side by side
barplot(Gender_Accom_Freq, beside = TRUE, main = "Gender and Accommodation",legend = rownames(Gender_Accom_Freq))

#Question 4 and 5
xtabs(PSData$Age~PSData$Gender+PSData$Accommodation)/Gender_Accom_Freq

boxplot(PSData$Age~PSData$Gender, Main = "Boxplot for age and gender", xlab = "Gender", ylab = "Age")