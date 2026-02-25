# Calculate catch per unit of effort (CPUE)

Calculate catch per unit of effort (CPUE)

## Usage

``` r
cpue(
  catch,
  effort,
  gear_factor = 1,
  method = c("ratio", "log"),
  verbose = getOption("fishr.verbose", default = FALSE)
)
```

## Arguments

- catch:

  Numeric vector of catch values

- effort:

  Numeric vector of effort values

- gear_factor:

  Numeric adjustment for fishing gear corrections

- method:

  Character; one of "ratio" or "log"

- verbose:

  Logical, if TRUE print processing info (default is FALSE, also accepts
  the value of )

## Value

A numeric vector of CPUE values

## Examples

``` r
cpue(100, 10)
#> [1] 10
cpue(100, 10, gear_factor=2/3)
#> [1] 6.666667
```
