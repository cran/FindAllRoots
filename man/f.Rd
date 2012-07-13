\name{f}
\alias{f}

\title{
function returning one function value, or a vector of function values.
}
\description{
function returning one function value, or a vector of function values.
}
\usage{
f(x, a, b)
}

\arguments{
  \item{x}{
either one value or a vector containing the x-value(s)
}
  \item{a}{
vector of coefficients of the equation
}
  \item{b}{
vector of exponention of the equation,One one corresponding with a mentioned above
}
}
\details{
the function f that estimates the function values will be called as f(x, ...). If x is a vector, then the
first argument passed to f should also be a vector.

}
\value{
the value(s) of the function equation,one function value, or a vector of function values.
}
\author{
Bingpei Wu
}

\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.
a=c(2,-1,-13,-1,-5)
b=c(4:0)
x=c(1:3)
f(x,a,b)

## The function is currently defined as
function (x, a, b) 
{
    z = 0
    for (i in 1:length(b)) z = z + a[i] * x^(b[i])
    z
  }
}
