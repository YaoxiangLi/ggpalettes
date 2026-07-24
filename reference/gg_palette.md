# Retrieve a curated colour palette

Retrieve a curated colour palette

## Usage

``` r
gg_palette(
  name = "meadow",
  n = NULL,
  direction = 1,
  alpha = 1,
  space = c("Lab", "rgb")
)
```

## Arguments

- name:

  Palette name. See
  [`gg_palette_names()`](https://yaoxiangli.github.io/ggpalettes/reference/gg_palette_names.md).

- n:

  Number of colours to return. When `NULL`, returns the original
  anchors. Larger values are interpolated.

- direction:

  Palette direction: `1` for the original order or `-1` for the reversed
  order.

- alpha:

  Opacity between 0 and 1.

- space:

  Colour space used for interpolation: Lab or rgb.

## Value

A character vector of hexadecimal colour values.

## Examples

``` r
gg_palette("meadow")
#>  [1] "#176B67" "#E76F51" "#E9B949" "#3A7CA5" "#8C5E9E" "#67A35C" "#D65D8C"
#>  [8] "#4FA3A5" "#A65F38" "#697386"
gg_palette("ocean", n = 10)
#>  [1] "#06193D" "#0A2D58" "#0F4372" "#135B8A" "#1C759B" "#2F8FA8" "#47A9B0"
#>  [8] "#79BFB4" "#A6D4BB" "#D6E7C5"
gg_palette("ember", direction = -1, alpha = 0.8)
#> [1] "#F8DFA0CC" "#F2AD58CC" "#E2763ECC" "#BF4930CC" "#8B2924CC" "#56151BCC"
#> [7] "#2A0C13CC"
```
