# {comunicacion}

[comunicacion](https://github.com/dnme-minturdep/comunicacion) ofrece
herramientas que facilitan la visualización de datos en la [Dirección
Nacional de Mercados y Estadísticas](https://www.yvera.tur.ar/sinta/)
del [Ministerio de Turismo y Deportes de la
Nación](https://www.argentina.gob.ar/turismoydeportes).

## Instrucciones de instalación

Versión en desarrollo:

``` r
devtools::install_github("dnme-minturdep/comunicacion", upgrade = F)
```

## Funciones

- **[`crear_informe()`](https://dnme-minturdep.github.io/comunicacion/reference/crear_informe.md)**:
  Función para crear y abrir un *template* de informes para la DNMYE

- **[`crear_presentacion()`](https://dnme-minturdep.github.io/comunicacion/reference/crear_presentacion.md)**:
  Función para crear y abrir un *template* de presentaciones para la
  DNMYE

- **[`dnmye_colores()`](https://dnme-minturdep.github.io/comunicacion/reference/dnmye_colores.md)**:
  Función para extraer los colores institucionales de la DNMYE como
  colores HEX

- **[`dnmye_paletas()`](https://dnme-minturdep.github.io/comunicacion/reference/dnmye_paletas.md)**:
  Función para extraer paletas de colores colores institucionales de la
  DNMYE como colores HEX

- **[`scale_color_dnmye()`](https://dnme-minturdep.github.io/comunicacion/reference/scale_color_dnmye.md)**:
  Constructor de escala de colores de contorno (argumento color) con
  estética de la DNMYE para gráficos generados con
  [ggplot2](https://ggplot2.tidyverse.org) y su *gramática de gráficos*

- **[`scale_fill_dnmye()`](https://dnme-minturdep.github.io/comunicacion/reference/scale_fill_dnmye.md)**:
  Constructor de escala de colores de relleno (argumento `fill`) con
  estética de la DNMYE para gráficos generados con
  [ggplot2](https://ggplot2.tidyverse.org) y su *gramática de gráficos*

- **[`gt_theme_dnmye()`](https://dnme-minturdep.github.io/comunicacion/reference/gt_theme_dnmye.md)**:
  Tema personalizado con estética de la DNMYE para tabulados generados
  con [gt](https://gt.rstudio.com) y su *gramática de tablas*-

- **[`rmdautotabs()`](https://dnme-minturdep.github.io/comunicacion/reference/rmdautotabs.md)**:
  Permite generar automáticamente el código necesario para agrupar
  múltiples fragmentos de Rmarkdown en pestañas. Tomado de
  [`{sknifedatar}`](https://github.com/rafzamb/sknifedatar)

## Modo de uso

Estos son ejemplos básicos sobre cómo utilizar las funciones de la
librería:

``` r
library(comunicacion)

# Obtengo la paleta completa
comunicacion::dnmye_colores()
#>  [1] "#EE3D8F" "#F7941E" "#FFD100" "#D7DF23" "#50B8B1" "#9283BE" "#37BBED"
#>  [8] "#50535C" "#AAAAAA" "#E7E7E7"

# El código HEX para un color específico 
comunicacion::dnmye_colores("azul verde")
#> [1] "#50B8B1"
```

#### Colores institucionales

Paletas de colores primarios y secundarios del manual de estilo de
Presidencia la Nación.

![](reference/figures/paleta_institucional_1.png)

![](reference/figures/paleta_institucional_2.png)

``` r
# Explorar paleta de colores institucionales

scales::show_col(dnmye_colores())
```

![](reference/figures/README-unnamed-chunk-3-1.png)

## Cómo contribuir con el proyecto

Para colaborar en este proyecto, se recomienda hacer un Fork, trabajar
sobre ese repositorio y, antes de hacer el pull request, correr el
`devtools::check()` para garantizar que no haya conflictos.
