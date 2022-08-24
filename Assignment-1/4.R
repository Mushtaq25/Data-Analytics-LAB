# Q3 - WAP in R to find the multiplication table (from 1 to 10)
for (i in 1:10){
  cat(paste("\nprinting",i,"table\n"))
  for (j in 1:10){
    mul = i * 10
    cat(paste(i,"*",j,"=",mul,"\n"))
  }
}