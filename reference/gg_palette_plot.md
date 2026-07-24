# Plot a palette catalogue

Plot a palette catalogue

## Usage

``` r
gg_palette_plot(names = NULL, type = c("all", .palette_types), n = 12L)
```

## Arguments

- names:

  Optional palette names. Defaults to the selected type.

- type:

  Palette type used when `names` is `NULL`.

- n:

  Number of swatches per palette.

## Value

A ggplot object.

## Examples

``` r
gg_palette_plot(type = "diverging", n = 9)
```
