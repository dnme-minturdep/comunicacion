# Constructor de escala de colores de contorno (color) para la dnmye

Constructor de escala de colores de contorno (color) para la dnmye

## Usage

``` r
scale_color_dnmye(
  palette = "cualitativa",
  discrete = TRUE,
  reverse = FALSE,
  ...
)
```

## Arguments

- palette:

  Nombre de la paleta de colores en dnmye_paleta

- discrete:

  TRUE indica que la variable es discreta

- reverse:

  *TRUE* indica que la peleta debe ser invertida

- ...:

  Argumentos adicionales para definir en discrete_scale() o
  scale_color_gradientn(), respectivamente, cuando discrete es TRUE o
  FALSE

## Examples

``` r
library(ggplot2)
ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
geom_point(size = 4) +
scale_color_dnmye()
```
