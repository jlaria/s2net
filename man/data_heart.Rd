\name{heart}
\alias{heart}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
Heart-disease dataset
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
A retrospective sample of males in a heart-disease high-risk region
of the Western Cape, South Africa. There are roughly two controls per
case of CHD. Many of the CHD positive men have undergone blood
pressure reduction treatment and other programs to reduce their risk
factors after their CHD event. In some cases the measurements were
made after these treatments. These data are taken from a larger
dataset, described in  Rousseauw et al, 1983, South African Medical
Journal. 
}
\usage{data("heart")}
\format{
A list with the following fields
\describe{
  \item{xL}{ data frame with the labeled (source) data}
  \item{yL}{ labels associated with \code{xL}}
  \item{xU}{ data frame with the unlabeled (target) data}
  \item{yU}{ labels associated with \code{xU} (for validation/testing)}
}

The included variables are the following
\describe{
\item{sbp}{		systolic blood pressure (response: \code{y = sqrt(sbp)})}
\item{tobacco}{ cumulative tobacco (kg)}
\item{ldl}{		low densiity lipoprotein cholesterol}
\item{adiposity}{}
\item{famhist}{		family history of heart disease (Present, Absent)}
\item{typea}{		type-A behavior}
\item{obesity}{}
\item{alcohol}{		current alcohol consumption}
\item{age}{		age at onset}
\item{chd}{		response, coronary heart disease}
}
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
The original dataset, from Hastie et. al. (2009) has been preprocessed for the semi-supervised setting as described by Ryan and Culp (2015).
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Hastie, T., Tibshirani, R., & Friedman, J. (2009). The elements of statistical learning: prediction, inference and data mining.\emph{Springer-Verlag}, New York.

\url{https://web.stanford.edu/~hastie/ElemStatLearn/datasets/SAheart.info.txt}
}
\references{
%%  ~~ possibly secondary sources and usages ~~
Ryan, K. J., & Culp, M. V. (2015). On semi-supervised linear regression in covariate shift problems. \emph{The Journal of Machine Learning Research, 16}(1), 3183-3217.

}
\examples{
data(heart)
head(heart$xL)
}
\keyword{datasets}
