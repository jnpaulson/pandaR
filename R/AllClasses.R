# Class definition
#' @exportClass pandaObj
#' @export pandaObj
#' 
pandaObj <- setClass("pandaObj", slots=c("regNet","coregNet","coopNet","numGenes","numTFs","numEdges"))
setMethod("show","pandaObj",function(object){print.panda(object)})
