# Generacion automatica de tabs en Rmd

Permite generar automáticamente el código necesario para agrupar
múltiples fragmentos de Rmarkdown en pestañas. Concatena todos los
fragmentos en una cadena que luego se puede knitear y renderizar. Tomado
de sknifedatar

## Usage

``` r
rmdautotabs(
  input_data,
  panel_name,
  ...,
  tabset_title = "",
  tabset_props = ".tabset-fade .tabset-pills",
  chunk_props = list(echo = FALSE, fig.align = "center"),
  is_output_distill = TRUE
)
```

## Arguments

- input_data:

  Ungrouped tibble with at least 2 columns, one for the title of the
  tabs and another with the output to be displayed.

- panel_name:

  column with the ID variable.

- ...:

  nested columns that contain outputs to display

- tabset_title:

  string title of the .tabset

- tabset_props:

  string defining .tabset properties. Only works with is_output_distill
  = F

- chunk_props:

  named list with additional parameters that correspond to all those
  available in rmarkdown chunks (fig.align, fig.width, ...).

- is_output_distill:

  boolean. is output a distill article.
