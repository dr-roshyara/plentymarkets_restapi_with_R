#*******************************************************************************
#*
#*Author: Dr. Nab Raj Roshyara
#*Date: 17.08.2021 
#*Aim: Just to save  all the Directory Path
#*
#*******************************************************************************

#***
#* 
#* Install packages first 

	install.packages("httr")
	install.packages("jsonlite")

#*****
#*
#*Define the directories 
#*
#*
  
  drive       	="C:"  
  
  #starting point   
  start_wd        =file.path(drive, "plentymarkets_restapi_with_R")
 
  #country Dir 
  country_wd 	= file.path(drive, "01_countries") 		
  
  #sales 
  sales_wd       =file.path(drive,"02_sales")
  
  #address 
  address_wd     =file.path(drive, "03_addresses" )
  
  
  #orders
  order_wd       =file.path(sales_wd,"01_orders")
  
  #script 
  script_wd     =file.path(startwd, "rscripts")

  
#*****
#*Plenty paths 
#*
#*

  basicpath    ="your_rest_api_domain.com"

#****************************  
#*
#*Define your user name and password here 
#*
#*  
plenty_username  ="tesuser" 
plenty_password ="testPassword!" 

#******
#*
#*Define the other paths 
#*



loginPath     ="rest/login/"

#for order 
orderPath    ="rest/orders/"

#for country 
countryPath    ="rest/orders/shipping/countries/"


  
