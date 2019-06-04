get_schedule = function(file_address){
  
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
  txt = unlist(strsplit(txt, "<div class=\"cs_box\" id=\"class_schedule\">"))[2]
  txt = unlist(strsplit(txt, "<div class=\"cs_box_footer\">"))[1]
  
  require(shiny)
  txt = HTML(txt)
  
  return(txt)
  
}

#Test Not Run
# file_address = "C:/Users/wanju/Desktop/get_schedule/UCSD_ My Tritonlink.html"
# get_schedule(file_address = file_address)



