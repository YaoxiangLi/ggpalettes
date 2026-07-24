test_that("palette catalogue is stable and usable", {
  expect_true(all(c("aurora", "clinical", "contrast") %in% gg_palette_names()))
  expect_length(gg_palette("aurora"), 5)
  expect_match(gg_palette("aurora")[[1]], "^#[0-9A-F]{6}$")
})

test_that("palettes interpolate and reverse", {
  expect_length(gg_palette("ocean", n = 12), 12)
  expect_identical(
    gg_palette("ember", direction = -1),
    rev(gg_palette("ember"))
  )
})

test_that("invalid palette requests fail clearly", {
  expect_error(gg_palette("missing"), "must be one of")
  expect_error(gg_palette("aurora", n = 0), "positive whole")
  expect_error(gg_palette("aurora", n = 2.5), "positive whole")
  expect_error(gg_palette("aurora", direction = 0), "either 1 or -1")
})

test_that("ggplot2 scales support discrete and continuous data", {
  expect_s3_class(scale_colour_ggpalette("clinical"), "ScaleDiscrete")
  expect_s3_class(
    scale_color_ggpalette("ocean", discrete = FALSE),
    "ScaleContinuous"
  )
  expect_s3_class(scale_fill_ggpalette("contrast"), "ScaleDiscrete")
})
