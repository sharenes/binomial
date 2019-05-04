context("Checkers")

#check_prob
test_that("prob is a number between 0 and 1", {
  expect_true(check_prob(0))
  expect_true(check_prob(1/4))
  expect_true(check_prob(0.5))
  expect_true(check_prob(1))
})

test_that("prob is of length 1", {
  expect_true(length(check_prob(0.5)) == 1)
})

test_that("get an error if prob is invalid", {
  expect_error(check_prob(-0.25), "p must be a number between 0 and 1")
  expect_error(check_prob(2),"p must be a number between 0 and 1")
})

#check_trials
test_that("trial is an integer",{
  expect_true(check_trials(0))
  expect_true(check_trials(10))
  expect_true(check_trials(100))
})

test_that("trial is a non-negative number", {
  expect_true(check_trials(0))
  expect_true(check_trials(10))
  expect_true(check_trials(100))
})

test_that("get an error if trials is invalid", {
  expect_error(check_trials(-1))
  expect_error(check_trials(1.5))
})

#check_success
test_that("success works with vectors", {
  expect_true(check_success(10,0:10))
  expect_true(check_success(10,1:2))
})

test_that("check_success fails with negative numbers", {
  expect_error(check_success(10,-2))
})

test_that("check_success fails when k > n", {
  expect_error(check_success(10,15))
})