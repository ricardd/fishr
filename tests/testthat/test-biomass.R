## snapshot test
test_that("biomass_index errors when input is not numeric", {
  expect_snapshot(
    biomass_index("five", 10),
    error = TRUE
  )
})

test_that("biomass_index uses verbosity when set as an option", {
  withr::local_options(fishr.verbose = TRUE)

  expect_snapshot(biomass_index(cpue = 5, area_swept = 100))
})

test_that("biomass_index verbosity falls back to FALSE when not set", {
  withr::local_options(fishr.verbose = NULL)

  expect_no_message(biomass_index(cpue = 5, area_swept = 100))
})
