# Calculate biomass index

Calculate biomass index from CPUE and area swept

## Usage

``` r
biomass_index(cpue = NULL, area_swept, catch = NULL, effort = NULL, ...)
```

## Arguments

- cpue:

  Numeric vector of CPUE values

- area_swept:

  Numeric vector of area swept (e.g., km^2)

- catch:

  catch value numeric

- effort:

  effort value numeric

- ...:

  arguments passed to cpue function

## Value

A numeric vector of biomass index values

## Examples

``` r
cod_cpue <- cpue(catch=100, effort=20)
biomass_index(cod_cpue, 5)
#> [1] 25
```
