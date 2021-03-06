\name{NgetIntermediateResults}
\alias{NgetIntermediateResults}
\title{
  XML-RPC method getIntermediateResults of Neos 
}
\description{
  This functions calls the XML-RPC method \dQuote{getIntermediateResults()} of
  NEOS, which returns intermediate results of a job submitted to NEOS,
  starting at the character offset up to the last received
  data. Intermediate results are usually the standard output of the
  solver daemon. If the job is still running, then this function will
  hang until another packet of output is sent to NEOS or the job is
  finished. This function will return a tuple of thebase-64 encoded
  object and the new offset (object, newoffset). The offset refers to
  uncoded characters.  
}
\usage{
NgetIntermediateResults(obj, offset = NULL, convert = TRUE)
}

\arguments{
  \item{obj}{NeosJob, an object of class \code{NeosJob} as returned by
  the function \code{NsubmitJob}.}
  \item{offset}{Integer, the offset from which on the results are
  returned. In a first run this is set to \code{integer(0)}.}
  \item{convert}{Logical, if \code{convert = TRUE} (the default) the
    value of the returned XML-RPC result is extracted and returned as
    character, otherwise the XML-RPC string is returned (base-64 encoded).}
}

\value{
  An object of class \code{NeosOff}.
}

\references{
  NEOS API: \url{https://neos-server.org/neos/xml-rpc.html}
}

\author{
  Bernhard Pfaff
}

\seealso{
  \code{\linkS4class{NeosOff}} and \code{\link{NsubmitJob}}
}

\examples{
\dontrun{

tmp <-NgetSolverTemplate(category = "go", solvername = "ASA",
inputMethod = "AMPL")
## setting path to example model and data file
modf <- system.file("ExAMPL", "diet.mod", package = "rneos")
datf <- system.file("ExAMPL", "diet.dat", package = "rneos")
## import of file contents
modc <- paste(paste(readLines(modf), collapse = "\n"), "\n")
datc <- paste(paste(readLines(datf), collapse = "\n"), "\n")
## create list object
argslist <- list(model = modc, data = datc, commands = "",
comments = "")
## create XML string
xmls <- CreateXmlString(neosxml = tmp, cdatalist = argslist)
test <- NsubmitJob(xmlstring = xmls, user = "rneos", interface = "",
id = 0)
NgetIntermediateResults(obj = test, convert = TRUE)
}
}

\keyword{IO}
