#GUASS Simulation
library(rafalib)
mypar(2,1)
set.seed(12)
dat=runif(20,-4,4)
dat1=runif(20,10,20)
dat=append(dat,dat1)

dat=sort(dat,decreasing = T)
plot(dat)


plot(c(1,length(dat)),c(-10,100),type='n')
i=0
z=NA
for (val in dat)
{
  i=i+1
  z[i]=sum(dat[1:i])/sqrt(i)
  points(i,sum(dat[1:i])/sqrt(i),type = "p",col='red')
  
}
max(z)