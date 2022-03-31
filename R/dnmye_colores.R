
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
#' ### Extraigo el código hex del color institucional celeste
#'
#' dnmye_colores("celeste")

dnmye_colores <- function(...) {

  ### Lista de colores de la dnmye
  colores <- c(
    `rojo`         = "#EE3D8F",
    `naranja`      = "#F7941E",
    `amarillo`     = "#FFD100",
    `verde claro`  = "#D7DF23",
    `verde oscuro` = "#50B8B1",
    `violeta`      = "#9283BE",
    `celeste`      = "#37BBED",
    `gris oscuro`  = "#50535C",
    `gris medio`   = "#AAAAAA",
    `gris claro`   = "#E7E7E7")

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

