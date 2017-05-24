#####################################################
#Unpivoting data from 2017 result table

dt <- read.csv("C:/MDownloads/2017TV.csv")
dj <- read.csv("C:/MDownloads/2017J.csv")

library(xlsx)
library(reshape)


tv <- melt(dt, id = c("Countries"))
output<-tv[order(tv$Countries),]

write.xlsx(output, file="2017TV.xlsx", 
           sheetName="List")



jury <- melt(dj, id = c("Countries"))
output<-jury[order(tv$Countries),]

write.xlsx(output, file="2017Jury.xlsx", 
           sheetName="List")


#####################################################


#####################################################
#Calculating mean years between wins (2017-wins-debut)
atd <- read.csv("C:/MDownloads/Above2.csv")



ireland <- subset(atd, Country=="Ireland")
ireland$debut<-1965


ireland$inter<-0
ireland<-mutate(ireland, inter = lag(Year)-Year)
ireland[1,]$inter<-2017-ireland[1,]$Year
ireland$firstint<-ireland[nrow(ireland), ]$Year-ireland$debut
ireland$res<-(( sum(ireland$inter)+mean(ireland$firstint)) / (nrow(ireland)+1))


sweden <- subset(atd, Country=="Sweden")
sweden$debut<-1958


sweden$inter<-0
sweden<-mutate(sweden, inter = lag(Year)-Year)
sweden[1,]$inter<-2017-sweden[1,]$Year
sweden$firstint<-sweden[nrow(sweden), ]$Year-sweden$debut
sweden$res<-(( sum(sweden$inter)+mean(sweden$firstint)) / (nrow(sweden)+1))


unitedk <- subset(atd, Country=="United Kingdom")
unitedk$debut<-1957


unitedk$inter<-0
unitedk<-mutate(unitedk, inter = lag(Year)-Year)
unitedk[1,]$inter<-2017-unitedk[1,]$Year
unitedk$firstint<-unitedk[nrow(unitedk), ]$Year-unitedk$debut
unitedk$res<-(( sum(unitedk$inter)+mean(unitedk$firstint)) / (nrow(unitedk)+1))



france <- subset(atd, Country=="France")
france$debut<-1956

france$inter<-0
france<-mutate(france, inter = lag(Year)-Year)
france[1,]$inter<-2017-france[1,]$Year
france$firstint<-france[nrow(france), ]$Year-france$debut
france$res<-(( sum(france$inter)+mean(france$firstint)) / (nrow(france)+1))


luxembourg <- subset(atd, Country=="Luxembourg")
luxembourg$debut<-1956

luxembourg$inter<-0
luxembourg<-mutate(luxembourg, inter = lag(Year)-Year)
luxembourg[1,]$inter<-1993-luxembourg[1,]$Year
luxembourg$firstint<-luxembourg[nrow(luxembourg), ]$Year-luxembourg$debut
luxembourg$res<-(( sum(luxembourg$inter)+mean(luxembourg$firstint)) / (nrow(luxembourg)+1))


netherlands <- subset(atd, Country=="Netherlands")
netherlands$debut<-1956


netherlands$inter<-0
netherlands<-mutate(netherlands, inter = lag(Year)-Year)
netherlands[1,]$inter<-2017-netherlands[1,]$Year
netherlands$firstint<-netherlands[nrow(netherlands), ]$Year-netherlands$debut
netherlands$res<-(( sum(netherlands$inter)+mean(netherlands$firstint)) / (nrow(netherlands)+1))


norway <- subset(atd, Country=="Norway")
norway$debut<-1960

norway$inter<-0
norway<-mutate(norway, inter = lag(Year)-Year)
norway[1,]$inter<-2017-norway[1,]$Year
norway$firstint<-norway[nrow(norway), ]$Year-norway$debut
norway$res<-(( sum(norway$inter)+mean(norway$firstint)) / (nrow(norway)+1))


