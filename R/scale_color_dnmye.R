#' Constructor de escala de colores de contorno (color) para la dnmye
#'
#' @param palette Nombre de la paleta de colores en dnmye_paleta
#' @param discrete TRUE indica que la variable es discreta
#' @param reverse *TRUE* indica que la peleta debe ser invertida
#' @param ... Argumentos adicionales para definir en discrete_scale() o
#'            scale_color_gradientn(), respectivamente, cuando discrete es TRUE o FALSE
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
#' geom_point(size = 4) +
#' scale_color_dnmye()


scale_color_dnmye <- function(palette = "cualitativa", discrete = TRUE, reverse = FALSE, ...) {

  pal <- comunicacion::dnmye_paletas(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("color", paste0("dnmye_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colors = pal(256), ...)
  }
}
