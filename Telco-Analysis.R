# Import data in R
Telco_data <- read_csv("C:/Users/HP/Downloads/Telco-Customer-Churn.csv")
View(Telco_Customer_Churn)

# Installing and loading the packages
install.packages("tidyverse")
install.packages("ggplot")
library(tidyverse)
library(ggplot2)


#Visualizing statistical information about our data to identify basic distribution(average,median etc)
summary(Telco_data)
str(Telco_data)
head(Telco_data)

#Dimension of telco_data
dim(Telco_data)

#counting the number of missing values
sum(is.na(Telco_data))

#Identifying the columns that have missing values
sapply(Telco_data,function(x) sum(is.na(x)))

#Replacing the missing values with the column median
Telco_data$TotalCharges<-ifelse(is.na(Telco_data$TotalCharges),
                         median(Telco_data$TotalCharges,na.rm=TRUE),
                        Telco_data$TotalCharges)

#Using the sum() function to verifyif the missing values were properly replaced
sum(is.na(Telco_data))

#Count of different levels from the 'Churn' column
Telco_data %>% 
  group_by(Churn) %>% 
  summarise(count=n()) %>% 
  mutate(percent=prop.table(count)*100)

#MonthlyCharges Boxplot
ggplot(Telco_data,aes(x="",y=MonthlyCharges))+
  geom_boxplot(fill="lightblue")+
  labs(title="monthlyCharges Boxplot",x="",y="MonthlyCharges")

#TotalCharges Boxplot
ggplot(Telco_data,aes(x="",y=TotalCharges))+
  geom_boxplot(fill="lightgreen")+
  labs(title="monthlyCharges Boxplot",x="",y="TotalCharges")


#Churn bar chart
ggplot(telco_data, aes(x = Churn)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Churn Distribution", x = "Churn", y = "Count")

#Churn by gender
ggplot(Telco_data, aes(x = gender, fill = Churn)) +
  geom_bar(position = "dodge") +
  labs(title = "Churn by Gender", x = "Gender", y = "Count")


#Churn by senior citizens
ggplot(Telco_data, aes(x = as.factor(SeniorCitizen), fill = Churn)) +
  geom_bar(position = "dodge") +
  labs(title = "Churn by Senior Citizens", x = "Senior Citizen", y = "Count")

#Churn by partnership status
ggplot(Telco_data, aes(x = Partner, fill = Churn)) +
  geom_bar(position = "dodge") +
  labs(title = "Churn by Partnership Status", x = "Has Partner", y = "Count") +
  theme_minimal()

#Churn per contract type bar chart
ggplot(Telco_data, aes(x = Contract, fill = Churn)) +
  geom_bar(position = "fill") +
  labs(title = "Churn per Contract Type", x = "Contract", y = "Proportion")

#Churn per contract type bar chart
ggplot(Telco_data, aes(x = Contract, fill = Churn)) +
  geom_bar(position = "fill") +
  labs(title = "Churn per Contract Type", x = "Contract", y = "Proportion")

#Churn by monthly charges density chart
ggplot(Telco_data, aes(x = MonthlyCharges, fill = Churn)) +
  geom_density(alpha = 0.5) +
  labs(title = "Monthly Charges Distribution by Churn", x = "Monthly Charges", y = "Density")

#total charges by churn boxplot
ggplot(Telco_data, aes(x = Churn, y = TotalCharges, fill = Churn)) +
  geom_boxplot() +
  labs(title = "Total Charges by Churn Boxplot", x = "Churn", y = "Total Charges")

