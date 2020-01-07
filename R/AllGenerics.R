#' Summary.panda
#'
#' summarizes the results of a PANDA analysis
#'
#' @param object an object of class "panda"
#' @param ... further arguments passed to or from other methods.
#' @keywords keywords
#' @export
#' @return Summary description of panda S4 object
#' @examples
#' \donttest{
#' data(pandaToyData)
#' panda.res <- panda(pandaToyData$motif,
#'            pandaToyData$expression,pandaToyData$ppi,hamming=.001,progress=TRUE)
#' summary(panda.res)
#' }
#' data(pandaResult)
summary.panda <- function(object, ...){
    l <- list(coregNet=dim(object@coregNet),regNet=dim(object@regNet),coopNet=dim(object@coopNet))
    message("PANDA network for ", object@numGenes," genes and ", object@numTFs," transcription factors.")
}
#' print.panda
#'
#' summarizes the results of a PANDA analysis
#'
#' @param x an object of class "panda"
#' @param ... further arguments passed to or from other methods.
#' @keywords keywords
#' @export
#' @return Summary description of panda S4 object
#' @examples
#' \donttest{
#' data(pandaToyData)
#' panda.res <- panda(pandaToyData$motif,
#'            pandaToyData$expression,pandaToyData$ppi,hamming=.001,progress=TRUE)
#' print(panda.res)
#' }
#' data(pandaResult)
print.panda <- function(x, ...){
    l <- list(coregNet=dim(x@coregNet),regNet=dim(x@regNet),coopNet=dim(x@coopNet))
    message("PANDA network for", x@numGenes,"genes and", x@numTFs,"transcription factors.")
    message("\nSlots:")
    message(slotNames(x)[1],"\t: Regulatory network of ", x@numTFs," transcription factors to ", x@numGenes," genes.")
    message(slotNames(x)[2],": Co-regulation network of ", x@numGenes," genes.")
    message(slotNames(x)[3],"\t: Cooperative network of ", x@numTFs," transcription factors.\n")
    numEdges <- sum(x@regNet!=0)
    message("Regulatory graph contains ", x@numEdges," edges.")
    if (x@numEdges==x@numGenes*x@numTFs){
        message("Regulatory graph is complete.")
    } else {
        message("Regulatory graph is not complete.")
    }
}
