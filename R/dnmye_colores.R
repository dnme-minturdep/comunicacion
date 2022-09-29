
#' Funcion para extraer la paleta institucional de la dnmye como colores hex
#'
#' @param ... Nombre o número del color. Las posibilidades son *rosa*, *naranja*, *amarillo*, *pera*, *azul verde*, *purpura*, *cian*, *gris oscuro*, *gris medio* y *gris claro* (o del 1 al 10).
#' @param nombre Si es TRUE devuelve el nombre del color al que corresponde el código hex
#' @return
#' Paleta de colores institucionales para la Republica de Argentina
#' @export
#'
#' @examples
#' ### Obtener el código hex del color institucional celeste
#' dnmye_colores()
#'
#' dnmye_colores("rosa")

dnmye_colores <- function(..., nombre = FALSE) {

  cols <- c(...)

  if (is.null(cols)) {
    if(nombre == FALSE){
      return(unname(colores))
    } else {
      return(colores)
    }
  }

  if (!is.null(cols) & is.character(cols)) {
    assertthat::assert_that(cols %in% c(names(colores)),
                            msg = glue::glue("el valor debe encontrarse entre las siguientes opciones: {paste0(names(colores), collapse = ', ')}"))

    if(nombre == FALSE){
      return(unname(colores[cols]))
    } else {
      return(colores[cols])
    }
  }

  if (!is.null(cols) & is.numeric(cols)){

    assertthat::assert_that(unique(cols) %in% c(1:10),
                            msg = glue::glue("Los valores numericos van de 1 a {length(colores)}"))

    if(nombre == FALSE){
      return(unname(colores[cols]))
    } else {
      return(colores[cols])
    }

    return(unname(colores[cols]))
  }
}

