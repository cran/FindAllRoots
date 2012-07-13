\name{allroots}
\alias{allroots}

\title{
Find all roots of the equation,including complex roots.
}
\description{
find all roots of the equation,including complex roots
}
\usage{
allroots(a, b)
}

\arguments{
  \item{a}{
vector of coefficients of the equation
}
  \item{b}{
vector of exponention of the equation,One one corresponding with a mentioned above
}
}
\details{
a should be one one corresponding with b,or there might lead to wrong results
}
\value{
all roots of the equation,including complex roots.Besides,the inaccuracy error of the roots is also given
}
\references{
a passage about finding all roots,whose author is Dequan Shang
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
allroots(a,b)

## The function is currently defined as
function (a, b) 
{
    a1 = a
    b1 = b
    n = length(b) - 1
    a = a/a[1]
    b = matrix(0, ncol = n, nrow = n)
    for (i in 1:(n - 1)) b[i, i + 1] = 1
    for (i in 1:n) b[n, i] = -a[n + 2 - i]
    c = eigen(b)
    print(c$values)
    print("inaccuracy error")
    print(f(c$values, a1, b1))
  }
}

