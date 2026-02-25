# Calculate biomass index

Calculate biomass index from CPUE and area swept

## Usage

``` r
biomass_index(
  cpue = NULL,
  area_swept,
  catch = NULL,
  effort = NULL,
  verbose = getOption("fishr.verbose", default = FALSE),
  ...
)
```

## Arguments

- cpue:

  Numeric vector of CPUE values (units: kg/hr).

- area_swept:

  Numeric vector of area swept in **km^2^**.

- catch:

  Numeric vector of catch values

- effort:

  Numeric vector of effort values

- verbose:

  Logical, if TRUE print processing info (default is FALSE, also accepts
  the value of )

- ...:

  Arguments passed on to
  [`cpue`](https://ricardd.github.io/fishr/reference/cpue.md)

  `gear_factor`

  :   Numeric adjustment for fishing gear corrections

  `method`

  :   Character; one of "ratio" or "log"

## Value

A numeric vector of biomass index values

## Examples

``` r
cod_cpue <- cpue(catch=100, effort=20)
biomass_index(cod_cpue, 5)
#> [1] 25
```
