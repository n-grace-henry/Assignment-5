library(here)
here(siscowet <- read.csv(file="data/siscowet.csv"))

#exploratory figures and data cleaning 
head(siscowet)

plot(
  x=siscowet$len,
  y=siscowet$wgt
)
abline(a=mean(siscowet$wgt, na.rm=TRUE), b=0)

plot(
  x=siscowet[siscowet$locID == "Deer Park", "len"],
  y=siscowet[siscowet$locID == "Deer Park", "wgt"]
)
abline(a=mean(siscowet[siscowet$locID == "Deer Park", "wgt"],
              na.rm=TRUE), b=0)

plot(
  x=siscowet[siscowet$locID == "Blind Sucker", "len"],
  y=siscowet[siscowet$locID == "Blind Sucker", "wgt"]
)
abline(a=mean(siscowet[siscowet$locID == "Blind Sucker", "wgt"],
              na.rm=TRUE), b=0)

plot(
  x=siscowet[siscowet$locID == "Grand Marais", "len"],
  y=siscowet[siscowet$locID == "Grand Marais", "wgt"]
)
abline(a=mean(siscowet[siscowet$locID == "Grand Marais", "wgt"],
              na.rm=TRUE), b=0)

plot(
  x=siscowet[siscowet$locID == "Little Lake Harbor", "len"],
  y=siscowet[siscowet$locID == "Little Lake Harbor", "wgt"]
)
abline(a=mean(siscowet[siscowet$locID == "Little Lake Harbor", "wgt"],
              na.rm=TRUE), b=0)

#Since one of the Little Lake Harbor values is an obvious outlier
#I am looking for where that is 
siscowet[siscowet$locID == "Little Lake Harbor", "wgt"]

#Looks like probably a typo entering the data and the weight in row 541
#was entered as 15800 instead of 1580 so I am replacing that value 
siscowet[541,"wgt"] <- 1580

#Expository figure 

plot(
  x=siscowet[siscowet$locID == "Deer Park", "len"],
  y=siscowet[siscowet$locID == "Deer Park", "wgt"]
)
abline(a=mean(siscowet[siscowet$locID == "Deer Park", "wgt"],
              na.rm=TRUE), b=0)
text(x = 300, y = 2000, 
     floor(mean(siscowet[siscowet$locID == "Deer Park", "wgt"])))


