# Función para agregar hojas institucionales a los informes generados con el template de la DNMyE

Función para agregar hojas institucionales a los informes generados con
el template de la DNMyE

## Usage

``` r
unir_paginas(input, save_as, topic = "generico")
```

## Arguments

- input:

  Ruta con el PDF del informe

- save_as:

  Nombre y ruta del informe a guardar

- topic:

  Tema del informe. Puede ser: "calidad", "competitividad hotelera",
  "eoh", "sector hotelero", "internacional", "interno", "inversiones",
  "naturaleza", "naturaleza apn" o "generico"

## Examples

``` r
if (FALSE) { # \dontrun{
  unir_paginas(input = "eoh.pdf",
   save_as = "informe_eoh_junio_2022.pdf",
   topic = "eoh"
 )
} # }
```
