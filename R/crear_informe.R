#' Función para crear y abrir un template de informes para la DNMyE
#'
#' @param template Ruta donde se ubica el template de referencia
#' @param save_as Ruta donde será guardado el nuevo informe creado
#' @param data Una lista de 'data' que se le pasa al template
#' @param ignore Si es TRUE, el nuevo archivo creado se incluye en `.Rbuildignore`. Por default, esta opción figura en FALSE
#' @param open Si es TRUE se abre el archivo al mismo tiempo que se crea, para poder editarlo.
#' @param package Nombre del paquete donde se encuentra el template.
#' @return un vector lógico que indica si el archivo fue modificado
#' @export
#' @examples
#' \dontrun{
#'   # Nota: Al correr la siguiente sentencia el archivo `informe.Rmd` se
#'   crear_informe(save_as = "informe.Rmd",
#'                open = TRUE)
#' }

crear_informe <- function(template = "skeleton.Rmd",
                         save_as = template,
                         data = list(),
                         ignore = FALSE,
                         open = TRUE,
                         package = "comunicacion") {

  template_contents <- render_template(template, data, package = package)

  new <- usethis::write_over(usethis::proj_path(save_as), template_contents)

  if (ignore) {
    usethis::use_build_ignore(save_as)
  }

  if (open && new) {
    usethis::edit_file(usethis::proj_path(save_as))
  }

  base::invisible(new)
}
#' @export

render_template <- function(template, data = list(), package = "comunicacion") {
  template_path <- find_template_doc(template, package = package)
  base::strsplit(whisker::whisker.render(xfun::read_utf8(template_path), data), "\n")[[1]]
}

find_template_doc <- function(template_name, package = "comunicacion") {
  rlang::check_installed(package)
  path <- tryCatch(
    fs::path_package(package = package, "rmarkdown/templates/paged/skeleton/", template_name),
    error = function(e) ""
  )
  if (identical(path, "")) {
    usethis::ui_stop(
      "Could not find template {usethis::ui_value(template_name)} \\
      in package {usethis::ui_value(package)}."
    )
  }
  path
}




