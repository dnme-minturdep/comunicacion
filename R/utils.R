pkg_resource <- function(...) {
  system.file("resources", ..., package = "comunicacion", mustWork = TRUE)
}
