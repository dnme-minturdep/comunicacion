# Changelog

## comunicacion 0.0.0.9011

- Actualizo logos y colores institucionales

## comunicacion 0.0.0.9010

- Elimino espacio entre signos `$/U$S`y numero en `lbl_money`

## comunicacion 0.0.0.9009

- Arreglado bug que mezclaba template de informe y de presentacion.

## comunicacion 0.0.0.9008

- Fix orden de formats y decimales en
  [`gt_theme_dnmye()`](https://dnme-minturdep.github.io/comunicacion/reference/gt_theme_dnmye.md).

## comunicacion 0.0.0.9007

- Agrego funciones
  [`lbl_int()`](https://dnme-minturdep.github.io/comunicacion/reference/lbl_int.md),
  [`lbl_decimal()`](https://dnme-minturdep.github.io/comunicacion/reference/lbl_decimal.md),
  [`lbl_percent()`](https://dnme-minturdep.github.io/comunicacion/reference/lbl_percent.md)
  y
  [`lbl_money()`](https://dnme-minturdep.github.io/comunicacion/reference/lbl_money.md)
  para formatear números con separador “.” para miles y “,” para
  decimales, además de “%” para porcentajes y “\$” para moneda.
- Fix formats integer y decimals en
  [`gt_theme_dnmye()`](https://dnme-minturdep.github.io/comunicacion/reference/gt_theme_dnmye.md).

## comunicacion 0.0.0.9006

- Agrega función
  [`crear_presentacion()`](https://dnme-minturdep.github.io/comunicacion/reference/crear_presentacion.md)
  con template {xaringan}
- Fix documentación
  [`gt_theme_dnmye()`](https://dnme-minturdep.github.io/comunicacion/reference/gt_theme_dnmye.md).

## comunicacion 0.0.0.9005

- Fix función
  [`gt_theme_dnmye()`](https://dnme-minturdep.github.io/comunicacion/reference/gt_theme_dnmye.md):
  aplicar `fmt_numeric()` después de `fmt_percent()`.

## comunicacion 0.0.0.9004

- Fix función
  [`gt_theme_dnmye()`](https://dnme-minturdep.github.io/comunicacion/reference/gt_theme_dnmye.md):
  aplicar `fmt_numeric()` solo sobre variables numericas.

## comunicacion 0.0.0.9003

- Se agrega la función
  [`gt_theme_dnmye()`](https://dnme-minturdep.github.io/comunicacion/reference/gt_theme_dnmye.md)
  con un estilo predefinido para tablas gt.

## comunicacion 0.0.0.9002

- Se ajustan paletas de colores para las funciones
  [`scale_fill_dnmye()`](https://dnme-minturdep.github.io/comunicacion/reference/scale_fill_dnmye.md)
  y
  [`scale_color_dnmye()`](https://dnme-minturdep.github.io/comunicacion/reference/scale_color_dnmye.md),
  principalmente sacando los grises de paletas cualitativas y creando
  nuevos conjuntos como `cualitativa`, `secuencial`, `dicotomica` y
  `divergente`.
- Se mejoran test y documentación de las funciones.
- Se agrega función para
  [`unir_paginas()`](https://dnme-minturdep.github.io/comunicacion/reference/unir_paginas.md)
  que identifica local/server
  ([\#22](https://github.com/dnme-minturdep/comunicacion/issues/22)
  [@eliansoutu](https://github.com/eliansoutu))

## comunicacion 0.0.0.9.2

- Se permite definir el toc_depth del
  [`template_informe()`](https://dnme-minturdep.github.io/comunicacion/reference/template_informe.md)
  pasando el valor en el yaml del .Rmd
  ([\#20](https://github.com/dnme-minturdep/comunicacion/issues/20)
  [@jgjuara](https://github.com/jgjuara))

## comunicacion 0.0.0.9.1

- Se agrega función
  [`unir_paginas()`](https://dnme-minturdep.github.io/comunicacion/reference/unir_paginas.md)
  para incorporar la segunda página institucional a informes creados con
  `crear_informes()`
  ([\#19](https://github.com/dnme-minturdep/comunicacion/issues/19)
  [@eliansoutu](https://github.com/eliansoutu))

- Added a `NEWS.md` file to track changes to the package.
