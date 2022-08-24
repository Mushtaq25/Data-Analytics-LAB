{
# Q6. Design a simple calculator in R

num1 = as.integer(readline(prompt = "Enter First Number = \t"))
num2 = as.integer(readline(prompt = " Enter second Number =\t"))

i <- "0"
result <- num2
opr = readline(cat("which operation to performed \n 1.\t Additions \n 2.\t Substraction
 3.\t Multiplications \n 4.\t Divide \n 5.Exit \n\n" ))

while (TRUE){
  
  #opr = as.integer(opr)
  
  if (i == "1" & opr != "5"){
    opr = readline(cat("Next operation to be performed in previous answer= \n 1.\t Additions \n 2.\t Substraction
 3.\t Multiplications \n 4.\t Divide \n 5.Exit \n\n" ))
    num1 = as.integer(readline(cat("Enter Next Number =\t")))
    result = as.integer(result)
  }
  if (opr == "5"){
    break
  }
  if (opr == "4" & num2 == 0){
    print(paste("Answer =  Infy"))
    break
  }
  
  result = switch(
    opr,
    "1" = num1 + result,
    "2" = result - num1,
    "3" = num1 * result,
    "4" =  result / num1,
    "5" = break
  )
  i = 1
  print(paste("Answer =  ",result))
  
}
}
