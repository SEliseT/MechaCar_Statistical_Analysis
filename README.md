# MechaCar_Statistical_Analysis

## Multiple Linear Regression to Predict MPG


This dataset outlines the physical specifics of an upcoming mecha car, which was used to estimate the miles per gallon. The specifications include the following:

* Vehicle Length
* Vehicle Weight
* Whether or not the vehicle is AWD
* Ground Clearance
* Spoiler Angle

The image below depicts the output of the Multiple Linear Regression:

![alt text](https://raw.githubusercontent.com/KitWilliams07/MechaCar_Statistical_Analysis/main/Multiple_Linear_Regression/Resources/stats.png)

The p-value's of the multiple linear regression output represents the likelihood that each coefficient contributes random variance to the model. A lower p-value would indicate that it’s unlikely the variable contributes variation due to randomness. Furthermore, a low p-value means that the variable has a substantial and direct impact on the linear model. 

It's evident that the lowest p-value coefficients are Vehicle Length = 2.60e-12 | Intercept = 5.08e-08 | Ground Clearance = 5.21e-08

There are questions that are benefiial to ask in order to have better understanding of the model's prediction:

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
* If we are using 5% as our significnce level, that would mean any p-value falling below 0.05 will be statistically significant to the model, which would leave Vehicle Length, ground clearance and the intercept as the non random variables. 

Is the slope of the linear model considered to be zero? Why or why not?
* In order to thoroughly answer this question, partial regression plots were made to depict the slope that each predictor variable had in relation to MPG. 

![alt text](https://raw.githubusercontent.com/KitWilliams07/MechaCar_Statistical_Analysis/main/Multiple_Linear_Regression/Resources/Plots.png)
(These plots are created for MPG vs each predictor variable while holding the other predictor variables constant) 

* Completing the processin this way enables readers to see the slope each relationship has. From the output of the model, there are estimates of each coefficient and or variable within the model:

vehicle_length    6.267e+00  
vehicle_weight    1.245e-03  
spoiler_angle     6.877e-02   
ground_clearance  3.546e+00 
AWD              -3.411e+00 

These estimates above represent the slope of the partial regression plot. For example, MPG vs Vehicle Length shows a strong positive slope, indicated by the value above of 6.267. On the other end of the spectrum, MPG vs AWD plot depicts a negative slope, shown by the -3.411 value. It is also clear that Vehicle Weight and Spoiler Angle essentially have a zero slope. 

Based upon both the slope values and the p-values discussed above, each variable has a different level of contribution to the model. I cannot say that the slop of the entire model is 0, because while certain variables show a slope of zero, they are still considered significant to the overall system. From the partial regression plots and p-values, Vehicle Length and Ground Clearance appear to be the only essential variables, as they show a positive, non-zero slope. As those values increase the MPG does as well. 

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

This is not the best model overall. Many of the coefficients have p-values that are greater than the threshold, which are statistically insignificant and should be excluded altogether. This results in the intercept having a much larger impact on the model than it should. 

To improve this model, Vehicle Length, Ground Clearance, should be removed entirely. Perhaps a variable such as engine size could be used instead. 



## Summary Statistics on Suspension Coils

Using the Suspension Coils dataset, some high level summary statistics were used to better understand the data. The statistics were generated from the whole dataset of PSI readings for every vehicle across the 3 different lots.

![alt text](https://raw.githubusercontent.com/KitWilliams07/MechaCar_Statistical_Analysis/main/Multiple_Linear_Regression/Resources/total_stats.png)

The objective here is to ensure consistency across the manufacturing plants for suspension coils. In order to flush this out, we had to establish a more descriptive table.  

![alt text](https://raw.githubusercontent.com/KitWilliams07/MechaCar_Statistical_Analysis/main/Multiple_Linear_Regression/Resources/lot_stats.png)

This data frame displays the same info but filtered based on the Lot. Lots 1 and 2 appear to be consistent and operating as they should. However, Lot 3 has extreme values both significantly above and below the normal mean. As a collective unit the overall variance is below 100 which meet design specifications.


## T-Tests on Suspension Coils

To better understand the differences in the PSI of the suspension coils across the different lots, a few T-tests were ran. 

First, a T-Test comparing all the PSI of all the lots as a whole with respect to what they should be, 1500 PSI. Below is the results of this T-test. 

![alt text](https://raw.githubusercontent.com/KitWilliams07/MechaCar_Statistical_Analysis/main/Multiple_Linear_Regression/Resources/all_lots_t.png)

Since the total population had a mean PSI of 1498.78, the resulting p-value of the T-Test is 0.06028. Using a significance level of 0.05 means that as a whole, the mean PSI of the population is statistically similar to what it should be, 1500 PSI.

Next, a T-test was completed comparing the mean PSI of each lot compared to the nominal value of 1500 PSI.

Lot 1: 

![alt text](https://raw.githubusercontent.com/KitWilliams07/MechaCar_Statistical_Analysis/main/Multiple_Linear_Regression/Resources/lot1_t.png)

Mean PSI: 1500
P-Value: 1

Since the p-value = 1 that means the Lot 1 mean PSI is identical to the population value of 1500. 

Lot 2: 

![alt text](https://raw.githubusercontent.com/KitWilliams07/MechaCar_Statistical_Analysis/main/Multiple_Linear_Regression/Resources/lot2_t.png)

Mean PSI: 1500.2
P-Value: 0.6072

The p-value of 0.6072 is much greater than the significance level cutoff. This means the Lot 2 mean PSI is statistically very similar to the population value of 1500.

Lot 3: 

![alt text](https://raw.githubusercontent.com/KitWilliams07/MechaCar_Statistical_Analysis/main/Multiple_Linear_Regression/Resources/lot3_t.png)

Mean PSI: 1496.14
P-Value: 0.04168

The p-value of 0.04168 is smaller than the significance level cutoff. This means the Lot 3 mean PSI is statistically different to the population value of 1500. This suggests that Lot 3 PSI values are not quite correct. 


## Study Design: MechaCar vs Competition

One feature that interests car buyers is the level of horsepower the car has. Horsepower, mpg and how large the engine is are 3 factors that go into consumer decision making. We can use our tests to see if our MechaCar is much different from the competiton. We can make a null hypothesis stating that it is not different from the competition and our Alternative would be the opposite. To do this we will need to use our t-test after collecting data from different types of competitor vehicles. Our t-test will be comparing the population of all types of competitor vehicles.




