#library(R6)
#library(assertive.types)

#' Class providing object with methods for nasdaq security listed approve
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords data
#' @return Object of \code{\link{R6Class}} with methods for nasdaq security listed approve
#' @format \code{\link{R6Class}} object.
#' @examples
#' security_factory$new("list(code = "AAPL")")
#' @section Fields:
#' @field code character
#' @field daily_volume numeric
#' @field listed_exchange list
#' @field start_listed_date date
#' @field company_sector charachter
#' @field market_capitalization numeric
#' @field is_bankruptcy_proceeding bool
#' @field jurisdiction list
#' @field listed_options list
#' @field listed_options_trading list
#' @field agreements list
#' @field financial_statements list
#' @field seasoned list
#' @section Methods:
#' \describe{
#'   \item{Documentation}{For full documentation of each method go to https://github.com/}
#'   \item{\code{new(security)}}{This method is used to create object of this class with \code{security} as list of the security options.}
#'
#'   \item{\code{sethost(serveraddress)}}{This method changes server that you are contacting with to \code{serveraddress}}
#'   }

nasdaq_security <- R6Class(
  "nasdaq_security",
  public = list(

    # constructor
    initialize = function(security = NA) {
      if (missing(security)) {
        stop("missing security object")
      }
      private$..code <- security$code
      private$..daily_volume <- security$daily_volume
      private$..listed_exchange <- security$listed_exchange
      private$..start_listed_date <- security$start_listed_date
      private$..company_sector <- security$company_sector
    }
  ),

  #get/set methods
  active = list(
    is_listed_on_nasdaq_global = function(value) {
      if (missing(value)) {
        private$..is_listed_on_nasdaq_global
      } else {
        private$..is_listed_on_nasdaq_global <- value
      }
    },

    code = function(value) {
      if (missing(value)) {
        private$..code
      } else {
        private$..code <- value
      }
    },

    daily_volume = function(value) {
      if (missing(value)) {
        private$..daily_volume
      } else {
        private$..daily_volume <- value
      }
    },

    listed_exchange = function(value) {
      if (missing(value)) {
        private$..listed_exchange
      } else {
        private$..listed_exchange <- value
      }
    },

    start_listed_date = function(value) {
      if (missing(value)) {
        private$..start_listed_date
      } else {
        private$..start_listed_date <- value
      }
    },

    company_sector = function(value) {
      if (missing(value)) {
        private$..company_sector
      } else {
        private$..company_sector <- value
      }
    }
  ),

  # privates fields
  private = list(
    ..code = NA,
    ..daily_volume = NA,
    ..listed_exchange = NA ,
    ..start_listed_date = NA,
    ..company_sector = NA,
    ..market_capitalization = NA,
    ..is_bankruptcy_proceeding = NA,
    ..jurisdiction = NA,
    ..listed_options = NA,
    ..listed_options_trading = NA,
    ..agreements = NA,
    ..financial_statements = NA,
    ..seasoned = NA
  )
)
