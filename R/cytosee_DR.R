##---------------------------------------------------------------------------------------------------
# dimemsion-reduce method
#' Reduce dimension of high dimension FCS data
#'
#' We apply dimension reduction to those matrix which has more than paramenters
#' \code{t-SNE},\code{largeVis} and \code{SOM} was used
#'
#' @param object cytosee object
#' @param n_core how many cores you want to use
#' @param sgd_batches input parameter for largeVis (refer largeVis for details)
#' @param tsne_pca whether use pca in tsne
#' @import  largeVis
#' @import  Rtsne
#' @export
#'
cytosee_reduce_dim <- function(data,n_core = NULL, sgd_batches = 0.5, tsne_pca=TRUE,method="PCA"){
    red_dim <-list()
    # run pca

    message("Run pca...")
    PCA=princomp(data,cor=TRUE)
    red_dim[["PCA"]]<-PCA

    if(method=="LargeVis"){
      # run largeVis to reduce the dimensions
      message("Run largeVis...")
      suppressMessages(vis <-largeVis(scale(t(data)),sgd_batches=0.8))
      red_dim[["largeVis"]]<-vis
    }

    else if(method=="t-SNE"){
      # run t-SNE to reduce the dimension
      message("Run t-SNE...")
      tsne2d <- Rtsne::Rtsne(data,dims=2, pca=tsne_pca, initial_dims=ncol(data))
      red_dim[["tsne2d"]]<-tsne2d
    }
    return(red_dim)
}



