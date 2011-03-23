\name{adjust}
\alias{adjust}
\title{A generic function to scale the values of a vector between -1 and 1. This function is a subfunction of \code{\link{IDM}}.
}
\description{A generic function to scale the values of a vector between -1 and 1. The function is used in the IDM calculation, to scale a vector of ages at which size has been measured. 
}
\usage{
adjust(age)
}
\arguments{
  \item{age}{A numeric vector containing ages to be scaled between -1 and 1.
}
}
\references{Kirkpatrick M, Lofsvold D, Bulmer M (1990) Analysis of the inheritance, selection and evolution of growth trajectories. Genetics 124:979-993.
}
\author{Anna Kuparinen and Mats Björklund
}
\seealso{\code{\link{IDM}}, \code{\link{IDM.bootCI}}}

\examples{
# The function is currently defined as
function(age){
u=-1
v=1
n=length(age)
amin=min(age)
amax=max(age)

temp=u+(v-u)/(amax-amin)*(age-amin)
return(temp)
  }
}
