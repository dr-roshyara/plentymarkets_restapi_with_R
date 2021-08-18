#*********************************************************
#*Author: Dr. Nab Raj Roshyara 
#*Date: 16.08.2021 
#*Aim: Define Some of the helping functions which you can use anywhere 
#*Create workding directory based on year 
#*
#*

#**************************
#*
#*Create a directory based on the year 
#*

create_year_wd <-function(mainDir,code="",datum){
  #datum ="2021-08-03 09:25:07 CEST"
  #code ="test"
  #*result : 2021_test
  jahr<-unlist(strsplit(datum,"-"))[1]
  file_path =file.path(mainDir,jahr)
  if(code!=""){
    file_path =paste(file_path,code,sep="_")
    file_path
  }
  btemp = dir.exists(file_path)
  if(!btemp){
    dir.create(file_path)
  }
  rm(datum,jahr,btemp,code,datum,code,mianDir)
  return (file_path)
}

#**********************
#*
#*The following code creates a directory once a month and save the data inside it 
#*
create_timestamp_wd<-function(mainDir, code){
  #code <-"crystal"
  #mainDir <- "N:/Einkauf/01_stocks"
  #mainDir =wwd
  #subDir <- "outputDirectory"
  today =Sys.time() 
  subDir =paste(format(today,"%Y%_%m"),code,sep="_")
  file_path =file.path(mainDir, subDir)
  btmp= dir.exists(file_path)
  if(!btmp){
    dir.create(file_path)
  }
  #file_path<-paste(file_path,"/",sep="")
  return (file_path) 
}

#***********************************
#*
#*Make Matrix from list where each element of the list is a vector of same size 
#*

makeMatrix<-function (myList){
  #myList<-entries
  un_list =unlist(myList) 
  n_row= length(myList[[1]])
  n_row
  n_col =length(myList)
  n_col
  myMat =matrix(un_list,nrow =n_row, ncol=n_col)
  rm(un_list,n_row,n_col)
  return(myMat); 
}

#******************************************
#*
#*Get the time stamp as string 
#*

curTimeStamp<-function(){
  today         = Sys.time()
  curTimeStamp  = format(today,"%y%m%d_%H%S%M_%Z")
  return (curTimeStamp);
}

#***********************************
#*sleeping function 
#*Define the sleeep time 

getSleep <- function(x)
{ 
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}


#********************************
#*
#*Get row of a matrix as string 
#*
#*
get_row<-function(rowelem){
  return (paste(rowelem,collapse=";"))
}