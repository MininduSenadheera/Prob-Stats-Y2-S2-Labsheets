#importing data
data <- read.table("Data.txt",header = TRUE, sep = ",")
#to open the data set by opening data editor window
fix(data)
#display column names
colnames(data)
#rename column
names(data) <- c("Company", "Shareholders")
colnames(data)
 
#Question 1
#draw histogram for above data
hist(data$Shareholders, main = "Histogram for number of Shareholders",xlab = "Shareholders")

#Question 2
#draw histogram using 7 classes where lower limit is 130 and upper limit 270
#length = no.of classes + 1
#cells are not closed on right
histogram<-hist(data$Shareholders, main = "Histogram for number of Shareholders", breaks = seq(130,270, length = 8), right = FALSE, xlab = "Shareholders")

#Question 3 construct frequency distribution for above specification
#identify the break points and round off
breaks <- round(histogram$breaks)
#frequency of each class
freq <- histogram$counts
#midpoints of each class
mids <- histogram$mids
#display the frequency distribution table
#create empty vector
classes <- c()
#loop until last break point
for(i in 1:length(breaks) - 1){
        classes[i] <- paste0("[", breaks[i],",",breaks[i+1],"]")
}
#display frequency table
cbind(classes = classes, frequency = freq)

#Question 4
#drawing frequency polygon on the histogram
lines(histogram$mids, freq)
#drawing frequency polygon only
plot(mids,freq,type = 'l',main = "Frequency polygon for shareholders",xlab = "Shareholders",ylab = "Frequency",ylim = c(0,max(freq)))

#Question 5
#cumulative frequency polygon
cumulativeFreq<-cumsum(freq)
plot(mids,cumulativeFreq,type = 'l',main = "Cumulative Frequency polygon for shareholders",xlab = "Shareholders",ylab = "Cumulative Frequency",ylim = c(0,max(cumulativeFreq)))

#Question 6
abline(h=sum(freq)*0.75,v=207)
