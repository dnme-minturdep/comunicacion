# Función para formatear números que expresan moneda como texto

Función para formatear números que expresan moneda como texto

## Usage

``` r
lbl_money(x, decimales = 0, dolar = F, escala = 1, sufijo = NULL)
```

## Arguments

- x:

  Número a formatear

- decimales:

  Cantidad de decimales expresado como numero entero. El valor por
  default es 0 que no muestra decimales.

- dolar:

  Lógico. Si es F (default) usa el prefijo '\$', si es T usa prefijo
  'US\$'.

- escala:

  Número entero para dividir el número a formatear. Por ejemplo, en caso
  de querer expresar el resultado en miles se pone 1000

- sufijo:

  Texto a agregar como sufijo, por ejemplo 'M', 'm', etc. Default es
  NULL que no agrega sufijo.
