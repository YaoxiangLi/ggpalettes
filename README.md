# ggpalettes

`ggpalettes` provides curated colour palettes and native colour/fill scales for
`ggplot2`. The palettes are designed for scientific figures, dashboards, and
the broader [ggcraft](https://github.com/YaoxiangLi/ggcraft) ecosystem.

## Installation

```r
# install.packages("pak")
pak::pak("YaoxiangLi/ggpalettes")
```

## Usage

```r
library(ggpalettes)
library(ggplot2)

gg_palette_names()
gg_palette("aurora", n = 8)

ggplot(iris, aes(Sepal.Length, Sepal.Width, colour = Species)) +
  geom_point(size = 3) +
  scale_colour_ggpalette("clinical") +
  theme_minimal()

ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_raster() +
  scale_fill_ggpalette("ember", discrete = FALSE) +
  theme_minimal()
```

## Included palettes

- `aurora`, `ember`, `ocean`, `orchid`, `forest`, and `slate` for sequential
  and aesthetic gradients.
- `clinical` and `contrast` for categorical scientific graphics.

## Development status

This package is in active development. The public API is tested on Windows,
macOS, and Linux through `R CMD check`.

## License

MIT © Yaoxiang Li
