#' Función para formatear números enteros como texto
#'
#' @param x Número a formatear
#'
#' @export

lbl_int <- function(x){
  scales::label_number(accuracy = 1, big.mark = ".", decimal.mark = ",")(x)
}
