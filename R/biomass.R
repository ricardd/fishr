#' Calculate biomass index
#'
#' Calculate biomass index from CPUE and area swept
#'
#' @param cpue Numeric vector of CPUE values
#' @param area_swept Numeric vector of area swept (e.g., km^2)
#' @param catch catch value numeric
#' @param effort effort value numeric
#' @param ... arguments passed to cpue function
#'
#' @returns A  numeric vector of biomass index values
#' @export
#'
#' @examples
#' cod_cpue <- cpue(catch=100, effort=20)
#' biomass_index(cod_cpue, 5)
biomass_index <- function(
  cpue = NULL,
  area_swept,
  catch = NULL,
  effort = NULL,
  ...
) {
  if (is.null(cpue) && (!is.null(catch) && !is.null(effort))) {
    cpue <- cpue(catch, effort, ...)
  }

  cpue * area_swept
}
