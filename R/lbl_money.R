#' Función para formatear números que expresan moneda como texto
#'
#' @param x Número a formatear
#' @param decimales Cantidad de decimales expresado como numero entero. El valor por default es 0 que no muestra decimales.
#' @param dolar Lógico. Si es F (default) usa el prefijo '$', si es T usa prefijo 'US$'.
#' @param escala Número entero para dividir el número a formatear. Por ejemplo, en caso de querer expresar el resultado en miles se pone 1000
#' @param sufijo Texto a agregar como sufijo, por ejemplo 'M', 'm', etc. Default es NULL que no agrega sufijo.
#'
#' @export

lbl_money <- function(x, decimales = 0, dolar = F, escala = 1, sufijo = NULL) {

  scales::label_dollar(
      accuracy = 1 / (10 ^ decimales),
      big.mark = ".",
      decimal.mark = ",",
      prefix = ifelse(dolar, "US$ ", "$"),
      scale = 1 / escala,
      suffix = ifelse(is.null(sufijo), "", paste0(" ", sufijo))
    )(x)

}
