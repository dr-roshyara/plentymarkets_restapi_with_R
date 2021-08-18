#************************************************************
#*Author: Dr. Nab Raj Roshyara
#*Date: 14.08.2021
#*Aim : Get all information from country Rest Api call from plentymarkets 
#*
#************************************************************

#***********************
#*
#*define the function getCountries
#* apiKey : This you will get from the proc_plentymarket_login. R function 
#* 

getCountries <-function(apiKey,basicPath,countryPath){

	
#****
#* 
#*Create Api call 	
#*
#*

	webapi    =file.path(basicPath, countryPath)
	print(webapi)

#**
#*
#*Get the result 
#*
#*

	result    =GET(webapi, 
               add_headers( Authorization = paste("Bearer ", apiKey,sep=""))
			   )
	print(result)
	status_code=result[["status_code"]]
	print(status_code)

#*********
#*
#*Go Ahead if you get the api success 
#* i.e. if status_code ==200
#*

countries<-matrix()

if(status_code==200){
  resContent  =result$content
  resList     = fromJSON(rawToChar(resContent))
  #print(resList)
  print(names(resList))

#*******
#*
#*create country matris using the data you get from the Api Call 
#*
#*

countries=data.frame(id                      =resList$id,
                   name                    =resList$name,
                   shippingDestinationId   =resList$shippingDestinationId,
                   active                  =resList$active,
                   storehouseId            =resList$storehouseId,
                   isoCode2                =resList$isoCode2,
                   isoCode3                =resList$isoCode3,
                   lang                    =resList$lang,
                   isCountryStateMandatory = resList$isCountryStateMandatory)

}else{
  stop(paste("Can't Get Country Information from: ",countryPath))  
  
}

  return (countries)
}
