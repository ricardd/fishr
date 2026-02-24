#' Calculate catch per unit of effort (CPUE)
#'
#' @param catch Numeric vector of catch values
#' @param effort Numeric vector of effort values
#' @param gear_factor Numeric adjustment for fishing gear corrections
#'
#' @returns A numeric vector of CPUE values
#' @export
#'
#' @examples
#' cpue(100, 10)
#' cpue(100, 10, gear_factor=2/3)
cpue <- function(catch, effort, gear_factor=1){
  raw_cpue <- catch / effort

  raw_cpue * gear_factor
}
