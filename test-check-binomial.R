context("binomial")

#bin_choose
test_that("k is not greater than  n", {
  expect_error(bin_choose(10,15))
})
test_that("choose values are accurate", {
  expect_type(bin_choose, "closure")
  expect_equal(bin_choose(5, 0), 1)
})

#bin_probability
test_that("trials, prob, or success values are invalid", {
  expect_error(bin_probability(-3,0,5))
  expect_error(bin_probability(10,5,0.5))
})
test_that("probability values are accurate", {
  expect_equal(bin_probability(k = 2, n = 5, p = 0.5),0.3125)
  expect_type(bin_probability(k = 0:2, n = 5, p = 0.5), "double")
})

#bin_distribution
