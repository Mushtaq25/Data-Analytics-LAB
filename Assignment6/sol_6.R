t.test1 = function(x,n,arr,alpha){
  
  #calculate S
  a = array()
  for (i in arr){
    a = append(a,(i-mean(arr))^2 )
  }
  a = a[2:length(arr)]
  #print(a)
  S = sqrt(sum(a) / (n-1))
  print(S)
  t = (mean(arr) - x) / (S/sqrt(n))
  #print(t)
  return (t)
}

x = 500
n = 12
arr = c(550,570,490,615,505,580,570,460,600,580,530,526)
alpha = 5 # we can choose alpha = 0.01, 0.05, 0.1

t = t.test1(x,n,arr,alpha)

h0 = 500 #Null Hypothesis
df = n-1
critical_hypothesis = qt((alpha/100),df)
critical_hypothesis
if(t > critical_hypothesis){
  paste("we will reject the Null hypothesis,alternative hypothesis is correct hence, Our sales is increased")
}
else{
  paste("Our Null hypothesis is correct hence our mean is 500")
}

{
#Q2.i> i) create a population of 500 counts in normal distribution with μ = 8 and σ = 0.7.
set.seed(123)
x = c(rnorm(500,8,0.7))
arr = x[1:500]
meu = 8
alpha = 5
df = length(arr) - 1
S = 0.7

z.test = function(arr,m,S){
  
  #print(a)
  n = length(arr)
  
  z = (mean(arr) - m) / (S/sqrt(n))
  #print(t)
  return (z)
}
z = z.test(arr,meu,S)
print(z)
critical_hypothesis = qt((alpha/200),df,lower.tail = FALSE)
print(critical_hypothesis)
{
if(z > critical_hypothesis){
  paste("we will reject the Null hypothesis,alternative hypothesis is correct hence, Our sales is increased")
}
else{
  paste("Our Null hypothesis is correct hence our mean is = ",meu)
}
}

}

