# Libraries
library(dplyr)
library(car)

# Deliverable 1
mecha_car <- read.csv('MechaCar_mpg.csv')

multiple_regression_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car)
summary(multiple_regression_model)

avPlots(multiple_regression_model)


# Deliverable 2
suspension_coil <- read.csv('Suspension_Coil.csv')

# Create Total Summary Tibble
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI),Median = median(PSI),Variance = var(PSI), SD = sd(PSI), .groups ='keep')

# Create the Lot Summary Tibble
lot_sumamry <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI),Variance = var(PSI), SD = sd(PSI), .groups ='keep' )


# Deliverable 3

# T-Test: All lots and 1500
all_lots = t.test(suspension_coil$PSI,mu=1500)
print(all_lots)

# Lot 1 
lot1 = t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot == 'Lot1'),mu=1500)
print(lot1)

# Lot 2
lot2 = t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot == 'Lot2'),mu=1500)
print(lot2)

# Lot 3 
lot3 = t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot == 'Lot3'),mu=1500)
print(lot3)
