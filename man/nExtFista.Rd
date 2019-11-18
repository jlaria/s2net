\name{nExtFista}
\alias{nExtFista}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Hyper-parameter wrapper for FISTA.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This is a very simple function that supplies the hyper-parameters for the Fast Iterative Soft-Threshold Algorithm (FISTA) that solves the \code{nExtJT} minimization problem.
}
\usage{
nExtFista(MAX_ITER_INNER = 5000, TOL = 1e-07, t0 = 2, step = 0.1, use_warmstart = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{MAX_ITER_INNER}{
%%     ~~Describe \code{MAX_ITER_INNER} here~~
Number of iterations of FISTA
}
  \item{TOL}{
%%     ~~Describe \code{TOL} here~~
The relative tolerance. The algorith stops when the objective does not improve more than \code{TOL*}the null model's objective function evaluation, after two succesive iterations. 
}
  \item{t0}{
%%     ~~Describe \code{t0} here~~
The initial stepsize for backtracking.
}
  \item{step}{
%%     ~~Describe \code{step} here~~
The scale factor in the stepsize to backtrack until a valid step is found.
}
  \item{use_warmstart}{
%%     ~~Describe \code{use_warmstart} here~~
Should we use a warm \code{beta} to fit the model? This is useful to speed-up hyper-parameter searching methods.
}
}
%%\details{
%%  ~~ If necessary, more details than the description above ~~
%%}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
Returns an object of S3 class \code{nExtFista} with the input arguments as fields.
}
\references{
%% ~put references to the literature/web site here ~
Beck, A., & Teboulle, M. (2009). 
A fast iterative shrinkage-thresholding algorithm for linear inverse problems. \emph{SIAM journal on imaging sciences}, 2(1), 183-202. \doi{10.1137/080716542}
}
%%\author{
%%  ~~who you are~~
%%}
%%\note{
%%  ~~further notes~~
%%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{nExtParams}}, \code{\link{nExtData}}
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (MAX_ITER_INNER = 5000, TOL = 1e-07, t0 = 2, step = 0.1, 
    use_warmstart = FALSE) 
{
    nExtF = list(MAX_ITER_INNER = MAX_ITER_INNER, TOL = TOL, 
        t0 = t0, step = step, use_warmstart = use_warmstart)
    class(nExtF) = "nExtFista"
    return(nExtF)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{optimize}% use one of  RShowDoc("KEYWORDS")