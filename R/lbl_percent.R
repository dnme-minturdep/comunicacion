#' Función para formatear números porcentuales como texto
#'
#' @param x Número a formatear
#' @param decimales Cantidad de decimales. El valor por default es 0.01 que recorta a 2 decimales
#'
#' @export

lbl_percent <- function(x, decimales = 0.01) {

  scales::label_percent(accuracy = decimales, big.mark = ".", decimal.mark = ",")(x)

}
