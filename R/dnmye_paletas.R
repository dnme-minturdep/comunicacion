#' Funcion para extraer colores de la dnmye como colores hex
#'
#' @param palette Nombre de la paleta de colores en dnmye_paletas. Se puede optar por *cualitativa*, *secuencial*, *dicotomica*  o *divergente*
#' @param reverse *TRUE* indica que la peleta debe ser invertida
#' @param ... Argumentos adicionales para definir con colorRampPalette()
#' @return
#' Paleta de colores institucionales para la Republica de Argentina
#' @export

dnmye_paletas <- function(palette = "cualitativa", reverse = FALSE, ...) {


  #rlang::check_installed("grDevices", reason = "Para usar `dnmye_paletas()`")

  pal <- paletas[[palette]]

  if (reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)
}
