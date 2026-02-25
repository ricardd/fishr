## snapshot test
test_that("biomass_index errors when input is not numeric", {
  expect_snapshot(
    biomass_index("five", 10),
    error = TRUE
  )
})
