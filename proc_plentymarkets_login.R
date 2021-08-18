#*****************************************************************************
#*Authr: Dr. Nab Roshyara 
#*Date: 11.08.2021 
#*Software: R 
#*Aim: function getApiKey. 
#**This function will login in plentymarkets and give the api key to make REST API calls 
#**This Script is to make a call to  plentymarket REST API 
#**You make REST API CALL and get the API KEY for Authnication and further calls to get the real data 
#*
#
#*****************************************************************************



#*****************************************************************************
#**
#*call the libraries

library(httr)
library(jsonlite)

#*****************************************************************************
#*your Login url: 
#*

url           =modify_url(basicpath, path = loginPath)

#*****************************************************************************
#* make call to get the API Key 

getApiKey<-function(plenty_username, plenty_password){
	res <- POST(url, 
				body = list(grant_type = "password", username = plenty_username, password = plenty_password),
				#authenticate("clientid", "clientsecret"),
				encode = "form"
	)
	resContent =content(res)

	#*****************************************************************************
	#*just print out the API KEY 
	#print(resContent) 
	apiKey = resContent$access_token
	print(apiKey) 
   return(apiKey)
}
