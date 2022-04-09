# MechaCar_Statistical_Analysis
## Resources Used
- RStudio 4.1.3

## Project Overview
For this project, we had to use R to run a statistical analysis on a prototype to determine what might be hindering the manufacturing teams progress on the "MechaCar". A multiple linear regression analysis was performed as well as the use of summary statistics and t-tests. 

## Linear Regression to Predict MPG

The image below shows the multiple linear regression model to predict the MPG for 50 prototype MechaCars. The variables considered in this model include vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. 
![Linear_regression](https://github.com/rhiandoy/MechaCar_Statistical_Analysis/blob/d3cb1104332f01029241c530a83323752e28fe80/multiple_linear.png)

- In this summary, the coefficients that were tested contributed to a random amount of variance. Based on our results, vehicle length with a p-value of 2.50e^-12 and ground clearance with a p-value of 5.21e^-08 both provide a non-random amoubnt of variance to the MPG values in this dataset.
- This linear regression model resulted in a p-value of 5.35e^-11 (0.0000000000535), which is far lower than the significance level of 0.05%. We can then conclude that the slope cannot be considered zero and rejects our null hypothesis.
- The R-squared value of this model is 0.7149 which approximates that 71% of the predictions on miles per gallon on the MechaCar are correct, making the assumption that yes the model predicts the mpg effectively.


## Summary Statistics on Suspension Coils

Using a new dataset, the weight capacity of suspension coils were recorded in order to compare the consistency of the suspension manufacturing across different production lots. We used summary statistics to determine the PSI of the suspension coils across those 3 manufacturing lots which included the mean, median, variance, and standard deviation.

#### Total Summary
![total_summary](https://github.com/rhiandoy/MechaCar_Statistical_Analysis/blob/aaa9da37bd8415eb8d798d7641b561f26583ec47/total_summary.png)
#### Lot Summary
![lot_summary](https://github.com/rhiandoy/MechaCar_Statistical_Analysis/blob/aaa9da37bd8415eb8d798d7641b561f26583ec47/lot_summary.png)

-In total, the manufacturing lots together stay under the 100 PSI limit with a variance of 62.29356. When reviewing each of the 3 lots individually, Lots 1 and 2 both remain at a lower threshold (0.9795918 & 7.4693878) while lot 3 is over the noted 100 PSI limit with a variance of 170.2861224. We can conclude that individually they do not meet the design specification. 

## T-Tests on Suspension Coils

Finally, we used a T-test to determine if the PSI across all 3 lots is statistically different from the pop. mean of 1,500 PSI. Multiple tests were performed to calculate the lots together as well as individually. 
![t_tests](https://github.com/rhiandoy/MechaCar_Statistical_Analysis/blob/aaa9da37bd8415eb8d798d7641b561f26583ec47/t_test.png)

#### All Lots T-test
The p-value of all lots combined is 0.06028 which is above the value of statistical significance. We are then unable to reject the null. 
#### Lot 1 T-test
The p-value of Lot 1 is equal to 1 which tells us again we cannot reject the null. Lot 1 also shows a sample mean of exactly 1500.
#### Lot 2 T-test
The p-value of Lot 2 is 0.6072 which again is above the value that would make a significant difference so we once again are unable to reject the null. The sample mean was 1500.02 which is extremely similar to Lot 1. 
#### Lot 3 T-test
Lot 3 shows a p-value of 0.04168 which makes it statistically significant. We can reject the null hypothesis in this case. Since there are statistical differences concerning lot 3, we would want to look into this more as to why it is different and determine if this data should be used. 

## Study Design: MechaCar vs. Competition
