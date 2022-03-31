## code to prepare `DATASET` dataset goes here

datafile <- system.file("toy_evyth.rds", package = "comunicacion")
toy_evyth <- readRDS(datafile)

Encoding(toy_evyth$localidad_destino) <- "latin1"

levels(toy_evyth$localidad_destino) <- iconv(
  levels(toy_evyth$localidad_destino),
  "latin1",
  "UTF-8"
)

usethis::use_data(toy_evyth, overwrite = TRUE)

