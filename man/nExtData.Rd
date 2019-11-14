\name{nExtData}
\alias{nExtData}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Data wrapper for \code{nExtJT}.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function preprocess the data to fit a semi-supervised linear joint trained model.
}
\usage{
nExtData(xL, yL, xU = NULL, preprocess = T)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{xL}{
%%     ~~Describe \code{xL} here~~
  The labeled data. Could be a \code{matrix} or \code{data.frame}. 
}
  \item{yL}{
%%     ~~Describe \code{yL} here~~
  The labels associated with \code{xL}. Could be a \code{vector}, \code{matrix} or \code{data.frame}, of \code{factor} or \code{numeric} types.
}
  \item{xU}{
%%     ~~Describe \code{xU} here~~
The unlabeled data (optional). Could be a \code{matrix} or \code{data.frame}. 
}
  \item{preprocess}{
%%     ~~Describe \code{preprocess} here~~
Should the input data be pre-processed? Possible values are: 

\code{TRUE}{ (default) The data is converted to a matrix. Factor variables are automatically coded using \code{\link{model.matrix}}. The data is scaled, and constant columns are removed.}

\code{FALSE}{ Do nothing. Keep in mind that the theoretical framework assumes that \code{xL} is centered. Unless you are absolutely sure, avoid this.}

Another object of class \code{nExtData} that was obtained from similar data (same original variables). This is useful when using train/validation sets, to apply the validation data the same transformation as train data. 
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
Returns an object of S3 class \code{nExtData} with fields

\item{xL }{Transformed labeled data}
\item{yL }{Transformed labels. If \code{yL} was a factor, it is converted to numeric, and the base category is kept in \code{base}}
\item{xU }{Tranformed unlabeled data} 
\item{type }{Type of task. This one is inferred from the response labels.}
\item{base }{Base category for classification \code{0 = base}}

In addition the following attributes are stored.

\item{pr:rm_cols }{logical vector of removed columns}
\item{pr:center }{column center}
\item{pr:scale }{column scale}
}
%%\references{
%% ~put references to the literature/web site here ~
%%}
\author{
%%  ~~who you are~~
Juan C. Laria
}
%%\note{
%%  ~~further notes~~
%%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{nExtFista}}
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~preprocess }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~data }% __ONLY ONE__ keyword per line
