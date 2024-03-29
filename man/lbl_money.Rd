% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lbl_money.R
\name{lbl_money}
\alias{lbl_money}
\title{Función para formatear números que expresan moneda como texto}
\usage{
lbl_money(x, decimales = 0, dolar = F, escala = 1, sufijo = NULL)
}
\arguments{
\item{x}{Número a formatear}

\item{decimales}{Cantidad de decimales expresado como numero entero. El valor por default es 0 que no muestra decimales.}

\item{dolar}{Lógico. Si es F (default) usa el prefijo '$', si es T usa prefijo 'US$'.}

\item{escala}{Número entero para dividir el número a formatear. Por ejemplo, en caso de querer expresar el resultado en miles se pone 1000}

\item{sufijo}{Texto a agregar como sufijo, por ejemplo 'M', 'm', etc. Default es NULL que no agrega sufijo.}
}
\description{
Función para formatear números que expresan moneda como texto
}
