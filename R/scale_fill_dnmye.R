#' Constructor de escala de colores de contorno (color) para la dnmye
#'
#' @param palette Nombre de la paleta de colores en dnmye_paleta
#' @param discrete TRUE indica que la variable es discreta
#' @param reverse *TRUE* indica que la peleta debe ser invertida
#' @param ... Argumentos adicionales para definir en discrete_scale() o
#'            scale_color_gradientn(), respectivamente, cuando discrete es TRUE o FALSE
#' @examples
#' datafile <- system.file("toy_evyth.rds", package = "comunicacion")
#' toy_evyth <- readRDS(datafile)
#'
#'toy_evyth %>%
#'  dplyr::mutate(region_destino = factor(region_destino,
#'                                        labels = c("Ciudad de Buenos Aires",
#'                                                   "Provincia de Buenos Aires - Partidos del GBA",
#'                                                   "Provincia de Buenos Aires - Resto", "Centro",
#'                                                   "Litoral",
#'                                                   "Norte", "Cuyo", "Patagonia"))) %>%
#'  dplyr::group_by(anio, region_destino) %>%
#'  dplyr::summarise(cantidad_personas = sum(pondera)) %>%
#'  ggplot2::ggplot(ggplot2::aes(x = anio,
#'                               y = cantidad_personas,
#'                               fill = region_destino)) +
#'  ggplot2::geom_col(position = ggplot2::position_dodge()) +
#'  scale_fill_dnmye()
#'
#'
#'
#'
#'### Funcion
#'scale_fill_dnmye <- function(palette = "c10_todos", discrete = TRUE, reverse = FALSE, ...) {
#'
#'  pal <- dnmye_paletas(palette = palette, reverse = reverse)
#'
#'  if (discrete) {
#'    ggplot2::discrete_scale("fill", paste0("dnmye_", palette), palette = pal, ...)
#'  } else {
#'    ggplot2::scale_fill_gradientn(colors = pal(256), ...)
#'  }
#'}
#'
#' @export
