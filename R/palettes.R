# Internal palette catalogue.
.ggpalettes <- list(
  aurora = c("#27346A", "#4361A6", "#4DA9A4", "#A7D46F", "#F7E967"),
  ember = c("#3B0F0C", "#8C2D1C", "#D75A2A", "#F5A544", "#FFE08A"),
  ocean = c("#081D58", "#225EA8", "#1D91C0", "#41B6C4", "#C7E9B4"),
  orchid = c("#351C4D", "#68478D", "#A06AB4", "#D49AC5", "#F1D4DF"),
  forest = c("#173F35", "#287D59", "#57A773", "#9BCF8A", "#E3E9A8"),
  slate = c("#232A35", "#49576B", "#7C8DA6", "#B6C1CE", "#EEF1F4"),
  clinical = c("#2B6CB0", "#38A169", "#D69E2E", "#C53030", "#805AD5",
               "#319795", "#DD6B20", "#718096"),
  contrast = c("#0072B2", "#E69F00", "#009E73", "#CC79A7", "#D55E00",
               "#56B4E9", "#F0E442", "#000000")
)

#' List available ggpalettes palettes
#'
#' @return A character vector containing the available palette names.
#' @export
#' @examples
#' gg_palette_names()
gg_palette_names <- function() {
  names(.ggpalettes)
}

#' Retrieve a curated colour palette
#'
#' @param name Palette name. See [gg_palette_names()].
#' @param n Number of colours to return. When `NULL`, returns the original
#'   palette. Values larger than the original palette are interpolated.
#' @param direction Palette direction: `1` for the original order or `-1` for
#'   the reversed order.
#' @param space Colour space used when interpolation is required. One of
#'   `"Lab"` or `"rgb"`.
#'
#' @return A character vector of hexadecimal colour values.
#' @export
#' @examples
#' gg_palette("aurora")
#' gg_palette("ocean", n = 10)
#' gg_palette("ember", direction = -1)
gg_palette <- function(name = "aurora", n = NULL, direction = 1,
                       space = c("Lab", "rgb")) {
  if (!is.character(name) || length(name) != 1L || is.na(name) ||
      !name %in% names(.ggpalettes)) {
    stop(
      sprintf(
        "`name` must be one of: %s.",
        paste(names(.ggpalettes), collapse = ", ")
      ),
      call. = FALSE
    )
  }

  if (!is.numeric(direction) || length(direction) != 1L ||
      is.na(direction) || !direction %in% c(-1, 1)) {
    stop("`direction` must be either 1 or -1.", call. = FALSE)
  }

  space <- match.arg(space)
  colours <- .ggpalettes[[name]]
  if (direction == -1) {
    colours <- rev(colours)
  }

  if (is.null(n)) {
    return(colours)
  }
  if (!is.numeric(n) || length(n) != 1L || is.na(n) ||
      !is.finite(n) || n < 1 || n != as.integer(n)) {
    stop("`n` must be a positive whole number or `NULL`.", call. = FALSE)
  }

  if (n <= length(colours)) {
    return(colours[seq_len(n)])
  }

  grDevices::colorRampPalette(colours, space = space)(n)
}

#' ggplot2 colour and fill scales using ggpalettes
#'
#' @param name Palette name. See [gg_palette_names()].
#' @param discrete Whether to construct a discrete scale. Set to `FALSE` for a
#'   continuous gradient.
#' @param direction Palette direction: `1` or `-1`.
#' @param ... Additional arguments passed to the underlying `ggplot2` scale.
#'
#' @return A `ggplot2` scale object.
#' @export
#' @examples
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, Sepal.Width, colour = Species)) +
#'   geom_point(size = 2) +
#'   scale_colour_ggpalette("clinical")
scale_colour_ggpalette <- function(name = "aurora", discrete = TRUE,
                                   direction = 1, ...) {
  colours <- gg_palette(name, n = 256, direction = direction)
  if (isTRUE(discrete)) {
    ggplot2::discrete_scale(
      aesthetics = "colour",
      palette = function(n) colours[seq_len(n)],
      ...
    )
  } else {
    ggplot2::scale_colour_gradientn(colours = colours, ...)
  }
}

#' @rdname scale_colour_ggpalette
#' @export
scale_color_ggpalette <- scale_colour_ggpalette

#' @rdname scale_colour_ggpalette
#' @export
scale_fill_ggpalette <- function(name = "aurora", discrete = TRUE,
                                 direction = 1, ...) {
  colours <- gg_palette(name, n = 256, direction = direction)
  if (isTRUE(discrete)) {
    ggplot2::discrete_scale(
      aesthetics = "fill",
      palette = function(n) colours[seq_len(n)],
      ...
    )
  } else {
    ggplot2::scale_fill_gradientn(colours = colours, ...)
  }
}
