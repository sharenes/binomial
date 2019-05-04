context("Summary Measures")

#aux_mean
test_that("mean values are accurate", {
  expect_equal(aux_mean(10, 0.3), 3)
  expect_error(aux_mean(-0.5))
  expect_type(aux_mean, "closure")
})

#aux_variance
test_that("variance values are accurate", {
  expect_equal(aux_variance(10, 0.3), 2.1)
  expect_error(aux_variance(-0.5))
  expect_type(aux_variance, "closure")
})

#aux_mode
test_that("mode values are accurate", {
  expect_equal(aux_mode(10, 0.3), 3)
  expect_error(aux_mode(-0.5))
  expect_type(aux_mode, "closure")
})

#aux_skewness
test_that("skewness values are accurate", {
  expect_equal(aux_skewness(10, 0.3), 0.2760262)
  expect_error(aux_skewness(50, 1/4, 10))
  expect_type(aux_mean, "closure")
})

#aux_kurtosis
test_that("kurtosis values are accurate", {
  expect_equal(aux_kurtosis(10, 0.3), 0.2760262)
  expect_error(aux_kurtosis(50, 1/4, 10))
  expect_type(aux_mean, "closure")
})