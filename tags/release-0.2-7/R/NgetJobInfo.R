##
## XML-RPC method: getJobInfo()
##
NgetJobInfo <- function (obj, convert = TRUE) 
{
  if (!(class(obj) == "NeosJob")) {
    stop("\nObject 'obj' is not of class 'NeosJob'.\n")
  }
  call <- match.call()
  jobnumber <- obj@jobnumber
  password <- obj@password
  nc <- obj@nc
  ans <- xml.rpc(url = nc@url, method = "getJobInfo", .args = list(jobnumber = jobnumber, password = password), .convert = convert, .opts = nc@curlopts, .curl = nc@curlhandle)
  res <- new("NeosAns", ans = ans, method = "getJobInfo", call = call, nc = nc)
  return(res)
}
