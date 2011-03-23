\name{IDM}

\alias{IDM}

\title{Infinite-dimensional model (IDM)}

\description{A function to calculate infinite-dimensional model (IDM) elements as implemented by Kirkpatrick et al. (1990).}

\usage{IDM(P, age)}

\arguments{
  \item{P}{Covariance matrix for sizes-at-ages.}
  \item{age}{A numeric vector of ages at which sizes were measured. Ages must be positive valuies given in an ascending order.}
}
\value{The function returns a list of eigenvalues, eigenvectors, growth trajectories (each trajectory is given as a column in the trajectory matrix), and percentages of variation accounted for by each growth trajectory.
}

\details{The IDM model detects alternative patterns of growth (i.e. shapes of the growth trajectory) present in a population, as well as the amounts of phenotypic variation accounted for by each of the growth patterns, by decomposing a covariance matrix of size over a set of ages. For further detailes about the model formualtion and its use, see Kirkpatrick et al. (1990) and Kuparinen and Björklund (in press).}

\references{
Kirkpatrick M, Lofsvold D, Bulmer M (1990) Analysis of the inheritance, selection and evolution of growth trajectories. Genetics 124:979-993.

Kuparinen A, Björklund M (2011) Theory put into practice: an R implementation of the infinite-dimensional model. Ecological Modelling (in press).
}

\author{Anna Kuparinen and Mats Björklund}

\seealso{\code{\link{IDM.bootCI}}.}

\examples{

#This example utilizes data given in Kirkpatrick et al. (1990). 
myage=c(2,3,4)
myP=matrix(c(436.0,522.3,424.2,522.3,808.0,664.7,424.2,664.7,558.0),nrow=3,ncol=3,byrow=TRUE)

out=IDM(P=myP,age=myage)

#Growth patterns (i.e. trajectories) 
out$Trajectories

#Proportions of variation accounted for by each growth trajectory
out$Percent.trajectory

}