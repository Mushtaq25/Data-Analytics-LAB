set.seed(11)

x = runif(1000,min=0,max=10)
noise = runif(1000,min = -0.2,max=0.2)
y = sin(x) + noise
plot(x,y)

data = data.frame(x,y) 
data

x_train = data$x[1:600]   # Spliting 60-40 training and testing split
y_train = data$y[1:600]
x_test = data$x[601:1000]
y_test = data$y[601:1000]


## Fit SVR model and visualize using scatter plot

#Install Package
install.packages("e1071")

#Load Library
library(e1071)

#Scatter Plot
plot(data)

#Regression with SVM
train_data = data.frame(x_train,y_train)
modelsvm = svm(y_train~x_train,data = train_data)

#Predict using SVM regression
a = data.frame(x_train=x_test)
predYsvm = predict(modelsvm, newdata = a)

#Overlay SVM Predictions on Scatter Plot
plot(data, predYsvm, col = "red", pch=10)

#Evaluation
paste("RMSE of l.model is = ",sqrt(mean((y_test - predYsvm)^2)))
ae = sum(abs(predYsvm - y_test)) 
paste("Mean absolute error = ", ae/length(predYsvm))


plot(x_train,y_train) # plot train data
points(x_train,predict(modelsvm,x_train),col="green") #pltiing the prediction line


plot(x_test,y_test)
points(x_test,predYsvm,col="orange")



