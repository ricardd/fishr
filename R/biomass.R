#' Calculate biomass index
#'
#' Calculate biomass index from CPUE and area swept
#'
#' @param cpue Numeric vector of CPUE values
#' @param area_swept Numeric vector of area swept (e.g., km^2)
#'
#' @returns A  numeric vector of biomass index values
#' @export
#'
#' @examples
#' cod_cpue <- cpue(catch=100, effort=20)
#' biomass_index(cod_cpue, 5)
biomass_index <- function(cpue, area_swept){
  cpue * area_swept
}
