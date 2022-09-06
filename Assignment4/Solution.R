#1. Create an array by generating 100 random integers in the range [0, 100]. Write separate
#functions to find the following:
set.seed(1)
arr = array(as.integer(runif(100,min = 0,max = 100)))
print(arr)
tab = data.frame(
  random_n = arr
)
print(head(tab))

# i. Variance and Standard Deviation

#print(paste("Varience of the array  is = ", var(arr)))
  #mean_ssqr = (xi-mean)^2
tab$xmean_sqr = (tab[['random_n']]-mean(tab[['random_n']])) ^2
standard_deviation = 0
var = function(){
  varience = (sum(tab[['xmean_sqr']])) / (length(tab[['random_n']])-1)
  print(paste("Varience of the array  is = ", varience )) 
  
  standard_deviation <<- sqrt(varience)
  print(paste("Standard deviation of the array  is = ", standard_deviation ))
  
}
var()





# ii. Coefficient of Variation,
cof_var = function(){
  cv = standard_deviation/mean(tab[['random_n']])
  print(paste("coefficient of variation of the array is = ", cv*100))
}
cof_var()

# iii. Mean Absolute Deviation (MAD),
  #b = xi - mean
mad = function(){
  tab$b = abs(tab[['random_n']]-mean(tab[['random_n']]))
  print(paste("mean absolute deviation of array is = ",median(tab[['b']])))
}
mad()


# iv. Absolute Average Deviation (AAD),
AAD = function(){
  tab$b = abs(tab[['random_n']]-mean(tab[['random_n']]))
  mean_absolute_dev = sum(tab[['b']]) / length(tab[['random_n']])
  print(paste("absolute average deviation of array is = ",mean_absolute_dev))
  
}
AAD()

# v. Quartiles (Q1, Q2, Q3) and Interquartile Range (IQR).
#arr = sort(arr)
Q2 = median(arr)
Q1_list = array()
Q3_list = array()

for ( i in arr){
  if (i < Q2){
    Q1_list = append(Q1_list,i)
  }
  if (i > Q2){
    Q3_list = append(Q3_list,i)
  }
}
Q1_list = Q1_list[2:length(Q1_list)]
Q3_list = Q3_list[2:length(Q3_list)]
Q1 = median(Q1_list)
Q3 = median(Q3_list)
print(paste("Quartile 1 = ",Q1))
print(paste("Quartile 3 = ",Q3))
print(paste("Quartile 2 = ",Q2))
inter_quartile_range = Q3-Q1
print(paste("inter quartile range of array is = ",inter_quartile_range))
quantile(arr)



fivenum(arr)
boxplot(arr,horizontal=TRUE,col="grey",staplewex=1,axes=FALSE)
text(x = fivenum(arr), labels = fivenum(arr), y = 1.25)
text(labels = c("min","Quartile1","Quartile2","Quartile3","maximum"),y=0.75,x=fivenum(arr))

