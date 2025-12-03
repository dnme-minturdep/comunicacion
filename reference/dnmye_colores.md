# Funcion para extraer la paleta institucional de la dnmye como colores hex

Funcion para extraer la paleta institucional de la dnmye como colores
hex

## Usage

``` r
dnmye_colores(..., nombre = FALSE)
```

## Arguments

- ...:

  Nombre o número del color. Las posibilidades son *rosa*, *naranja*,
  *amarillo*, *pera*, *azul verde*, *purpura*, *cian*, *gris oscuro*,
  *gris medio* y *gris claro* (o del 1 al 10).

- nombre:

  Si es TRUE devuelve el nombre del color al que corresponde el código
  hex

## Value

Paleta de colores institucionales para la Republica de Argentina

## Examples

``` r
### Obtener el código hex del color institucional celeste
dnmye_colores()
#>  [1] "#EE3D8F" "#F7941E" "#FFD100" "#D7DF23" "#50B8B1" "#9283BE" "#37BBED"
#>  [8] "#50535C" "#AAAAAA" "#E7E7E7"

dnmye_colores("rosa")
#> [1] "#EE3D8F"
```
