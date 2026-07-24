# Inspect the ggpalettes catalogue

Inspect the ggpalettes catalogue

## Usage

``` r
gg_palette_info(name = NULL, type = c("all", .palette_types))
```

## Arguments

- name:

  Optional palette name or vector of names.

- type:

  Palette type used when `name` is `NULL`.

## Value

A data frame describing palette names, types, sizes, and purposes.

## Examples

``` r
gg_palette_info()
#>           name        type colours
#> 1       meadow categorical      10
#> 2      atelier categorical      12
#> 3     clinical categorical      12
#> 4     spectrum categorical      10
#> 5       pastel categorical      10
#> 6        earth categorical      10
#> 7     midnight categorical      10
#> 8       floral categorical      10
#> 9      coastal categorical      10
#> 10     harvest categorical      10
#> 11      aurora  sequential       7
#> 12       ocean  sequential       7
#> 13       ember  sequential       7
#> 14      forest  sequential       7
#> 15      orchid  sequential       7
#> 16       slate  sequential       7
#> 17     sunrise  sequential       7
#> 18     glacier  sequential       7
#> 19       berry  sequential       7
#> 20        sand  sequential       7
#> 21     balance   diverging       9
#> 22 temperature   diverging       9
#> 23    earthsky   diverging       9
#> 24    rosepine   diverging       9
#> 25      lagoon   diverging       9
#> 26  violetgold   diverging       9
#>                                                 description
#> 1      Fresh botanical colours with warm editorial accents.
#> 2           Pigment-rich studio colours balanced for print.
#> 3         Clear scientific categories for clinical figures.
#> 4   High-separation colours for dense categorical graphics.
#> 5   Soft colours that retain enough structure for grouping.
#> 6                       Mineral, soil, leaf, and sky tones.
#> 7           Luminous accents designed for dark backgrounds.
#> 8     Petal and foliage colours with restrained saturation.
#> 9        Sea-glass blues, dune neutrals, and coral accents.
#> 10   Warm produce colours grounded by cool greens and blue.
#> 11       Deep indigo through teal to luminous green-yellow.
#> 12              A clear deep-water to sea-foam progression.
#> 13       Charcoal red through glowing orange to warm cream.
#> 14         Shadowed evergreen through fern to spring light.
#> 15             Inky violet through orchid and pale blossom.
#> 16 Neutral blue-grey for understated quantitative graphics.
#> 17            Night violet through coral to early sunlight.
#> 18                   Polar blue with a bright ice endpoint.
#> 19               Blackberry through raspberry to pale rose.
#> 20                  Espresso, clay, ochre, and sunlit sand.
#> 21    Cool blue and warm red around a quiet neutral centre.
#> 22       Cold blue to warm amber-red with a light midpoint.
#> 23       Earth brown and sky blue separated by cloud white.
#> 24          Rose and pine around a warm parchment midpoint.
#> 25               Purple and tropical teal around mist grey.
#> 26      Royal violet and burnished gold with a soft centre.
gg_palette_info(type = "categorical")
#>        name        type colours
#> 1    meadow categorical      10
#> 2   atelier categorical      12
#> 3  clinical categorical      12
#> 4  spectrum categorical      10
#> 5    pastel categorical      10
#> 6     earth categorical      10
#> 7  midnight categorical      10
#> 8    floral categorical      10
#> 9   coastal categorical      10
#> 10  harvest categorical      10
#>                                                description
#> 1     Fresh botanical colours with warm editorial accents.
#> 2          Pigment-rich studio colours balanced for print.
#> 3        Clear scientific categories for clinical figures.
#> 4  High-separation colours for dense categorical graphics.
#> 5  Soft colours that retain enough structure for grouping.
#> 6                      Mineral, soil, leaf, and sky tones.
#> 7          Luminous accents designed for dark backgrounds.
#> 8    Petal and foliage colours with restrained saturation.
#> 9       Sea-glass blues, dune neutrals, and coral accents.
#> 10  Warm produce colours grounded by cool greens and blue.
gg_palette_info("meadow")
#>     name        type colours
#> 1 meadow categorical      10
#>                                            description
#> 1 Fresh botanical colours with warm editorial accents.
```
