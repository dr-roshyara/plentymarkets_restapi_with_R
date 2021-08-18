#************************************************************
#*Author: Dr. Nab Raj Roshyara
#*Date: 16.08.2021 
#* Aim : Execute the r-script : proc_get_countries.R 
#*
#************************************************************

#*************************
#*start
#*
	rm(list=ls())
	#Your working directory 
	start_wd       ="H:/aufgaben/plenty/plentymarkets_restapi_with_R" 	
  #**	
	setwd(start_wd)
  #read the env.R file 
	source(".env.R")

#************************************************************
#*
#*read helper functions 
#*
	source(file.path(start_wd, "helpers/proc_helper_functions.R"))

#************************************************************

#set the time stamp

	curTimeStamp  = curTimeStamp()

#************************************************
#*read the plenty login file and get the api key
#*all the scripts are saved in aufgaben 

	loginFile =file.path(start_wd,"proc_plentymarkets_login.R")
	loginFile
	source(loginFile)

#/*********************************************************************
#*Get the function to get countr information 

	laenderFile =file.path(start_wd,"proc_get_countries.R")
	laenderFile
	source(laenderFile)

#/*********************************************************************
#* Aim: Get the country information 
#* what we need: 
#* 1. working directory: country_wd  
#* 2. Filename : filename  to save the country information 
#* 3. Make an Api Call : 
#* 


#****
#*1:  already defined in env.R file 
#*

#**************
#*
#*2: filename 
#*

	preName     =paste(curTimeStamp,"_","country_info.csv", sep="")
	filename    =file.path(country_wd,preName)
	print(filename)

#****
#*Get Api Key by plentymarkets login 
#*

apiKey = getApiKey(plenty_username = plenty_username, plenty_password = plenty_password,basicPath = basicPath,loginPath = loginPath)

#***
#*
#*3: Get country info  and save it 
#*
	countries<-getCountries(apiKey = apiKey,basicPath = basicPath,countryPath = countryPath)
	dim(countries)

#*
#*4: save the country info in a a file 
#*
	
	write.table(countries,file=filename, sep=";", quote=F,col.names=T,row.names=F)

#****
#*
#*
