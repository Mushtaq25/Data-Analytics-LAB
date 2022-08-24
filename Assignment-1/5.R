{
# Q4 - WAP in R to find the sum of n natural numbers without formula.
natural_sum <- function(n){
  if (n == 0){
    return (0)
  }
  return  (n + natural_sum(n-1))
}

n <- as.integer(readline(prompt = "Enter natural number = "))
cat(paste("\n","Sum of",n,"natural number using recursion = \t",natural_sum(n),"\n\n"))
}
