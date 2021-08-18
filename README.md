#	Plentymarkets REST API LOGIN 
In this repo, I include some of my r-scripts to make Plentymarkets REST API calls with statistical software R.  R is very useful to make efficient calls especially when you have large number of orders. 
R can make the API calls very fast. Moreover, we can work on the data very efficiently to perform statistical data analysis.  R is very useful to explore and summarize the E-commerce Data.
##  What to do first 
*	Go to .env.R file and edit the corresponding directories and login data 
	This file inclues all the directories and filenames that are used to save the derived data 
*	save the  env.R and rename it as  .env.R
*   Uncomment the the follwonig  lines and install the packages if necessary . After installing it then comment them again so that yo dont execute these install command every time you run the script 
	install.packages("httr")
	install.packages("jsonlite") 	
	
## Information on the Rscripts 
*	proc_plentymarkets_login.R

	 Plentymarkets REST API Login and get the API KEY 
	
*	ex_get_countryinfo.R

	 This script uses functions from 
   ```
	proc_get_countries.R" 	
	proc_plentymarkets_login.R" 
```
	
and gets the list of countries. 
	

