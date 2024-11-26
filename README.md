# Customer-Churn-Analysis
# Introduction
In this EDA, the objective is determine if there is a factor that leads the customers to cancel the services and, if true, what factor is the responsible.

## **Data Extraction**
For EDA(Exploratory Data Analysis) project,we will be utilizing the "Telecom-Churn-Prediction" dataset.The original source of this data is article titled "Telco Customer Churn"



## **Data**
The data for this project is stored in a R database and consists of a table with the following columns:

**CustomerID** :	A unique identifier for each customer.

**Gender** :	The gender of the customer (e.g., Male, Female).

**SeniorCitizen** :	Indicates if the customer is a senior citizen (1 = Yes, 0 = No).

**Partner** :	Indicates if the customer has a partner (1 = Yes, 0 = No).

**Dependents** :	Indicates if the customer has dependents (1 = Yes, 0 = No).

**Tenure** : 	The number of months the customer has been with the company.

**PhoneService** :	Indicates if the customer has phone service (1 = Yes, 0 = No).

**MultipleLines** :	Indicates if the customer has multiple phone lines (Yes, No, No phone service).

**InternetService** :	Type of internet service provided (e.g., DSL, Fiber optic, No).

**OnlineSecurity** :	Indicates if the customer has online security (1 = Yes, 0 = No).

**OnlineBackup** :	Indicates if the customer has online backup (1 = Yes, 0 = No).

**DeviceProtection** :	Indicates if the customer has device protection (1 = Yes, 0 = No).

**TechSupport** :Indicates if the customer has tech support (1 = Yes, 0 = No).

**StreamingTV** :	Indicates if the customer subscribes to streaming TV (1 = Yes, 0 = No).

**StreamingMovies** :	Indicates if the customer subscribes to streaming movies (1 = Yes, 0 = No).

**Contract** :	The type of contract the customer has (e.g., Month-to-month, One year, Two year).

**PaperlessBilling** :	Indicates if the customer uses paperless billing (1 = Yes, 0 = No).

**PaymentMethod** :	The method of payment (e.g., Electronic check, Mailed check, Bank transfer, Credit card).

**MonthlyCharges** :	The amount charged to the customer each month.

**TotalCharges** :	The total amount charged to the customer over their tenure.

**Churn** :	Indicates if the customer has churned (1 = Yes, 0 = No).

## **Data Handling**
Data assessment is carried out to ensure that the data used for further analysis is ready and in accordance with the analysis needs. Things to do:


Check for null ​​or missing values

Perform data type and value consistency

Check for any outliers or unusual values

 **use boxplots in the MonthlyCharges and TotalCharges columns**.

 #MonthlyCharges boxplot.


![image](https://github.com/user-attachments/assets/5c61de4d-9d65-4821-8f8e-69ddab5f090b)

 #TotalCharge boxplot

![image](https://github.com/user-attachments/assets/a4a730f6-9bcf-483e-8703-4413ca336b5f)

As we can see in both boxplots, we don't have outliers in this dataset. If we had, they would have to be treated. Like we did with the missing values, we could remove them or replace them with other values, like the column median.

After making sure our data is reliable and ready to analyze, we can start creating visualizations to identify patterns and correlations between different variables.

First, let's make a bar chart to see how many clients canceled the service and how many don't proportionally.

**Churn bar chart**

![image](https://github.com/user-attachments/assets/85f983e1-9c8a-4c1f-963c-f16ae7e99b76)


As we can see in this visualization, the churn represents less than 30% of total clients

Next, we'll evaluate if some demographic variables (gender, SeniorCitizen and Partner) are directly related to the churn.

**Churn by gender**

![image](https://github.com/user-attachments/assets/25ced8f5-0fb4-455d-932c-c6664979b40a)

In this visualization, we can see that the gender is not directly related to churn.

**Churn by senior citizens**

![image](https://github.com/user-attachments/assets/b1c0aa1f-2914-448b-acfa-ccf918d87ad0)

This visualization shows that being a senior citizen can lead to churn, presenting a high percentage of correlation.


**Churn by partnership status**

![image](https://github.com/user-attachments/assets/cf92c3d6-3825-4efd-86bf-84f3b8d7685e)



This visualization shows a possible relation between partnership status and churn. It seems like single people tends to cancel the services more often.

It is essential to do not jump to conclusions at this point. A possible correlation does not mean causality. Being single may or may not be a cause to churn. Further investigation is needed.

Next, we can verify if there is some relation between financial related variables and the churn.

**Churn per contract type bar chart**


![image](https://github.com/user-attachments/assets/88b3587f-79ef-42a4-8403-9082135f2f93)

This visualization shows clearly that people with month to month contracts tend to cancel the services more often, Let's keep it in mind for later use.


**Churn per payment method bar chart**

![image](https://github.com/user-attachments/assets/e5e66f97-0e6a-4c6c-a658-67423fd97bb2)

This visualization also shows a relation between the electronic check payment method and churn.

**Churn by monthly charges density chart**

![image](https://github.com/user-attachments/assets/6b401acc-d514-43d5-982d-ae003cf14c75)

This distribution chart shows that there is a strong correlation between monthly charges and churn. More expensive monthly charges lead to churn more often. The pattern only diverge in some specific areas, like monthly charges near to 62.5 or higher than 112.5.

**total charges by churn boxplot**

![image](https://github.com/user-attachments/assets/77f3a38c-0ad8-431d-aa20-f73619045a0b)


This visualization indicates that lower total charges leads to churn more often. The outliers in the Yes parameter tells us that clients with high TotalCharges that cancel the services are rare, but they exist.

At this point, the analysis shows us some preliminar attributes that tell us possible causes that lead to churn.

## **Conclusion**
In summary, leveraging insights from the Telco Customer Churn dataset allows telecommunications companies to understand their customers better, make informed business decisions, and implement effective strategies to enhance customer retention. By continuously analyzing these factors, businesses can adapt to changing customer needs and preferences, ultimately driving growth and success in a competitive market.