denmark<- subset(atd, Country=="Denmark")
denmark$debut<-1957

denmark$inter<-0
denmark<-mutate(denmark, inter = lag(Year)-Year)
denmark[1,]$inter<-2017-denmark[1,]$Year
denmark$firstint<-denmark[nrow(denmark), ]$Year-denmark$debut
denmark$res<-(( sum(denmark$inter)+mean(denmark$firstint)) / (nrow(denmark)+1))


israel <- subset(atd, Country=="Israel")
israel$debut<-1973

israel$inter<-0
israel<-mutate(israel, inter = lag(Year)-Year)
israel[1,]$inter<-2017-israel[1,]$Year
israel$firstint<-israel[nrow(israel), ]$Year-israel$debut
israel$res<-(( sum(israel$inter)+mean(israel$firstint)) / (nrow(israel)+1))


germany <- subset(atd, Country=="Germany")
germany$debut<-1956


germany$inter<-0
germany<-mutate(germany, inter = lag(Year)-Year)
germany[1,]$inter<-2017-germany[1,]$Year
germany$firstint<-germany[nrow(germany), ]$Year-germany$debut
germany$res<-(( sum(germany$inter)+mean(germany$firstint)) / (nrow(germany)+1))


switzerland <- subset(atd, Country=="Switzerland")
switzerland$debut<-1956

switzerland$inter<-0
switzerland<-mutate(switzerland, inter = lag(Year)-Year)
switzerland[1,]$inter<-2017-switzerland[1,]$Year
switzerland$firstint<-switzerland[nrow(switzerland), ]$Year-switzerland$debut
switzerland$res<-(( sum(switzerland$inter)+mean(switzerland$firstint)) / (nrow(switzerland)+1))


spain <- subset(atd, Country=="Spain")
spain$debut<-1961

spain$inter<-0
spain<-mutate(spain, inter = lag(Year)-Year)
spain[1,]$inter<-2017-spain[1,]$Year
spain$firstint<-spain[nrow(spain), ]$Year-spain$debut
spain$res<-(( sum(spain$inter)+mean(spain$firstint)) / (nrow(spain)+1))


austria <- subset(atd, Country=="Austria")
austria$debut<-1957

austria$inter<-0
austria<-mutate(austria, inter = lag(Year)-Year)
austria[1,]$inter<-2017-austria[1,]$Year
austria$firstint<-austria[nrow(austria), ]$Year-austria$debut
austria$res<-(( sum(austria$inter)+mean(austria$firstint)) / (nrow(austria)+1))

italy <- subset(atd, Country=="Italy")
italy$debut<-1956


italy$inter<-0
italy<-mutate(italy, inter = lag(Year)-Year)
italy[1,]$inter<-2017-italy[1,]$Year
italy$firstint<-italy[nrow(italy), ]$Year-italy$debut
italy$res<-(( sum(italy$inter)+mean(italy$firstint)) / (nrow(italy)+1))

ukraine <- subset(atd, Country=="Ukraine")
ukraine$debut<-2003


ukraine$inter<-0
ukraine<-mutate(ukraine, inter = lag(Year)-Year)
ukraine[1,]$inter<-2017-ukraine[1,]$Year
ukraine$firstint<-ukraine[nrow(ukraine), ]$Year-ukraine$debut
ukraine$res<-(( sum(ukraine$inter)+mean(ukraine$firstint)) / (nrow(ukraine)+1))


library("plyr")
dflist<-list(austria[1,], denmark[1,], france[1,], germany[1,], ireland[1,], israel[1,], italy[1,], luxembourg[1,], netherlands[1,], norway[1,], spain[1,], sweden[1,], switzerland[1,], ukraine[1,], unitedk[1,] )

dataset <- ldply(dflist, data.frame)


library(xlsx)
write.xlsx(dataset, file="2017Frequency.xlsx", 
           sheetName="List")
#####################################################