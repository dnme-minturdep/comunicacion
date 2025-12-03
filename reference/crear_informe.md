# Función para crear y abrir un template de informes para la DNMyE

Función para crear y abrir un template de informes para la DNMyE

## Usage

``` r
crear_informe(
  template = "skeleton.Rmd",
  save_as = template,
  data = list(),
  ignore = FALSE,
  open = TRUE,
  package = "comunicacion"
)
```

## Arguments

- template:

  Ruta donde se ubica el template de referencia

- save_as:

  Ruta donde será guardado el nuevo informe creado

- data:

  Una lista de 'data' que se le pasa al template

- ignore:

  Si es TRUE, el nuevo archivo creado se incluye en `.Rbuildignore`. Por
  default, esta opción figura en FALSE

- open:

  Si es TRUE se abre el archivo al mismo tiempo que se crea, para poder
  editarlo.

- package:

  Nombre del paquete donde se encuentra el template.

## Value

un vector lógico que indica si el archivo fue modificado

## Examples

``` r
if (FALSE) { # \dontrun{
  # Nota: Al correr la siguiente sentencia el archivo `informe.Rmd` se
  crear_informe(save_as = "informe.Rmd",
               open = TRUE)
} # }
```
