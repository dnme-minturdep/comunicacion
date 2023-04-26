#' Función para formatear números que expresan moneda como texto
#'
#' @param x Número a formatear
#' @param decimales Cantidad de decimales. El valor por default es 1 que no muestra decimales
#' @param escala Valor para dividir el número a formatear, por ejemplo, en caso de querer expresar el resultado en miles se pone 1000
#' @param sufijo Texto a agregar como sufijo
#'
#' @export

lbl_money <- function(x, decimales = 1, escala = 1, sufijo = NULL) {

  scales::label_dollar(accuracy = decimales, big.mark = ".",
                       decimal.mark = ",", prefix = "$ ",
                       scale = 1/escala,
                       suffix = ifelse(is.null(sufijo), "", paste0(" ",sufijo)))(x)

}
