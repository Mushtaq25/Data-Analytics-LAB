{
#Q3 Write the above two programs in R using functions.
find_max_num <- function(num1,num2,num3){
  high <- max(num1,num2,num3)
  cat(paste("highest number among",num1,num2,num3,"is = ",high,"\n\n"))
}
find_max_num(num1,num2,num3)

sum_n = 0
print_n_natuaral_num <- function(n){
  for (i in 1:n){
    cat(paste(i," "))
    
    sum_n = sum_n + i
   
  }
  return (sum_n)
}

cat(paste("sum of natural number = ",print_n_natuaral_num(10),"\n\n"))
}

