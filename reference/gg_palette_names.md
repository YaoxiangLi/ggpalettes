# List available ggpalettes palettes

List available ggpalettes palettes

## Usage

``` r
gg_palette_names(type = c("all", .palette_types))
```

## Arguments

- type:

  Palette type: all, categorical, sequential, or diverging.

## Value

A character vector containing the available palette names.

## Examples

``` r
gg_palette_names()
#>  [1] "meadow"      "atelier"     "clinical"    "spectrum"    "pastel"     
#>  [6] "earth"       "midnight"    "floral"      "coastal"     "harvest"    
#> [11] "aurora"      "ocean"       "ember"       "forest"      "orchid"     
#> [16] "slate"       "sunrise"     "glacier"     "berry"       "sand"       
#> [21] "balance"     "temperature" "earthsky"    "rosepine"    "lagoon"     
#> [26] "violetgold" 
gg_palette_names("diverging")
#> [1] "balance"     "temperature" "earthsky"    "rosepine"    "lagoon"     
#> [6] "violetgold" 
```
