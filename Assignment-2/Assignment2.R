# 1. Create an array consisting of 20 real values
elements = 20:40
a = array(c(elements),dim = c(20))
print(a)

# 2. Find sum, count, mean, median, mode, and mid-range

#sum
s = 0
for (x in a){
  s = s + x
}
print(paste("Sum of",length(a) ," elements is = ", s))

#count
print(paste('count in array is = ',length(a)))
#mean
meann = s / length(a)
print(paste("Mean of array is ",meann))
#median
print(paste("median of array is = ",median(a)))
#mode
getmode <- function(v) {
  uniqv <- unique(v)
  return (uniqv[which.max(tabulate(match(v, uniqv)))])
  
}
print(paste("mode of array is = ", getmode(a)))
#mid range
mid = (a[length(a)] - a[1]) / 2
print(paste("mid range of array is = ",mid))

# divide the array into 4 subroups
sub_len = length(a) / 4
i = 1
g <- array()
while (i < length(a)){
  g <- append(g,list(a[i:(i+(sub_len-1))]))
  i = i + sub_len
}
g <- g[2:5]
print(g)

#4. Find sum, count, mean, median, mode, and mid-range of sub-groups
itr = 1
for (i in g){
  i <- unlist(i)
  cat("\n")
  print(paste(itr,"group is = ", list(i)))
  print(paste("for",itr,"group sum is = ",sum(i)))
  print(paste("for",itr,"group mean is = ",mean(i)))
  print(paste("for",itr,"group mode is = ",getmode(i)))
  print(paste("for",itr,"group count is = ",length(i)))
  print(paste("for",itr,"group median is = ",median(i)))
  mid = (i[length(i)] - i[1]) / 2
  print(paste("mid range of array is = ",mid))
  cat("\n")
  itr = itr + 1
}

#distributive measure

itr = 1
for (i in g){
  i <- unlist(i)
  cat("\n")
  print(paste(itr,"group distributive measure is = ", list(i)))
  print(paste("for",itr,"group sum is = ",sum(i)))
  print(paste("for",itr,"group count is = ",length(i)))
  itr = itr + 1
}

#Algebric Measure
itr = 1
for (i in g){
  i <- unlist(i)
  cat("\n")
  print(paste(itr,"group Algebric measure is = ", list(i)))
  print(paste("for",itr,"group mean is = ",mean(i)))
  itr = itr + 1
}
