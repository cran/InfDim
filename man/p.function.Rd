\name{p.function}
\alias{p.function}
\title{A generic function to calculate Legendre polynomials
}
\description{The function calculates the value of j:th normalized Legendre polynomial at x. This function is a subfunction of \code{\link{IDM}}.
}
\usage{
p.function(j, x)
}
\arguments{
  \item{j}{an integer giving the rank of the polynomial
}
  \item{x}{numeric value between -1 and 1
}
}
\references{Kirkpatrick M, Lofsvold D, Bulmer M (1990) Analysis of the inheritance, selection and evolution of growth trajectories. Genetics 124:979-993.
}
\author{Anna Kuparinen and Mats Björklund
}
\seealso{\code{\link{IDM}}, \code{\link{IDM.bootCI}}}
\examples{
# The function is currently defined as
function(j,x){

temp1=1/(2^j)*sqrt((2*j+1)/2)
jj=floor(j/2)

temp2=0
for(i in 0:jj){
temp2b=(-1)^i*factorial(j)/(factorial(i)*factorial(j-i))*factorial(2*j-2*i)/(factorial(j)*factorial(2*j-2*i-j))*x^(j-2*i)
temp2=temp2+temp2b
  }
return(temp1*temp2)
  }
}
