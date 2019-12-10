\name{nExtJT-package}
\alias{nExtJT}
\docType{package}
\title{\packageTitle{nExtJT}}
\description{ 
\if{html}{\figure{nExtJT.png}{options: width=200 align='right'}}
  \packageDescription{nExtJT}
}
\details{
  The DESCRIPTION file: \packageDESCRIPTION{nExtJT}
  \packageIndices{nExtJT}

  This package includes a very easy-to-use interface for handling data, with the \code{\link{nExtData}} function. The main function of the package is the \code{\link{nExtJTR}} function, which is a wrapper for the \code{\link{Rcpp_nExtJT}} (\code{nExtJT}) class. 
  }
\author{
  \packageAuthor{nExtJT}
}
\references{
Laria, J.C., L. Clemmensen (2019). A generalized linear joint trained framework for semi-supervised learning of sparse features.

Sogaard Larsen, J. et. al. (2019).  Semi-supervised covariate shift modelling of spectroscopic data.

Ryan, K. J., & Culp, M. V. (2015). On semi-supervised linear regression in covariate shift problems. \emph{The Journal of Machine Learning Research, 16}(1), 3183-3217.
}
% Optionally other standard keywords, one per line,
% from the file KEYWORDS in the R documentation.
\keyword{package}
\seealso{
  \code{\link{nExtData}},
  \code{\link{nExtJTR}},
  \code{\link{Rcpp_nExtJT}}
}
\examples{
data("auto_mpg")
train = nExtData(xL = auto_mpg$P1$xL, yL = auto_mpg$P1$yL,  xU = auto_mpg$P1$xU)

model = nExtJTR(train, 
                nExtParams(lambda1 = 0.1, 
                           lambda2 = 0,
                           gamma1 = 0.1,
                           gamma2 = 100,
                           gamma3 = 0.1))

# here we tell it to transform the valid data as we did with train.
valid = nExtData(auto_mpg$P1$xU, auto_mpg$P1$yU, preprocess = train) 
ypred = predict(model, valid$xL)

\dontrun{
if(require(ggplot2)){
  ggplot() + 
    aes(x = ypred, y = valid$yL) + geom_point() + 
    geom_abline(intercept = 0, slope = 1, linetype = 2)
}
}
}
