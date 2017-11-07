#library(R6)
#' Class providing object with methods for nasdaq security approve result
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords data
#' @return Object of \code{\link{R6Class}} with methods for nasdaq security approve result
#' @format \code{\link{R6Class}} object.
#' @examples
#' approve_message$new()
#' @section Fields:
#' @field none
#' @field none
approve_message <- R6Class(
  classname = "approve_message",

  public = list(),

  private = list(
    ..result = NA,
    ..message = NA,
    ..conflict_fields = NA

  ),
  active = list(

    result = function(value) {
      if (missing(value)) {
        private$..result
      } else {
        private$..result <- value
      }
    },

    message = function(value) {
      if (missing(value)) {
        private$..message
      } else {
        private$..message <- value
      }
    },

    conflict_fields = function(value) {
      if (missing(value)) {
        private$..conflict_fields
      } else {
        private$..conflict_fields <- value
      }
    }
  )
)
