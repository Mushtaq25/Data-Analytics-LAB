{
# Q1 - WAP in R to find the highest of three numbers.

num1 <- as.integer(readline(prompt = "Enter 1st number = "))
num2 <- as.integer(readline(prompt = "Enter 2nd number = "))
num3 <- as.integer(readline(prompt = "Enter 3rd number = "))

#high <- max(num1,num2,num3)
if (num1 > num2 && num1 > num3){
  cat(paste("highest number among",num1,num2,num3,"is = ",num1,"\n\n"))
}
if (num2 > num1 && num2 > num3){
  cat(paste("highest number among",num1,num2,num3,"is = ",num2,"\n\n"))
} 
if (num3 > num1 && num3 > num2){
  cat(paste("highest number among",num1,num2,num3,"is = ",num3,"\n\n"))
}
}
