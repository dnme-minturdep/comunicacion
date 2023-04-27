#' Función para formatear números decimales como texto
#'
#' @param x Número a formatear
#' @param decimales Cantidad de decimales expresado como numero entero. El valor por default es 1 que recorta a 1 decimal.
#'
#' @export

lbl_decimal <- function(x, decimales = 1) {

  scales::label_number(accuracy = 1/(10^decimales), big.mark = ".", decimal.mark = ",")(x)

}


