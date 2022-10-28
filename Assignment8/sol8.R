#1. Create a synthetic dataset of 1000 data points for Linear regression analysis and save it in a .csv file.
#The dataset should have only one dependent variable and one independent variable.

x = runif(1000,-500,500)
#y = runif(1000,1,1000)
y <- 5*x + rnorm(1000, 1, 1000)
df <- data.frame(x, y)


write.csv(df,"/home/nemesis/Desktop/synthetic.csv", row.names = FALSE) #writing .csv file





#2. Plot the data points.

plot(x,y)

#3. Normalize the above synthetic dataset and perform linear regression. For this, split the dataset into train and test 
# sets in the ratio 60:40. Evaluate the performance of the model on the test dataset and display the result.
#For evaluation, use different measures such as MAE, and RMSE.

relation <- lm(y ~ x,data=df) #Linear regression in whole data without split

x_train = x[1:600]    #spliting data into 60-40 split
y_train = y[1:600]

x_test = x[601:1000]
y_test = y[601:1000]

train_data = data.frame(x_train,y_train)

l.model = lm(y_train ~ x_train, data=train_data)

print(summary(l.model))

x_test = data.frame(x_train = x_test)
y_pred = predict(l.model,newdata = x_test) #prediction on test data
print(head(y_pred))

paste("RMSE of l.model is = ",sqrt(mean((y_test - y_pred)^2)))
ae = sum(abs(y_pred - y_test)) 
paste("Mean absolute error = ", ae/length(y_pred))





#4. Plot the best fit for the regression along with the train datapoint and the test datapoint separately.
x_test = array(c(unlist(x_test)))
plot(x_test,y_test)
lines(abline(l.model),col="blue",lwd=6)

plot(x_train,y_train)
lines(abline(l.model),col="red",lwd=6)
