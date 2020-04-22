\name{xml.rpc}
\alias{xml.rpc}
\title{Invoke XML-RPC method from R}
\description{
 This function can be used to invoke a method provided by an XML-RPC
 (remote procedure call) server.
 It can pass R objects in the request by serializing them to XML format
 and also converts the result back to R.
}
\usage{
xml.rpc(url, method, ..., .args = list(...), .opts = list(),
        .defaultOpts = list(httpheader = c("Content-Type" = "text/xml"),
                            followlocation = TRUE,
                            useragent = useragent),
         .convert = TRUE, .curl = getCurlHandle(),
          useragent = "R-XMLRPC")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{url}{the URL of the XML-RPC server}
  \item{method}{a string giving the name of the XML-RPC method to invoke}
  \item{\dots}{a collection of argument valuesn}
  \item{.args}{an alternative way to specify the collection (list) of arguments}
  \item{.opts}{a list of options passed on to
    \code{\link[RCurl]{postForm}}. This is for the caller to specify
     server-specific curl options as opposed to general XML-RPC options
     which are set via \code{.defaultOpts}.
    }
  \item{.defaultOpts}{standard/default RCurl options used when making
    this call}
  \item{.convert}{either a logical value indicating whether to perform
    the defalt conversion (via \code{convertToR}) or not,
    or alternatively a function which  is called with a string
    giving the body of the HTTP response of the XML-RPC call.}
  \item{.curl}{a CURLHandle object that the caller can specify to allow
    reusing existing handles and connections. This can greatly improve
    efficiency.}
  \item{useragent}{the string identifying the application that is
    reported to the Web server as making the request.}
}

\value{
  If \code{.convert} is a logical value and \code{TRUE},  an R object
  giving the result of the XML-RPC method invocation. If \code{.convert}
  is \code{FALSE}, a string giving the body of the response.

  If \code{.convert} is a function, it is called with the body of the
  XML-RPC response as a string.
}
\references{\url{http://www.xmlrpc.com}
 \url{http://www.cafeconleche.org/books/xmljava/chapters/ch02s05.html}
  for a DTD for XML-RPC and examples and discussion.
}
\author{Duncan Temple Lang }

\seealso{
  \code{\link[RCurl]{postForm}}
  \code{\link[RCurl]{getURL}} and REST Web services
  \code{SSOAP} package.
}
\keyword{IO}
\keyword{programming}
