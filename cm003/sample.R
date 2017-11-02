x <- data.frame(idX=1:3, string=c("Bolivia (Plurinational State of)", "TractorTrailer", "United States"))
y <- data.frame(idY=letters[1:3], seed=c("Plurinational", "otorcy", "United States of America"))

x$string<-as.character(x$string)
y$seed<-as.character(y$seed)

a<-(str_detect(x$string,y$seed) | str_detect(y$seed,x$string))

length(a)
a
library(stringr)

for(i in 1:length(a)) {
  #get the length of maximum column
  if(!(isTRUE(a[i])))
  {  x[-!a,]
      y[-!a,]
  }
  else{
    if(nchar(x[a,]$string[i]) > nchar(y[a,]$seed[i]))
    {
      x[a,]$mergecol[i]<-x[a,]$string[i]
      y[a,]$mergecol[i]<-x[a,]$string[i]
    }
    else{
      x[a,]$mergecol[i]<-y[a,]$seed[i]
      y[a,]$mergecol[i]<-y[a,]$seed[i]
    }
  }
}



x$string<-NULL
y$seed<-NULL
