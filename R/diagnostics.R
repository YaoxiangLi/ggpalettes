#' @importFrom rlang .data
#' @noRd
NULL

.relative_luminance <- function(colours) {
  rgb <- t(grDevices::col2rgb(colours)) / 255
  linear <- ifelse(
    rgb <= 0.04045,
    rgb / 12.92,
    ((rgb + 0.055) / 1.055)^2.4
  )
  as.numeric(linear %*% c(0.2126, 0.7152, 0.0722))
}

#' Check palette separation and background contrast
#'
#' This diagnostic summarizes perceptual separation in CIE Lab space and
#' WCAG-style contrast against a selected background. It is a screening tool,
#' not a guarantee of accessibility in every plot.
#'
#' @param name Palette name.
#' @param n Number of colours to evaluate.
#' @param background Background colour.
#' @return A `gg_palette_check` object.
#' @export
#' @examples
#' gg_palette_check("meadow")
gg_palette_check <- function(name = "meadow", n = NULL,
                             background = "#FFFFFF") {
  name <- .validate_palette_name(name)
  if (is.null(n)) {
    n <- length(.ggpalettes[[name]]$colours)
  }
  colours <- gg_palette(name, n = n)
  background <- tryCatch({
    background_rgb <- grDevices::col2rgb(background)
    grDevices::rgb(
      background_rgb[1L, ],
      background_rgb[2L, ],
      background_rgb[3L, ],
      maxColorValue = 255
    )
  },
    error = function(error) {
      stop("`background` must be a valid R colour.", call. = FALSE)
    }
  )
  if (length(background) != 1L) {
    stop("`background` must be one colour.", call. = FALSE)
  }
  rgb <- t(grDevices::col2rgb(colours)) / 255
  lab <- grDevices::convertColor(rgb, from = "sRGB", to = "Lab")
  distances <- stats::dist(lab)
  foreground_luminance <- .relative_luminance(colours)
  background_luminance <- .relative_luminance(background)
  contrast <- (
    pmax(foreground_luminance, background_luminance) + 0.05
  ) / (
    pmin(foreground_luminance, background_luminance) + 0.05
  )
  structure(
    list(
      name = name,
      type = .ggpalettes[[name]]$type,
      colours = colours,
      minimum_lab_distance = if (length(distances)) min(distances) else NA_real_,
      median_lab_distance = if (length(distances)) stats::median(distances) else NA_real_,
      minimum_background_contrast = min(contrast),
      background = background,
      detail = data.frame(
        colour = colours,
        background_contrast = contrast,
        stringsAsFactors = FALSE
      )
    ),
    class = "gg_palette_check"
  )
}

#' @export
print.gg_palette_check <- function(x, ...) {
  cat(sprintf(
    "<gg_palette_check %s: %s colours, type=%s>\n",
    x$name, length(x$colours), x$type
  ))
  cat(sprintf(
    "  minimum Lab distance: %.1f\n  minimum contrast on %s: %.2f\n",
    x$minimum_lab_distance,
    x$background,
    x$minimum_background_contrast
  ))
  invisible(x)
}

#' Plot a palette catalogue
#'
#' @param names Optional palette names. Defaults to the selected type.
#' @param type Palette type used when `names` is `NULL`.
#' @param n Number of swatches per palette.
#' @return A ggplot object.
#' @export
#' @examples
#' gg_palette_plot(type = "diverging", n = 9)
gg_palette_plot <- function(names = NULL,
                            type = c("all", .palette_types),
                            n = 12L) {
  if (is.null(names)) {
    names <- gg_palette_names(type)
  } else {
    gg_palette_info(names)
  }
  if (!is.numeric(n) || length(n) != 1L || is.na(n) ||
      !is.finite(n) || n < 1 || n != as.integer(n)) {
    stop("`n` must be a positive whole number.", call. = FALSE)
  }
  n <- as.integer(n)
  swatches <- do.call(rbind, lapply(names, function(name) {
    data.frame(
      palette = name,
      index = seq_len(n),
      colour = gg_palette(name, n = n),
      stringsAsFactors = FALSE
    )
  }))
  swatches$palette <- factor(swatches$palette, levels = rev(names))
  ggplot2::ggplot(
    swatches,
    ggplot2::aes(x = .data$index, y = .data$palette, fill = .data$colour)
  ) +
    ggplot2::geom_tile(width = 1, height = 0.76) +
    ggplot2::scale_fill_identity() +
    ggplot2::scale_x_continuous(expand = c(0, 0)) +
    ggplot2::labs(x = NULL, y = NULL) +
    ggplot2::theme_minimal(base_size = 11) +
    ggplot2::theme(
      panel.grid = ggplot2::element_blank(),
      axis.text.x = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_blank()
    )
}
