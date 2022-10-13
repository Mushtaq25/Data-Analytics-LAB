#1. Download the “Haberman's Survival” dataset from UCI Machine Learning Repository.


data = read.csv('/home/nemesis/Downloads/haberman.csv',header = FALSE, sep = ",")
head(data)

#2. Read the dataset into your program and find Karl Pearson’s correlation coefficients of all possible pairs of attributes.
#Further, conduct a significance test with a level of significance of 0.05.

kp <- function(data,col1,col2){
  x.mean = mean(data[,col1])
  y.mean = mean(data[,col2])
  
  num.rows = length(data[,col1])
  
  xy.sum = 0
  
  for (i in 1:num.rows){
    x.temp = data[i,col1]
    x.temp = x.temp - x.mean
    y.temp = data[i,col2]
    y.temp = y.temp - y.mean
    temp = x.temp * y.temp
    xy.sum = xy.sum + temp
  }
  
  sum2.x = 0
  sum2.y  = 0
  
  for (i in 1:num.rows){
    x = data[i,col1] - x.mean
    x = x * x
    sum2.x = sum2.x + x
  }
  
  for (i in 1:num.rows){
    y = data[i,col2] - y.mean
    y = y * y
    sum2.y = sum2.y + y
  }
  
  print(paste("column no ", col1 , "and column no ", col2))
  result = xy.sum / (sqrt(sum2.x*sum2.y))
  print(paste("karl pearson correlation coefficient is ", result))
  
  temp = (length(data[,3]) - 2) / (1-(result*result))
  t = result * sqrt(temp)
  t.critical = qt(0.05, length(data[,3]) -2 , lower.tail = FALSE)
  print(paste("t_test = ",t , "t_critical", t.critical))
  
  if ( t < t.critical){
    print("Karl pearson coefficient value is highly significany")
    
  }
  else{
    print("Karl pearson coefficient value is not highly significany")
  }
  
  
}

data = read.csv('/home/nemesis/Downloads/haberman.csv',header = FALSE, sep = ",")
print(head(data))

for (m in 1:length(data)-1){
  z = m+1
  for (n in z:length(data)){
    if (z!=n){
      kp(data,z,n)
    }
  }
}

#Write another program to read the dataset and find each attribute's Karl Pearson’s correlation coefficients with
#the target. Further, conduct a significance test with a level of significance of 0.05. 


for (m in 1:length(data)-1){
  z = m+1
  n = length(data)
  if ( z!= n){
    kp(data,z,n)
  }
}