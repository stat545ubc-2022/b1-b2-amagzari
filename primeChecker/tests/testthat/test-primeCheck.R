test_that("Basic testing", {
  # 97 is a prime number, hence the function returns TRUE
  expect_equal(primeCheck(97), TRUE)
  # 24 is not a prime number, hence the function returns FALSE
  expect_equal(primeCheck(24), FALSE)
  # c(12,25) is not a single number, hence we stumble upon an error
  expect_error(primeCheck(c(12,25)))
  # "3" is non-numeric, hence we stumble upon an error
  expect_error(primeCheck("3"))
})
