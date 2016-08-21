skip_on_cran()
skip_on_travis()

library(rtweet)

context("search_tweets")

n <- 3
x <- search_tweets("twitter", n = n, lang = "en", verbose = FALSE)

test_that("search_tweets returns tweets data", {
  expect_equal(is.data.frame(x), TRUE)
  expect_named(x)
  expect_true("status_id" %in% names(x))
})

test_that(paste0("tweets data contains ", n, " rows and > 23 columns"), {
  expect_equal(nrow(x), n)
  expect_gt(ncol(x), 23)
})

test_that("search_tweets object contains users attribute", {
  expect_true("users" %in% names(attributes(x)))
  expect_true(is.data.frame(attr(x, "users")))
  expect_true(is.data.frame(users_data(x)))
})

test_that(paste0("users data contains > 0 rows and > 15 columns"), {
  expect_gt(nrow(users_data(x)), 0)
  expect_gt(ncol(users_data(x)), 15)
  expect_named(users_data(x))
})