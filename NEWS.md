# comunicacion 0.0.0.9007

* Agrego funciones `lbl_int()`, `lbl_decimal()` y `lbl_percent()` para formatear números con separador "." para miles, "," para decimales y "%" para porcentajes.
* Fix formats integer y decimals en `gt_theme_dnmye()`.

# comunicacion 0.0.0.9006

* Agrega función `crear_presentacion()` con template {xaringan}
* Fix documentación `gt_theme_dnmye()`.


# comunicacion 0.0.0.9005

* Fix función `gt_theme_dnmye()`: aplicar `fmt_numeric()` después de `fmt_percent()`.


# comunicacion 0.0.0.9004

* Fix función `gt_theme_dnmye()`: aplicar `fmt_numeric()` solo sobre variables numericas.

# comunicacion 0.0.0.9003

* Se agrega la función `gt_theme_dnmye()` con un estilo predefinido para tablas gt.

# comunicacion 0.0.0.9002

* Se ajustan paletas de colores para las funciones `scale_fill_dnmye()` y `scale_color_dnmye()`, principalmente sacando los grises de paletas cualitativas y creando nuevos conjuntos como `cualitativa`, `secuencial`, `dicotomica` y `divergente`.
* Se mejoran test y documentación de las funciones.
* Se agrega función para `unir_paginas()` que identifica local/server (#22 @eliansoutu)

# comunicacion 0.0.0.9.2

* Se permite definir el toc_depth del `template_informe()` pasando el valor en el yaml del .Rmd (#20 @jgjuara)

# comunicacion 0.0.0.9.1

* Se agrega función `unir_paginas()` para incorporar la segunda página institucional a informes creados con `crear_informes()` (#19 @eliansoutu)

* Added a `NEWS.md` file to track changes to the package.
