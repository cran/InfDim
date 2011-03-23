\name{psii}
\alias{psii}
\title{A generic function to produce a matrix of Legendre polynomials for IDM calculation 
}
\description{The function creates an n times n matrix, each row of the matrix replicating Legendre polynomials for the corresponding value 
of the re-scaled age vector the length of which is n. This function is a subfunction of \code{\link{IDM}}.
}
\usage{
psii(adjusted_age)
}
\arguments{
  \item{adjusted_age}{The vector of ages scaled to range from -1 to 1.
}
}
\details{For further details, see Kirkpatrick et al. 1990.
}
\value{A n times n matrix of Legendre polynomials, value replicated at each row being the polynomials at the corresponding age.
}
\references{Kirkpatrick M, Lofsvold D, Bulmer M (1990) Analysis of the inheritance, selection and evolution of growth trajectories. Genetics 124:979-993.
}
\author{Anna Kuparinen and Mats Björklund
}

\seealso{\code{\link{IDM}}, \code{\link{IDM.bootCI}}}
\examples{

# The function is defined as
function(adjusted_age){
n=length(adjusted_age)

adjust_temp=rep(adjusted_age,each=n)
j_temp=rep(0:(n-1),n)

psii_elements=rep(NA,n*n)
for(i in 1:(n*n)){
psii_elements[i]=p.function(j=j_temp[i],x=adjust_temp[i])
  }
psii_temp=matrix(psii_elements,byrow=T,nrow=n,ncol=n)
return(psii_temp)
  }
}
