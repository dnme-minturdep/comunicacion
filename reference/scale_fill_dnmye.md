# Constructor de escala de colores de contorno (color) para la dnmye

Constructor de escala de colores de contorno (color) para la dnmye

## Usage

``` r
scale_fill_dnmye(
  palette = "cualitativa",
  discrete = TRUE,
  reverse = FALSE,
  ...
)
```

## Arguments

- palette:

  Nombre de la paleta de colores en `dnmye_paleta()`. Las opciones son
  *cualitativa* (por default), *secuencial*, *dicotomica* y *divergente*

- discrete:

  TRUE (por default) indica que la variable es discreta

- reverse:

  *TRUE* invierte el orden de asignación de colores en la paleta

- ...:

  Argumentos adicionales para definir en discrete_scale() o
  scale_color_gradientn(), respectivamente, cuando discrete es TRUE o
  FALSE

## Examples

``` r
datafile <- system.file("toy_evyth.rds", package = "comunicacion")
toy_evyth <- readRDS(datafile)

library(magrittr)
toy_evyth %>%
 dplyr::mutate(region_destino = factor(region_destino,
                                       labels = c("Ciudad de Buenos Aires",
                                                  "Provincia de Buenos Aires - Partidos del GBA",
                                                  "Provincia de Buenos Aires - Resto", "Centro",
                                                  "Litoral",
                                                  "Norte", "Cuyo", "Patagonia"))) %>%
 dplyr::group_by(anio, region_destino) %>%
 dplyr::summarise(cantidad_personas = sum(pondera)) %>%
 ggplot2::ggplot(ggplot2::aes(x = anio,
                              y = cantidad_personas,
                              fill = region_destino)) +
 ggplot2::geom_col(position = ggplot2::position_dodge()) +
 scale_fill_dnmye(palette = "cualitativa", discrete = TRUE)
#> `summarise()` has grouped output by 'anio'. You can override using the
#> `.groups` argument.
```
