.named_palette <- function(name) {
  force(name)
  function(alpha = 1, reverse = FALSE) {
    pal_ggpalette(name, alpha = alpha, reverse = reverse)
  }
}

.named_scale <- function(name, aesthetic) {
  force(name)
  force(aesthetic)
  function(alpha = 1, reverse = FALSE, discrete = NULL,
           binned = FALSE, ...) {
    if (!is.logical(reverse) || length(reverse) != 1L || is.na(reverse)) {
      stop("`reverse` must be TRUE or FALSE.", call. = FALSE)
    }
    direction <- if (isTRUE(reverse)) -1 else 1
    if (identical(aesthetic, "colour")) {
      scale_colour_ggpalette(
        name,
        discrete = discrete,
        binned = binned,
        alpha = alpha,
        direction = direction,
        ...
      )
    } else {
      scale_fill_ggpalette(
        name,
        discrete = discrete,
        binned = binned,
        alpha = alpha,
        direction = direction,
        ...
      )
    }
  }
}

#' Named ggpalettes palette functions
#'
#' These convenience functions follow the `pal_*()` interface popularized by
#' scientific palette packages.
#'
#' @param alpha Opacity between 0 and 1.
#' @param reverse Reverse the palette.
#' @return A function accepting the requested number of colours.
#' @name named_palettes
NULL

#' @rdname named_palettes
#' @export
pal_meadow <- .named_palette("meadow")
#' @rdname named_palettes
#' @export
pal_atelier <- .named_palette("atelier")
#' @rdname named_palettes
#' @export
pal_clinical <- .named_palette("clinical")
#' @rdname named_palettes
#' @export
pal_spectrum <- .named_palette("spectrum")
#' @rdname named_palettes
#' @export
pal_pastel <- .named_palette("pastel")
#' @rdname named_palettes
#' @export
pal_earth <- .named_palette("earth")
#' @rdname named_palettes
#' @export
pal_midnight <- .named_palette("midnight")
#' @rdname named_palettes
#' @export
pal_floral <- .named_palette("floral")
#' @rdname named_palettes
#' @export
pal_coastal <- .named_palette("coastal")
#' @rdname named_palettes
#' @export
pal_harvest <- .named_palette("harvest")
#' @rdname named_palettes
#' @export
pal_aurora <- .named_palette("aurora")
#' @rdname named_palettes
#' @export
pal_ocean <- .named_palette("ocean")
#' @rdname named_palettes
#' @export
pal_ember <- .named_palette("ember")
#' @rdname named_palettes
#' @export
pal_forest <- .named_palette("forest")
#' @rdname named_palettes
#' @export
pal_orchid <- .named_palette("orchid")
#' @rdname named_palettes
#' @export
pal_slate <- .named_palette("slate")
#' @rdname named_palettes
#' @export
pal_sunrise <- .named_palette("sunrise")
#' @rdname named_palettes
#' @export
pal_glacier <- .named_palette("glacier")
#' @rdname named_palettes
#' @export
pal_berry <- .named_palette("berry")
#' @rdname named_palettes
#' @export
pal_sand <- .named_palette("sand")
#' @rdname named_palettes
#' @export
pal_balance <- .named_palette("balance")
#' @rdname named_palettes
#' @export
pal_temperature <- .named_palette("temperature")
#' @rdname named_palettes
#' @export
pal_earthsky <- .named_palette("earthsky")
#' @rdname named_palettes
#' @export
pal_rosepine <- .named_palette("rosepine")
#' @rdname named_palettes
#' @export
pal_lagoon <- .named_palette("lagoon")
#' @rdname named_palettes
#' @export
pal_violetgold <- .named_palette("violetgold")

#' Named ggpalettes scales
#'
#' Every palette has `scale_color_*()`, `scale_colour_*()`, and
#' `scale_fill_*()` forms. Categorical palettes default to discrete scales;
#' sequential and diverging palettes default to continuous scales.
#'
#' @param alpha Opacity between 0 and 1.
#' @param reverse Reverse the palette.
#' @param discrete Use a discrete scale. `NULL` selects from palette type.
#' @param binned Use a binned continuous scale.
#' @param ... Additional arguments passed to the ggplot2 scale.
#' @return A ggplot2 scale object.
#' @name named_scales
NULL

