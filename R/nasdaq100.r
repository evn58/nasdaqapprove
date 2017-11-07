nasdaq100 <- R6Class(
  "nasdaq100",
  inherit = security_factory,

  public = list(

    approve = function() {
      list(
        is_non_financial_company = self$is_non_financial_company(),
        is_market_capitalization = self$is_market_capitalization(),
        is_bankruptcy_proceeding = self$is_bankruptcy_proceeding(),
        is_daily_volume = self$is_daily_volume()
      )
    },

    is_non_financial_company = function() {
      T
    },

    is_market_capitalization = function() {
      T
    },

    is_bankruptcy_proceeding = function() {
      F
    },

    is_daily_volume = function() {
      if (private$required$..required_daily_volume < super$daily_volume()) {
        return(
          approval_message(FALSE, "Volume error")
        )
      }
      approval_message(T, NULL)
    }
  ),

  private = list(
    required = list(
      ..required_daily_volume = 500
    )
  )
)


approval_message = function(result, message, conflict_fields) {
  list(
    result = result,
    message = message
  )
}
