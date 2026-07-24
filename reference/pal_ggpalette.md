# Create a palette function

This follows the palette-function pattern used by scientific palette
packages: the returned function accepts the number of colours needed.

## Usage

``` r
pal_ggpalette(
  name = "meadow",
  alpha = 1,
  reverse = FALSE,
  space = c("Lab", "rgb")
)
```

## Arguments

- name:

  Palette name.

- alpha:

  Opacity between 0 and 1.

- reverse:

  Reverse the palette.

- space:

  Interpolation colour space.

## Value

A function with one argument, `n`.

## Examples

``` r
pal <- pal_ggpalette("atelier")
pal(6)
#> [1] "#264653" "#D95D4F" "#2A9D8F" "#E9B44C" "#75658C" "#C44569"
```
