test_that("the catalogue contains all three palette families", {
  expect_length(gg_palette_names(), 26L)
  expect_length(gg_palette_names("categorical"), 10L)
  expect_length(gg_palette_names("sequential"), 10L)
  expect_length(gg_palette_names("diverging"), 6L)

  info <- gg_palette_info()
  expect_s3_class(info, "data.frame")
  expect_named(info, c("name", "type", "colours", "description"))
  expect_setequal(info$type, c("categorical", "sequential", "diverging"))
})

test_that("palette vectors are valid and support interpolation", {
  for (name in gg_palette_names()) {
    colours <- gg_palette(name)
    expect_true(all(grepl("^#[0-9A-F]{6}$", colours)))
    expect_length(gg_palette(name, n = 17L), 17L)
    expect_identical(
      gg_palette(name, direction = -1),
      rev(gg_palette(name))
    )
  }

  transparent <- gg_palette("meadow", alpha = 0.5)
  expect_length(transparent, 10L)
  expect_true(all(grepl("^#[0-9A-F]{8}$", transparent)))
})

test_that("palette functions follow the ggsci-style interface", {
  expect_length(pal_ggpalette("atelier")(7L), 7L)
  expect_length(pal_meadow()(6L), 6L)
  expect_length(pal_aurora()(20L), 20L)
  expect_identical(
    pal_meadow(reverse = TRUE)(5L),
    gg_palette("meadow", n = 5L, direction = -1)
  )
})

test_that("generic scales select sensible defaults from palette type", {
  expect_s3_class(scale_colour_ggpalette("meadow"), "ScaleDiscrete")
  expect_s3_class(scale_fill_ggpalette("ember"), "ScaleContinuous")
  expect_s3_class(scale_color_ggpalette("balance"), "ScaleContinuous")
  expect_s3_class(scale_fill_balance(binned = TRUE), "ScaleBinned")
  expect_s3_class(scale_color_meadow(), "ScaleDiscrete")
})

test_that("all named palette and scale helpers are exported", {
  for (name in gg_palette_names()) {
    expect_true(is.function(getExportedValue("ggpalettes", paste0("pal_", name))))
    expect_true(is.function(
      getExportedValue("ggpalettes", paste0("scale_colour_", name))
    ))
    expect_true(is.function(
      getExportedValue("ggpalettes", paste0("scale_color_", name))
    ))
    expect_true(is.function(
      getExportedValue("ggpalettes", paste0("scale_fill_", name))
    ))
  }
})

test_that("catalogue plots and diagnostics provide useful objects", {
  expect_s3_class(gg_palette_plot(type = "diverging"), "ggplot")

  check <- gg_palette_check("clinical")
  expect_s3_class(check, "gg_palette_check")
  expect_true(is.finite(check$minimum_lab_distance))
  expect_true(check$minimum_lab_distance > 0)
  expect_true(is.finite(check$minimum_background_contrast))
  expect_named(check$detail, c("colour", "background_contrast"))
})

test_that("invalid inputs fail clearly", {
  expect_error(gg_palette("missing"), "must be one of")
  expect_error(gg_palette("meadow", n = 0), "positive whole")
  expect_error(gg_palette("meadow", direction = 0), "either 1 or -1")
  expect_error(gg_palette("meadow", alpha = 2), "between 0 and 1")
  expect_error(pal_meadow(reverse = NA), "TRUE or FALSE")
  expect_error(
    scale_fill_ggpalette("meadow", discrete = TRUE, binned = TRUE),
    "cannot be TRUE"
  )
})
