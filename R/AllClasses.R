# Class definition
#' @exportClass pandaObj
#' @export pandaObj
#' 
pandaObj <- setClass("panda", slots=c("regNet","coregNet","coopNet","numGenes","numTFs","numEdges"))
setMethod("show","panda",function(object){print.panda(object)})
