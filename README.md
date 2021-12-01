# Pewlett-Hackard-Analysis

## Overview of Analysis
The purpose of analysis was to use our newly aquired SQL skills to determine the number of retiring employees AND see which employees can help with the mentorship program. In this module challenge, we created tables, imported data, grouped and ordered the data based on what we were looking for and exported the data as CSV files. 

## Results 
- The first step of the analysis was creating a table with all the current employees born between January 1, 1952 and December 31, 1955. The individuals born in this time range are those who are retirement-age employees. Some of the employees show up more than once because of promotions so we needed to use the DISTINCT ON() function. 
<img width="521" alt="Screen Shot 2021-08-08 at 12 14 03 PM" src="https://user-images.githubusercontent.com/48080598/128639988-ce98a01a-d316-424a-94a0-e2de6eb41c39.png">

- The second step of the analysis was editing the previous table because some of the employees show up more than once because of promotions. In order to fix this, we needed to use the DISTINCT ON() function to only show their most recent job. 
<img width="364" alt="Screen Shot 2021-08-08 at 12 16 05 PM" src="https://user-images.githubusercontent.com/48080598/128640070-5ab11f92-c1f8-47e1-9968-13d276cd48be.png">

- The third step of the analyis was to count the number of employees who were retiring for each job title. 
<img width="177" alt="Screen Shot 2021-08-08 at 12 18 04 PM" src="https://user-images.githubusercontent.com/48080598/128640109-c43150fc-8de3-45ac-bc62-ef0aef047aaa.png">

- The fourth and final step of the analysis was to create a table that holds the number of employees who are eligible for mentorship. These employees needed to be born between January 1, 1965 and December 31, 1965.
<img width="590" alt="Screen Shot 2021-08-08 at 12 21 08 PM" src="https://user-images.githubusercontent.com/48080598/128640181-756fe402-86fb-43b8-8b6c-858a26879bdf.png">

## Summary 

