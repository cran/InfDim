\name{InfDim-package}
\alias{InfDim-package}
\alias{InfDim}
\docType{package}
\title{Infine-dimensional model (IDM) to analyse phenotypic variation in growth trajectories.
}
\description{This package contains functions to perform calculations of the infine-dimensional model (IDM) and to produce confidence intervals around the model elements via bootstrapping.  
}
\details{
\tabular{ll}{
Package: \tab InfDim\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-03-23\cr
License: \tab GPL (>= 2)\cr
LazyLoad: \tab yes\cr
}
The package contains two mains functions, IDM and IDM.bootCI. The former calculates IDM elements based on data on ages at which growth trajectory has been evaluated and covariances of the sizes at ages. The latter functions requires raw growth data as an input and, in addition to IDM elements, produces CIs around them via bootstrap sampling.
}
\author{Anna Kuparinen and Mats Björklund
Maintainer: Anna Kuparinen (anna.kuparinen@gmail.com)
}
\references{
Kirkpatrick M, Lofsvold D, Bulmer M (1990) Analysis of the inheritance, selection and evolution of growth trajectories. Genetics 124:979-993.

Kuparinen A, Björklund M (2011) Theory put into practice: an R implementation of the infinite-dimensional model. Ecological Modelling (in press).
}
\seealso{\code{\link{IDM}}, \code{\link{IDM.bootCI}}}
\keyword{function valued trait, IDM, infinite-dimensional model, growth}
