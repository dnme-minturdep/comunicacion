#' Función para formatear números porcentuales como texto
#'
#' @param x Número a formatear
#' @param decimales Cantidad de decimales expresado como numero entero. El valor por default es 2 que recorta a 2 decimales
#'
#' @export

lbl_percent <- function(x, decimales = 2) {

  scales::label_percent(accuracy = 1/(10^decimales), big.mark = ".", decimal.mark = ",")(x)

}
