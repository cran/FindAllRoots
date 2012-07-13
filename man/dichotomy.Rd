\name{dichotomy}
\alias{dichotomy}
\title{
Find root(s) of the equation by dichotomy
}
\description{
Find root(s) of the equation by dichotomy.Besides,in dichotomy, more than one interval can be given at a time.
}
\usage{
dichotomy(x1, x2, a, b, pert = 10^(-5), n = 1000, s = 0.1)
}

\arguments{
  \item{x1}{
vector of left end point of interval(s)
}
  \item{x2}{
vector of right end point of interval(s)
}
  \item{a}{
vector of coefficients of the equation
}
  \item{b}{
vector of exponention of the equation,One one corresponding with a mentioned above
}
  \item{pert}{
precision of root(s)
}
  \item{n}{
the algorithm runs n times at most in one interval and NA will be returned
}
  \item{s}{
assuming x0 is midpoint of interval [a,b].If f(x0)*f(a)>0 and f(x0)*f(b)>0,b will minus s.
}
}
\details{
If you want to find root(s) of the equation in [a1,b1],[a2,b2],```,[an,bn],x1 should be c(a1,a2,```,an) and x2 should be c(b1,b2,```,bn).
If there is no root in [a1,b1],but there is a root in [min(a1,b1-n*s),max(a1,b1-n*s)] ,the algorithm can still find the root.So the returned root may not in [an,bn] that you give but must be in [min(a1,b1-n*s),max(a1,b1-n*s)]. 
}
\value{
the root(s) of the equation that the difference between returned root(s) and the real root(s) of the equation is less than 10e-6 
}
\references{
a passage about finding root(s) of equation ,whose author is Yong Ling
}
\author{Bingpei Wu
}

\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.
a=c(2,-1,-13,-1,-5)
b=c(4:0)
x1=c(1:10)
x2=c(2:11)
dichotomy(x1,x2,a,b)

## The function is currently defined as
function (x1, x2, a, b, pert = 10^(-5), n = 1000, s = 0.1) 
{
    x0 = rep(NA, length(x1))
    for (i in 1:length(x1)) {
        if (f(x1[i], a, b) == 0) 
            x0[i] = x1[i]
        if (f(x2[i], a, b) == 0) 
            x0[i] = x2[i]
        if (f(x1[i], a, b) != 0 & f(x2[i], a, b) != 0) {
            x0[i] = (x1[i] + x2[i])/2
            k = 1
            while ((abs(f(x0[i], a, b)) >= pert) & (k < n)) {
                if (f(x0[i], a, b) == 0) 
                  break
                if (f(x1[i], a, b) * f(x0[i], a, b) < 0) 
                  x2[i] = x0[i]
                if (f(x2[i], a, b) * f(x0[i], a, b) < 0) 
                  x1[i] = x0[i]
                if (x1[i] != x0[i] & x2[i] != x0[i]) 
                  x2[i] = x2[i] - s
                x0[i] = (x1[i] + x2[i])/2
                k = k + 1
                if (k == 1000) 
                  x0[i] = NA
            }
        }
    }
    x0
  }
}
