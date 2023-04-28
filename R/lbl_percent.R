#' Función para formatear números porcentuales como texto
#'
#' @param x Número a formatear
#' @param decimales Cantidad de decimales expresado como numero entero. El valor por default es 1 que recorta a 1 decimal.
#'
#' @export

lbl_percent <- function(x, decimales = 1) {

  scales::label_percent(accuracy = 1/(10^decimales), big.mark = ".", decimal.mark = ",")(x)

}
