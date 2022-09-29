
# Muestra de la base de la Encuesta de Viajes y Turismo de los Hogares ~~~
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

datafile <- system.file("toy_evyth.rds", package = "comunicacion")
toy_evyth <- readRDS(datafile)

Encoding(toy_evyth$localidad_destino) <- "latin1"

levels(toy_evyth$localidad_destino) <- iconv(
  levels(toy_evyth$localidad_destino),
  "latin1",
  "UTF-8"
)

usethis::use_data(toy_evyth, overwrite = TRUE)



#             Colores Institucionales de la DNMyE             ~~~ ----
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

colores <- c(
  `rosa`         = "#EE3D8F",
  `naranja`      = "#F7941E",
  `amarillo`     = "#FFD100",
  `pera`         = "#D7DF23",
  `azul verde`   = "#50B8B1",
  `purpura`      = "#9283BE",
  `cian`         = "#37BBED",
  `gris oscuro`  = "#50535C",
  `gris medio`   = "#AAAAAA",
  `gris claro`   = "#E7E7E7")



#             Paletas Institucionales de la DNMyE             ~~~ ----
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

paletas <- list(

  `cualitativa` = c("#EE3D8F", "#F7941E", "#FFD100", "#D7DF23",
                    "#50B8B1", "#9283BE", "#37BBED"),
  `secuencial`  = c("#50B8B1", "#37BBED"),
  `dicotomica`  = c("#EE3D8F", "#50B8B1"),
  `divergente`  = c("#EE3D8F", "#AAAAAA", "#37BBED"))

usethis::use_data(colores, paletas, overwrite = TRUE, internal = TRUE)
