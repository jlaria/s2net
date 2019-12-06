\name{cookie}
\alias{cookie}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
cookie dataset
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
This data set contains measurements from quantitative NIR spectroscopy. The example studied
arises from an experiment done to test the feasibility of NIR spectroscopy to measure the composition of biscuit dough pieces (formed but unbaked biscuits). Two similar sample sets were made up, with the standard recipe varied to provide a large range for each of the four constituents under
investigation: fat, sucrose, dry flour, and water. The calculated percentages of these four ingredients
represent the 4 responses. There are 40 samples in the calibration or training set (with sample 23
being an outlier) and a further 32 samples in the separate prediction or validation set (with example
21 considered as an outlier).

An NIR reflectance spectrum is available for each dough piece. The spectral data consist of 700
points measured from 1100 to 2498 nanometers (nm) in steps of 2 nm.
}
\usage{data("cookie")}
\format{
A list with the source data (\code{xL, yL}) and the target data (\code{xU, yU}) preprocessed for the semi-supervised setting according to Ryan and Culp (2015).
}
%\details{
%%  ~~ If necessary, more details than the __description__ above ~~
%}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Package \code{seedCCA}
}
\references{
Ryan, K. J., & Culp, M. V. (2015). On semi-supervised linear regression in covariate shift problems. \emph{The Journal of Machine Learning Research, 16}(1), 3183-3217.

%%  ~~ possibly secondary sources and usages ~~
Please cite the following papers if you use this data set.

P.J. Brown, T. Fearn, and M. Vannucci (2001) Bayesian Wavelet Regression on Curves with Applications to a Spectroscopic Calibration Problem. Journal of the American Statistical Association,
96, pp. 398-408.

B.G. Osborne, T. Fearn, A.R. Miller, and S. Douglas (1984) Application of Near-Infrared Reflectance Spectroscopy to Compositional Analysis of Biscuits and Biscuit Dough. Journal of the
Science of Food and Agriculture, 35, pp. 99 - 105.
}
\examples{
data(cookie)
## maybe str(cookie) ; plot(cookie) ...
}
\keyword{datasets}
