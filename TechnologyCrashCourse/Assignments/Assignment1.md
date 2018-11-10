# Assignment 1: Get familiar with S3

Task:

- **Online Travel Company** uses S3 to store statistics on successful and failed searches data for the hotel 
reservation. As a data analyst you will help the Head of Product.

- Head of Product wants to know: **What is the estimated monthly cost, the 
company needs to pay for storing this data?**

- You should answer the question and prepare a brief summary that justify your answer.


Useful context:

- The company operates approximately with 5000 different destinations and 5 years (60 months) of data.   


- Searches are stored by location and time. Every location and month is represented by a file similar to : 

```
s3://data.public.bdatainstitute.com/dam18/search_logs/2018/09/2018_09_18452212_log.json

(filename contains: Year, Month and ServiceID)
```  

