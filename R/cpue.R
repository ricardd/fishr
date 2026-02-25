#' Calculate catch per unit of effort (CPUE)
#'
#' @param catch Numeric vector of catch values
#' @param effort Numeric vector of effort values
#' @param gear_factor Numeric adjustment for fishing gear corrections
#' @param method Character; one of "ratio" or "log"
#' @param verbose Logical, if TRUE print processing info (default is FALSE, also accepts the value of )
#'
#' @returns A numeric vector of CPUE values
#' @export
#'
#' @examples
#' cpue(100, 10)
#' cpue(100, 10, gear_factor=2/3)
cpue <- function(
  catch,
  effort,
  gear_factor = 1,
  method = c("ratio", "log"),
  verbose = getOption("fishr.verbose", default = FALSE)
) {
  validate_numeric_inputs(catch = catch, effort = effort)
  if (verbose) {
    message("Processing ", length(catch), " records")
  }

  method <- match.arg(method)

  raw_cpue <- switch(
    method,
    ratio = catch / effort,
    log = log(catch / effort)
  )

  raw_cpue * gear_factor
}
