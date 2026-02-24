test_that("cpue calculates simple ratio correctly", {
  expect_equal(cpue(50, 2), 25)
  expect_equal(cpue(100, 10), 10)
})

test_that("cpue calculates vectors correctly", {
  catches <- c(50, 100, 200)
  efforts <- c(2, 2, 2)
  expected <- c(25, 50, 100)
  expect_equal(cpue(catches, efforts), expected)
})

test_that("cpue returns numeric values", {
  expect_type(cpue(100, 10), "double")
})

test_that("gear_factor scales correctly", {
  expect_equal(
    cpue(100, 10),
    cpue(100, 10, 1)
  )
})
