\name{NsubmitJob}
\alias{NsubmitJob}
\title{
  XML-RPC method submitJob of Neos 
}
\description{
  This functions calls the XML-RPC method \dQuote{submitJob()} of NEOS and
  returns an object of class \code{NeosJob}. 
}
\usage{
NsubmitJob(xmlstring, user = "rneos", interface = "",
           id = 0, nc = CreateNeosComm())
}

\arguments{
  \item{xmlstring}{Character, the xml string according to the solver's
  template and filled withe the user's optimisation data.}    
  \item{user}{Character, the name of the user; for certain optimizers an
  email address is required.}
  \item{interface}{Character, the name of the interface.}
  \item{id}{Integer, an identifier for the submitted job.}  
  \item{nc}{Object of class \code{NeosComm}:
    By default, this argument is set by calling \code{CreateNeosComm()}
  and thereby using the default values of this function.}
}

\value{
  An object of class \code{NeosJob}.
}

\references{
  NEOS API: \url{https://neos-server.org/neos/xml-rpc.html}
}

\author{
  Bernhard Pfaff
}

\seealso{
  \code{\linkS4class{NeosJob}}, \code{\link{CreateXmlString}} and
  \code{\link{NgetSolverTemplate}}  
}

\keyword{IO}
