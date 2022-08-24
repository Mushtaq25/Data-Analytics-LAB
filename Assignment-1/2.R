{
# Q2 -  WAP in R to find display the sum of n natural numbers using loop.

n <- as.integer(readline(prompt = "Enter natural number = "))
Q <- "the sum of n natural numbers =\t"



sum_n = 0
for (i in 1:n){
  cat(paste(i," "))
  sum_n = sum_n + i
}
cat(paste(Q,sum_n,"\n\n"))
}
