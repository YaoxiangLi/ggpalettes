# Check palette separation and background contrast

This diagnostic summarizes perceptual separation in CIE Lab space and
WCAG-style contrast against a selected background. It is a screening
tool, not a guarantee of accessibility in every plot.

## Usage

``` r
gg_palette_check(name = "meadow", n = NULL, background = "#FFFFFF")
```

## Arguments

- name:

  Palette name.

- n:

  Number of colours to evaluate.

- background:

  Background colour.

## Value

A `gg_palette_check` object.

## Examples

``` r
gg_palette_check("meadow")
#> <gg_palette_check meadow: 10 colours, type=categorical>
#>   minimum Lab distance: 18.7
#>   minimum contrast on #FFFFFF: 1.83
```
