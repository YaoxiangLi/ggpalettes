# ggplot2 colour and fill scales using ggpalettes

When `discrete` is `NULL`, categorical palettes use a discrete scale and
sequential/diverging palettes use a continuous gradient.

## Usage

``` r
scale_colour_ggpalette(
  name = "meadow",
  discrete = NULL,
  binned = FALSE,
  alpha = 1,
  direction = 1,
  space = c("Lab", "rgb"),
  ...
)

scale_color_ggpalette(
  name = "meadow",
  discrete = NULL,
  binned = FALSE,
  alpha = 1,
  direction = 1,
  space = c("Lab", "rgb"),
  ...
)

scale_fill_ggpalette(
  name = "meadow",
  discrete = NULL,
  binned = FALSE,
  alpha = 1,
  direction = 1,
  space = c("Lab", "rgb"),
  ...
)
```

## Arguments

- name:

  Palette name.

- discrete:

  Use a discrete scale. `NULL` selects from palette type.

- binned:

  Use a binned continuous scale.

- alpha:

  Opacity between 0 and 1.

- direction:

  Palette direction: 1 or -1.

- space:

  Interpolation colour space.

- ...:

  Additional arguments passed to the ggplot2 scale.

## Value

A ggplot2 scale object.

## Examples

``` r
library(ggplot2)
ggplot(iris, aes(Sepal.Length, Sepal.Width, colour = Species)) +
  geom_point(size = 2) +
  scale_colour_ggpalette("meadow")
```
