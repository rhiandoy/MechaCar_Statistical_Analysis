# DELIVERABLE 1
# load dplyr package
library(dplyr)
# read csv into dataframe
mechacar_mpg_df <- read.csv("C:/Users/rhian/MechaCar_Statistical_Analysis/MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)
# perform linear regression using lm() 
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechacar_mpg_df)
# generate summary statistics
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechacar_mpg_df))

# DELIVERABLE 2
#read csv file into dataframe
suspension_coil_df <- read.csv("C:/Users/rhian/MechaCar_Statistical_Analysis/Suspension_Coil.csv", check.names=F, stringsAsFactors=F)
# create a summary dataframe
total_summary <- suspension_coil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# Group each lot by mean,median,variance,SD
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# DELIVERABLE 3
# Use t.test() to determine if PSI across all lots is different from pop. mean
# of 1,500 pounds per square inch
t.test(suspension_coil_df$PSI, mu=1500)

# Create 3 more scripts for each lot
t.test(subset(suspension_coil_df, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(suspension_coil_df, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(suspension_coil_df, Manufacturing_Lot=="Lot3")$PSI, mu=1500)
