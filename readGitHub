#' @title Read raw data files that are uploaded on GitHub
#'
#' @name readGitHub
#'
#' @description \code{readGitHub} allows one to read raw data from GitHub repositories
#'
#' @usage readGitHub(url, header = TRUE, fill = TRUE, stringAsFactors = FALSE, ...)
#'
#' @param \code{url} Character string containing the HTML url for the raw data. Supports the same file formats as \code{read.table}.
#' @param \code{header} Logical. Indicate whether header lines should be included. Default is \code{TRUE}.
#' @param \code{fill} Logical. Indicate whether blank fields in rows should be filled with "NA" values to insure that rows have equal length. Default is \code{TRUE}.
#' @param \code{stringsAsFactors}. Logical. Indicate whether character vectors should be automatically converted to factors. Default is \code{FALSE}.
#' @param \code{...} Further arguments that can be passed to the read.table family
#'
#' @details See documentation under ?read.table for specific information regarding data import.
#'
#' @seealso \code{read.table}, \code{connections}
#'
#' @example
#' # Load the Bumpus.csv data file from GitHub
#' FlowersData <- readGitHub("https://raw.githubusercontent.com/MorphoFun/tremors/master/dataraw/Baranzelli_etal_Flowers.csv", sep = ",")
#'
#' # Review the first 6 rows
#' head(FlowersData)


readGitHub <- function(url, header = TRUE, fill = TRUE, stringAsFactors = FALSE, ...) {
	store <- tempfile()
	download.file(url, destfile=store, method="curl")
	dd <- read.table(store, header = header, ...)
	return(dd)
}


