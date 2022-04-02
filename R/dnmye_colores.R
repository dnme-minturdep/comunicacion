
#' Funcion para extraer la paleta institucional de la dnmye como colores hex
#'
#' @param ... Nombre del color. Las posibilidades son *rojo*, *naranja*, *amarillo*,
#' *verde claro*, *verde_oscuro*, *violeta*, *celeste*, *gris oscuro*, *gris medio*,
#' y *gris claro*.
#' @return
#' Paleta de colores institucionales para la Republica de Argentina
#' @export
#'
#' @examples
#' ### Obtener el código hex del color institucional celeste
#' dnmye_colores()
#'
#' dnmye_colores("rojo")

dnmye_colores <- function(...) {

  cols <- c(...)

  if (is.null(cols)) {
    return(unname(colores))
  }

  if (!is.null(cols) & is.character(cols)) {
    assertthat::assert_that(cols %in% c(names(colores)),
                            msg = glue::glue("el valor debe encontrarse entre las siguientes opciones: {paste0(names(dnmye_colores), collapse = ', ')}"))

    return(unname(colores[cols]))
  }

  if (!is.null(cols) & is.numeric(cols)){

    assertthat::assert_that(unique(cols) %in% c(1:10),
                            msg = glue::glue("Los valores numericos van de 1 a {length(dnmye_colores)}"))

    return(unname(colores[cols]))
  }
}

