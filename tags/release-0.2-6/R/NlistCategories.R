##
## XML-RPC method: listCategories()
##
NlistCategories <- function(convert = TRUE, nc = CreateNeosComm()){
  if(!(class(nc) == "NeosComm")){
    stop("\nObject provided for 'nc' must be of class 'NeosComm'.\n")
  }
  call <- match.call()
  ans <- xml.rpc(url = nc@url, method = "listCategories", .convert = convert, .opts = nc@curlopts, .curl = nc@curlhandle)
  if(convert){
    ans <- paste(names(ans), as.character(ans), sep = ": ")
  }
  res <- new("NeosAns", ans = ans, method = "listCategories", call = call, nc = nc)
  return(res)
}
