get_name = function(file_address){
  
  glue = function(string, collapse = ""){
    if(length(string) <= 1){
      return(string)
    }else{
      res = character()
      for(s in string){
        res = paste(res, s, collapse = collapse)
      }
      return(res)
    }
  }
  
  suppressWarnings({
    txt = readLines(file_address)
  })
  
  txt = glue(txt)
  txt = unlist(strsplit(txt, "<div id=\"tdr_login\">"))[2]
  txt = unlist(strsplit(txt, "Log Out"))[1]
  txt = unlist(strsplit(txt, "<strong>"))[2]
  txt = unlist(strsplit(txt, "</strong>"))[1]
  
  return(txt)
  
}

#Test Not Run
# file_address = "C:/Users/wanju/Desktop/get_schedule/UCSD_ My Tritonlink.html"
# get_name(file_address = file_address)