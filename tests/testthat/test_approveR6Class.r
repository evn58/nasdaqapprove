library(nasdaqapprove)

test_that("check default fields approve class", {
  ap <- nasdaqapprove::approve$new()
  expect_equal(ap$result, NA)
  expect_equal(ap$message, NA)
  expect_equal(ap$conflict_fields, NA)
})
