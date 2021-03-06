#' HiCRep pipeline calculates reproducibility of Hi-C intrachromosome data
#'
#' The pipelne is a two-step method. The first step is to smooth the Hi-C 
#' matrix, and the #' second step is to calculate the stratum-adjusted 
#' correlation coefficient (scc). The method also provides the estimation
#' of asymptotic standard deviation of scc.
#'
#' @details
#' \itemize{
#'   \item{Package:    }{hicrep}
#'   \item{Type:    }{Package}
#'   \item{Version:    }{0.99.6}
#'   \item{Date:    }{2017-2-5}
#'   \item{License:    }{GPL-2}
#'   \item{LazyLoad:    }{Yes}
#' }
#'
#' The main functions are \code{\link{get.scc}} and
#' \code{\link{htrain}}. The function \code{\link{get.scc}} computes
#' scc and its asymptotic standard deviation, and the function 
#' \code{\link{htrain}} estimates optimal smoothing neighborhood
#' size from the input matrices.
#' @author
#' Tao Yang
#' Maintainer: Tao Yang <xadmyangt@gmail.com>
#' @references
#' HiCRep: assessing the reproducibility of Hi-C data using a 
#' stratum-adjusted correlation coefficient. Tao Yang, Feipeng Zhang, Galip
#' Gurkan Yardimci, Fan Song, Ross C Hardison, William Stafford Noble, 
#' Feng Yue, Qunhua Li. Genome Research 2017. doi: 10.1101/gr.220640.117
#' @examples
#' data(HiCR1)
#' data(HiCR2)
#'
#' #Estimate the optimial smoothing neighborhood size parameter
#' h_hat <- htrain(HiCR1, HiCR2, 1000000, 0, 5000000, 0:2)
#'
#' scc.out <- get.scc(HiCR1, HiCR2, 1000000, 0)
#' scc.out$scc
#' scc.out$std


"_PACKAGE"
