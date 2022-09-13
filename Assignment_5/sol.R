normal_Distribution = function(m.mean,varience){
  x <<- seq(-20,20,by=0.1)
  
  pi = 3.14159
  e = 2.71828
  
  y = ( e**( -((x-m.mean)**2)/(2*varience) ) )*( 1/( sqrt(varience)*(sqrt(2*pi)) ) )
  y_norm <<- y
  print(y)
  
  plot(x,y, type="p", lwd=1)
}

normal_Distribution(5,9)

standard_Normal_Distribution = function(m.mean,varience){
  
  pi = 3.14159
  e = 2.71828
  
  z = (x-m.mean)/sqrt(varience)
  z.mean = mean(z)
  z.var= var(z)
  
  y = ( e**( -((z-z.mean)**2)/(2*z.var) ) )*( 1/( sqrt(z.var)*(sqrt(2*pi)) ) )
  print(y)
  plot(x,y_norm, type="b", lwd=1,col="red")
  lines(x,y,type="p",lwd=1,col="blue")
}
standard_Normal_Distribution(5,9)




# Question 2
generate = function(m.mean,sd){
  x <<- seq(0,100,by=0.1)
  varience = sd**2
  pi = 3.14159
  e = 2.71828
  
  y <<- ( e**( -((x-m.mean)**2)/(2*varience) ) )*( 1/( sqrt(varience)*(sqrt(2*pi)) ) )
  z = (x-m.mean)/sqrt(varience)
  z.mean = mean(z)
  z.var= var(z)
  
  y = ( e**( -((z-z.mean)**2)/(2*z.var) ) )*( 1/( sqrt(z.var)*(sqrt(2*pi)) ) )
  print(y)
  plot(x,y,col="blue")
  
}
generate(0.2,0.15)


