#' Calculate decimal coordinates from degrees minutes
#'
#' @param degrees A number.
#' @param minutes A number.
#' @param point A character
#' @return A number.
#' @examples
#' decimal_from_deg_min(50, 1 W,)



decimal_from_deg_min <- function(degrees, minutes, point){

  # if(point == "[sS]"|point == "[wW]")

  decimal <- degrees + minutes / 60



  return(decimal)

}

