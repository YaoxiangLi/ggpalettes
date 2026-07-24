# Named ggpalettes scales

Every palette has `scale_color_*()`, `scale_colour_*()`, and
`scale_fill_*()` forms. Categorical palettes default to discrete scales;
sequential and diverging palettes default to continuous scales.

## Usage

``` r
scale_colour_meadow(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_meadow(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_meadow(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_atelier(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_atelier(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_atelier(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_clinical(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_clinical(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_clinical(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_spectrum(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_spectrum(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_spectrum(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_pastel(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_pastel(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_pastel(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_earth(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_earth(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_earth(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_midnight(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_midnight(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_midnight(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_floral(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_floral(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_floral(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_coastal(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_coastal(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_coastal(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_harvest(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_harvest(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_harvest(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_aurora(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_aurora(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_aurora(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_ocean(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_ocean(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_ocean(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_ember(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_ember(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_ember(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_forest(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_forest(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_forest(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_orchid(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_orchid(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_orchid(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_slate(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_slate(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_slate(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_sunrise(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_sunrise(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_sunrise(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_glacier(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_glacier(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_glacier(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_berry(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_berry(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_berry(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_sand(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_sand(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_sand(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_balance(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_balance(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_balance(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_temperature(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_temperature(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_temperature(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_earthsky(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_earthsky(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_earthsky(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_rosepine(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_rosepine(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_rosepine(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_lagoon(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_lagoon(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_lagoon(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_colour_violetgold(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_color_violetgold(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)

scale_fill_violetgold(
  alpha = 1,
  reverse = FALSE,
  discrete = NULL,
  binned = FALSE,
  ...
)
```

## Arguments

- alpha:

  Opacity between 0 and 1.

- reverse:

  Reverse the palette.

- discrete:

  Use a discrete scale. `NULL` selects from palette type.

- binned:

  Use a binned continuous scale.

- ...:

  Additional arguments passed to the ggplot2 scale.

## Value

A ggplot2 scale object.
