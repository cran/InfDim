\name{IDM.bootCI}
\alias{IDM.bootCI}
\title{Infinite dimensional model (IDM) with bootstrapping
}
\description{
A function to calculate infinite-dimensional model (IDM) elements, as implemented by Kirkpatrick et al. (1990), and to estimate error ranges for the model outputs via bootstrapping.}
\usage{
IDM.bootCI(data, age, nboot)
}
\arguments{
  \item{data}{A matrix containing growth trajectories of individuals (rows) measured at fixed times (columns). Mssing values are not allowed.
}
  \item{age}{A numeric vector of ages at which sizes were measured. Ages must be positive valuies given in an ascending order.
}
  \item{nboot}{number of bootstrap iterations.
}
}
\details{For calculation of IDM elements, IDM.bootCI calls \code{\link{IDM}} function. Bootstrapping is performed by resampling the growth trajectory data with replacing, and IDM elements are calculated for every resampled dataset. Confidence intervals are then obtained as 0.25 and 0.975 quantiles. 
}
\value{The function returns as a list eigenvalues, growth trajectores (each trajectory is given as a column in the trajectory matrix), and percentages of variation accounted for by each growth trajectory, as well as boundaries for 95 percentage confidence intervals (CI) for each output element.
}
\references{
Kirkpatrick M, Lofsvold D, Bulmer M (1990) Analysis of the inheritance, selection and evolution of growth trajectories. Genetics 124:979-993.

Kuparinen A, Björklund M (2011) Theory put into practice: an R implementation of the infinite-dimensional model. Ecological Modelling (in press).
}
\author{Anna Kuparinen and Mats Björklund}

\seealso{\code{\link{IDM}}.
}
\examples{
#a built-in dataset fish is used. This data gives sizes of 53 female stickleback measured at the age of 17, 45, 80, and 115 days.
age=c(17,45,80,115)
P=cov(fish)

out=IDM.bootCI(data=fish,age=age,nboot=1000)

#Growth patterns (i.e. trajectories)
out$Trajectories

#Percantages of variation accounted for by each growth trajectory
out$Percent.trajectory

#figure showing first two trajectories and percentages of variations accounted for by each trajectory.
par(mfrow=c(3,1),mar=c(5,4,0.5,0.5),oma=c(0.5,0.5,0.5,0.5))
barplot(out$Percent.trajectory,ylim=c(0,105),las=1,names.arg=c("1","2","3","4"), ylab="Percentage of variation",cex.lab=1.35,cex.axis=1.25)
lines(c(0.65,0.65),c(out$Percent.trajectory2.5CI[1],out$Percent.trajectory97.5CI[1]))
lines(c(1.9,1.9),c(out$Percent.trajectory2.5CI[2],out$Percent.trajectory97.5CI[2]))
lines(c(3.15,3.15),c(out$Percent.trajectory2.5CI[3],out$Percent.trajectory97.5CI[3]))
lines(c(4.4,4.4),c(out$Percent.trajectory2.5CI[4],out$Percent.trajectory97.5CI[4]))
text(0.18,100,"a",cex=1.4)
box(which="plot")

plot(age,out$Trajectories97.5CI[,1],type="l",lty=2,ylim=c(-1,1),las=1,ylab="Trajectory value",xlab="Age (days)",cex.lab=1.35,cex.axis=1.25)
lines(age,out$Trajectories2.5CI[,1],lty=2)
lines(age,out$Trajectories[,1],lty=1)
abline(h=0,lty=1)
text(17,0.9,"b",cex=1.4)

plot(age,out$Trajectories97.5CI[,2],type="l",lty=2,ylim=c(-1,1),las=1,ylab="Trajectory value",xlab="Age (days)",cex.lab=1.35,cex.axis=1.25)
lines(age,out$Trajectories2.5CI[,2],lty=2)
lines(age,out$Trajectories[,2],lty=1)
abline(h=0,lty=1)
text(17,0.9,"c",cex=1.4)


}
