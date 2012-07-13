\name{FindAllRoots-package}
\alias{FindAllRoots-package}
\alias{FindAllRoots}
\docType{package}
\title{
Find all root(s) of the equation and Find root(s) of the equation by dichotomy 
}
\description{
Find all root(s) of the equation,including complex roots;Find root(s) of the equation by dichotomy 
}
\details{
\tabular{ll}{
Package: \tab FindAllRoots\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-07-13\cr
License: \tab GPL (>= 2)\cr
}

}
\author{
Bingpei Wu & Jiajun He & Sijie Chen & Yangyang Liu

Maintainer: Bingpei Wu<jianpeizhon@126.com>
}
\references{
a passage about finding all roots,whose author is Dequan Shang
a passage about finding root(s) of equation ,whose author is Yong Ling
}

\keyword{ package }

\examples{
a=c(2,-1,-13,-1,-5)
b=c(4:0)
x1=c(1:10)
x2=c(2:11)
allroots(a,b)
dichotomy(x1,x2,a,b)
}