#' @rdname named_scales
#' @export
scale_colour_meadow <- .named_scale("meadow", "colour")
#' @rdname named_scales
#' @export
scale_color_meadow <- scale_colour_meadow
#' @rdname named_scales
#' @export
scale_fill_meadow <- .named_scale("meadow", "fill")

#' @rdname named_scales
#' @export
scale_colour_atelier <- .named_scale("atelier", "colour")
#' @rdname named_scales
#' @export
scale_color_atelier <- scale_colour_atelier
#' @rdname named_scales
#' @export
scale_fill_atelier <- .named_scale("atelier", "fill")

#' @rdname named_scales
#' @export
scale_colour_clinical <- .named_scale("clinical", "colour")
#' @rdname named_scales
#' @export
scale_color_clinical <- scale_colour_clinical
#' @rdname named_scales
#' @export
scale_fill_clinical <- .named_scale("clinical", "fill")

#' @rdname named_scales
#' @export
scale_colour_spectrum <- .named_scale("spectrum", "colour")
#' @rdname named_scales
#' @export
scale_color_spectrum <- scale_colour_spectrum
#' @rdname named_scales
#' @export
scale_fill_spectrum <- .named_scale("spectrum", "fill")

#' @rdname named_scales
#' @export
scale_colour_pastel <- .named_scale("pastel", "colour")
#' @rdname named_scales
#' @export
scale_color_pastel <- scale_colour_pastel
#' @rdname named_scales
#' @export
scale_fill_pastel <- .named_scale("pastel", "fill")

#' @rdname named_scales
#' @export
scale_colour_earth <- .named_scale("earth", "colour")
#' @rdname named_scales
#' @export
scale_color_earth <- scale_colour_earth
#' @rdname named_scales
#' @export
scale_fill_earth <- .named_scale("earth", "fill")

#' @rdname named_scales
#' @export
scale_colour_midnight <- .named_scale("midnight", "colour")
#' @rdname named_scales
#' @export
scale_color_midnight <- scale_colour_midnight
#' @rdname named_scales
#' @export
scale_fill_midnight <- .named_scale("midnight", "fill")

#' @rdname named_scales
#' @export
scale_colour_floral <- .named_scale("floral", "colour")
#' @rdname named_scales
#' @export
scale_color_floral <- scale_colour_floral
#' @rdname named_scales
#' @export
scale_fill_floral <- .named_scale("floral", "fill")

#' @rdname named_scales
#' @export
scale_colour_coastal <- .named_scale("coastal", "colour")
#' @rdname named_scales
#' @export
scale_color_coastal <- scale_colour_coastal
#' @rdname named_scales
#' @export
scale_fill_coastal <- .named_scale("coastal", "fill")

#' @rdname named_scales
#' @export
scale_colour_harvest <- .named_scale("harvest", "colour")
#' @rdname named_scales
#' @export
scale_color_harvest <- scale_colour_harvest
#' @rdname named_scales
#' @export
scale_fill_harvest <- .named_scale("harvest", "fill")

#' @rdname named_scales
#' @export
scale_colour_aurora <- .named_scale("aurora", "colour")
#' @rdname named_scales
#' @export
scale_color_aurora <- scale_colour_aurora
#' @rdname named_scales
#' @export
scale_fill_aurora <- .named_scale("aurora", "fill")

#' @rdname named_scales
#' @export
scale_colour_ocean <- .named_scale("ocean", "colour")
#' @rdname named_scales
#' @export
scale_color_ocean <- scale_colour_ocean
#' @rdname named_scales
#' @export
scale_fill_ocean <- .named_scale("ocean", "fill")

#' @rdname named_scales
#' @export
scale_colour_ember <- .named_scale("ember", "colour")
#' @rdname named_scales
#' @export
scale_color_ember <- scale_colour_ember
#' @rdname named_scales
#' @export
scale_fill_ember <- .named_scale("ember", "fill")

