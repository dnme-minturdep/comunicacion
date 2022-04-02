

#' Funcion para extraer colores de la dnmye como colores hex
#'
#' @param palette Nombre de la paleta de colores en dnmye_paletas. Se puede optar por *c2_continuo*, *c2_contraste* o *c10_todos*
#' @param reverse *TRUE* indica que la peleta debe ser invertida
#' @param ... Argumentos adicionales para definir con colorRampPalette()
#' @return
#' Paleta de colores institucionales para la Republica de Argentina
#' @export
#'
#' @examples

dnmye_paletas <- function(palette = "c10_todos", reverse = FALSE, ...) {

  paletas <- list(

    `c2_continuo`  = c("#50B8B1", "#9283BE"),
    `c2_contraste` = c("#50B8B1", "#EE3D8F"),
    `c10_todos`     = c("#EE3D8F", "#F7941E", "#FFD100", "#D7DF23", "#50B8B1",
                        "#9283BE", "#37BBED", "#50535C", "#AAAAAA", "#E7E7E7"))

  #rlang::check_installed("grDevices", reason = "Para usar `dnmye_paletas()`")

  pal <- paletas[[palette]]

  if (reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)
}
