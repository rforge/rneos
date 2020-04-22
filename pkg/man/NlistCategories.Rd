\name{NlistCategories}
\alias{NlistCategories}
\title{
  XML-RPC method listCategories of Neos 
}
\description{
  This functions calls the XML-RPC method \dQuote{listCategories()} of
  NEOS and returns an object of class \code{NeosAns}; a dictionary with
  entries ('abbreviated name':'full name',...). 
}
\usage{
NlistCategories(convert = TRUE, nc = CreateNeosComm())
}

\arguments{
  \item{convert}{Logical, if \code{convert = TRUE} (the default) the
    value of the returned XML-RPC result is extracted and returned as
    character, otherwise the XML-RPC string is returned.}
  \item{nc}{Object of class \code{NeosComm}:
    By default, this argument is set by calling \code{CreateNeosComm()}
  and thereby using the default values of this function.}
}

\value{
  An object of class \code{NeosAns}.
}

\references{
  NEOS API: \url{https://neos-server.org/neos/xml-rpc.html}
}

\author{
  Bernhard Pfaff
}

\seealso{
  \code{\linkS4class{NeosAns}} and \code{\link{CreateNeosComm}} 
}

\examples{
\dontrun{

NlistCategories()
}
}
\keyword{IO}