#' @rdname named_scales
#' @export
scale_colour_forest <- .named_scale("forest", "colour")
#' @rdname named_scales
#' @export
scale_color_forest <- scale_colour_forest
#' @rdname named_scales
#' @export
scale_fill_forest <- .named_scale("forest", "fill")

#' @rdname named_scales
#' @export
scale_colour_orchid <- .named_scale("orchid", "colour")
#' @rdname named_scales
#' @export
scale_color_orchid <- scale_colour_orchid
#' @rdname named_scales
#' @export
scale_fill_orchid <- .named_scale("orchid", "fill")

#' @rdname named_scales
#' @export
scale_colour_slate <- .named_scale("slate", "colour")
#' @rdname named_scales
#' @export
scale_color_slate <- scale_colour_slate
#' @rdname named_scales
#' @export
scale_fill_slate <- .named_scale("slate", "fill")

#' @rdname named_scales
#' @export
scale_colour_sunrise <- .named_scale("sunrise", "colour")
#' @rdname named_scales
#' @export
scale_color_sunrise <- scale_colour_sunrise
#' @rdname named_scales
#' @export
scale_fill_sunrise <- .named_scale("sunrise", "fill")

#' @rdname named_scales
#' @export
scale_colour_glacier <- .named_scale("glacier", "colour")
#' @rdname named_scales
#' @export
scale_color_glacier <- scale_colour_glacier
#' @rdname named_scales
#' @export
scale_fill_glacier <- .named_scale("glacier", "fill")

#' @rdname named_scales
#' @export
scale_colour_berry <- .named_scale("berry", "colour")
#' @rdname named_scales
#' @export
scale_color_berry <- scale_colour_berry
#' @rdname named_scales
#' @export
scale_fill_berry <- .named_scale("berry", "fill")

#' @rdname named_scales
#' @export
scale_colour_sand <- .named_scale("sand", "colour")
#' @rdname named_scales
#' @export
scale_color_sand <- scale_colour_sand
#' @rdname named_scales
#' @export
scale_fill_sand <- .named_scale("sand", "fill")

#' @rdname named_scales
#' @export
scale_colour_balance <- .named_scale("balance", "colour")
#' @rdname named_scales
#' @export
scale_color_balance <- scale_colour_balance
#' @rdname named_scales
#' @export
scale_fill_balance <- .named_scale("balance", "fill")

#' @rdname named_scales
#' @export
scale_colour_temperature <- .named_scale("temperature", "colour")
#' @rdname named_scales
#' @export
scale_color_temperature <- scale_colour_temperature
#' @rdname named_scales
#' @export
scale_fill_temperature <- .named_scale("temperature", "fill")

#' @rdname named_scales
#' @export
scale_colour_earthsky <- .named_scale("earthsky", "colour")
#' @rdname named_scales
#' @export
scale_color_earthsky <- scale_colour_earthsky
#' @rdname named_scales
#' @export
scale_fill_earthsky <- .named_scale("earthsky", "fill")

#' @rdname named_scales
#' @export
scale_colour_rosepine <- .named_scale("rosepine", "colour")
#' @rdname named_scales
#' @export
scale_color_rosepine <- scale_colour_rosepine
#' @rdname named_scales
#' @export
scale_fill_rosepine <- .named_scale("rosepine", "fill")

#' @rdname named_scales
#' @export
scale_colour_lagoon <- .named_scale("lagoon", "colour")
#' @rdname named_scales
#' @export
scale_color_lagoon <- scale_colour_lagoon
#' @rdname named_scales
#' @export
scale_fill_lagoon <- .named_scale("lagoon", "fill")

#' @rdname named_scales
#' @export
scale_colour_violetgold <- .named_scale("violetgold", "colour")
#' @rdname named_scales
#' @export
scale_color_violetgold <- scale_colour_violetgold
#' @rdname named_scales
#' @export
scale_fill_violetgold <- .named_scale("violetgold", "fill")
