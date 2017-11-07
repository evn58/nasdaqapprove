# --------------------------------------------------------------
#
# NASDAQ-100 INDEX METHODOLOGY
#
# The NASDAQ-100 Index® includes 100 of the largest non-financial companies
# listed on The Nasdaq Stock #Market®, based on market capitalization. It does
# not contain securities of financial companies including #investment companies.
# The NASDAQ-100 Index provides a transparent, rules-based benchmark for
# institutional investors and is calculated as Price Return, Total Return and
# Notional Net Total Return in multiple currencies.

# --------------------------------------------------------------
# SECURITY ELIGIBILITY
# --------------------------------------------------------------

# --------------------------------------------------------------
#
#  LISTINGS
#
# The issuer of the security’s primary U.S. listing must be exclusively listed
# on the Nasdaq Global Select Market or the Nasdaq Global Market  unless the
# security was dually listed on another U.S. market prior to January 1, 2004
# and has continuously maintained such listing
#
# For inclusion in the Index, an Index Security must be listed exclusively on
# the Nasdaq Global Select Market or Nasdaq Global Market (unless the security
# was dually listed on another U.S. market prior to January 1, 2004 and has
# continuously maintained such listing).
.is_listed_on_nasdaq_global <- function(security) {
  T
}


.is_listed_prior_2004 <- function(security) {
  T
}

# --------------------------------------------------------------
#
# SECURITY TYPES
#
# Security types generally eligible for the Index include common stocks,
# ordinary shares, ADRs, and tracking stocks.Security or company types not
# included in the Index are closed-end funds, convertible debentures, exchange
# traded funds, limited liability companies, limited partnership interests,
# preferred stocks, rights, shares or units of beneficial interest, warrants,
# units and other derivative securities. The Index does not contain securities of
# investment companies.

# a security must be issued by a non-financial company
.is_non_financial_company <- function(security) {
  T
}

# --------------------------------------------------------------
#
# MARKET CAPITALIZATION
#
# There is no minimum market capitalization requirement. Inclusion will be
# determined based on the top 100 largest issuers based on market capitalization
# meeting all other eligibility requirements. Market capitalization is determined
# by multiplying a security’s Last Sale Price3 by itstotal shares outstanding.
.is_market_capitalization <- function(security) {
  T
}


# --------------------------------------------------------------
# a security may not be issued by an issuer currently in bankruptcy proceedings
.is_bankruptcy_proceeding <- function(security) {
  F
}

# --------------------------------------------------------------
#
# LIQUIDITY
#
# a security must have average daily trading volume of at least # 200,000
# shares (measured annually during the Ranking Review process);
.is_daily_volume <- function(security, required_volume = 500 ) {

  if (security$daily_volume < required_volume)
  {
    return(F)
  }
  T
}

# --------------------------------------------------------------
# if the issuer of the security is organized under the laws of a jurisdiction
# outside the U.S., then such security must have listed options on a recognized
# options market in the U.S. or be eligible for listed-options trading on a
# recognized options market in the U.S. (measured annually during the Ranking
# Review process);
.is_jurisdiction_outside <- function(security) {
  T
}

.is_listed_options <- function(security) {
  T
}

.is_eligible_listed_options_trading <- function(security) {
  T
}

# the issuer of the security may not have entered into a definitive agreement
# or other arrangement which would likely result in the security no longer
# being Index eligible;
.is_have_agreement <- function(security) {
  T
}

# the issuer of the security may not have annual financial statements
# with an audit opinion that is currently withdrawn;
.is_have_annual_financial_statements <- function(security) {
  T
}

# --------------------------------------------------------------
#
# SECURITY SEASONING CRITERIA
#
# the security must have “seasoned” on Nasdaq, NYSE or NYSE Amex.
# Generally, a company is considered to be seasoned if it has been
# listed on a market for at least three full months (excluding the
# first month of initial listing).
.is_seasoned <- function(security) {
  T
}
