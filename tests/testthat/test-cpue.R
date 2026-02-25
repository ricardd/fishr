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

test_that("cpue handles missing data", {
  expect_true(is.na(cpue(NA_real_, 10)))
  expect_true(is.na(cpue(10, NA_real_)))
})

test_that("cpue works with generated data", {
  data <- generate_fishing_data(5)

  result <- cpue(data$catch, data$effort)

  expect_equal(
    result,
    c(4.99, 266.79, 56.94, 23.1, 40.09),
    tolerance = 0.1
  )
})

test_that("cpue matches reference data", {
  result <- cpue(reference_data$catch, reference_data$effort)
  expect_equal(result, reference_data$expected_cpue)
})

test_that("cpue verbose returns a message", {
  expect_message(cpue(
    reference_data$catch,
    reference_data$effort,
    verbose = TRUE
  ))
})
