#Question 1
x<-c(1,2,3)
x[1]/x[2]^3-1+2*x[3]-x[2-1]

#Question 2
plot(log(1))
plot(exp(1))

#Question 3
#this will give the numbers divisible by 3
a<-c(3,6,7,10)
a[a%%3==0]
#this will give how many numbers are divisible by three
length(a[a%%3==0])

#Question 4
#This will give the common values in two vectors
A<-c(1,2,3)
B<-c(3,4,5)
intersect(A,B)

#Question 5
#find the index of the maximum value
for(i in length(B)){
  max(B)
}
print(i)

#Question 7
#above thing can be achieved using this too
which.max(B)

#Question 8
#creating a function
CompoundI<-function(P,R,n){
  A<-P*(1+(R/100))^n
  A
}

#calling the function
CompoundI(5000,11.5,15)
