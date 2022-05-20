

#' Generacion automatica de tabs en Rmd
#' @description
#' Permite generar automáticamente el código necesario para agrupar múltiples
#' fragmentos de Rmarkdown en pestañas. Concatena todos los fragmentos en una
#'  cadena que luego se puede knitear y renderizar. Tomado de {sknifedatar}
#'
#' @param input_data Ungrouped tibble with at least 2 columns, one for the title of the tabs and another with the output to be displayed.
#' @param panel_name column with the ID variable.
#' @param ...	nested columns that contain outputs to display
#' @param tabset_title string title of the .tabset
#' @param tabset_props	string defining .tabset properties. Only works with is_output_distill = F
#' @param chunk_props	named list with additional parameters that correspond to all those available in rmarkdown chunks (fig.align, fig.width, ...).
#' @param is_output_distill	boolean. is output a distill article.
#'
#'@export
#'
rmdautotabs <- function (input_data, panel_name, ...,
                         tabset_title = "",
                         tabset_props = ".tabset-fade .tabset-pills",
                         chunk_props = list(echo = FALSE, fig.align = "center"),
                         is_output_distill = TRUE)
{
  `%>%` <- magrittr::`%>%`

  dataset_name <- rlang::enquo(input_data) %>% rlang::as_name()
  panel_col <- rlang::enquo(panel_name)
  vars <- rlang::enquos(..., .named = TRUE) %>% names()
  if (dplyr::is_grouped_df(input_data)) {
    stop("input_data must be ungrouped")
  }
  subsets <- paste0(dataset_name, "$", vars)
  if (purrr::is_empty(chunk_props)) {
    warning("chunk_props can not be empty, adding echo = FALSE to every chunk in this tabset")
    chunk_props <- list(echo = F)
  }
  chunk_props_values <- unname(chunk_props) %>% purrr::map_if(is.character,
                                                              ~sprintf("'%s'", .x))
  .chunk_props <- paste0(paste(names(chunk_props), chunk_props_values,
                               sep = " = "), collapse = ", ")
  if (is_output_distill) {
    aux_1 <- ""
    aux_2 <- ".panelset"
    aux_3 <- ".panel"
  }
  else {
    aux_1 <- ".tabset"
    aux_2 <- ""
    aux_3 <- ""
  }
  chunks <- list()
  for (rown in 1:nrow(input_data)) {
    .panel_output <- sprintf("%s[[%s]]", subsets, rown) %>%
      paste0(collapse = " \n ")
    .panel_name <- input_data %>% dplyr::slice(rown) %>%
      dplyr::pull(!!panel_col)
    individual_chunk <- sprintf("::: {%s}\n\n### %s \n\n```{r `r automagic_chunk_%s_%s`, %s} \n %s \n ``` \n\n:::",
                                aux_3, .panel_name, dataset_name, .panel_name, .chunk_props,
                                .panel_output)
    chunks <- c(chunks, individual_chunk)
  }
  final_chunk <- sprintf("## %s {%s %s} \n\n::::: {%s}\n\n%s \n\n:::::",
                         tabset_title, aux_1, tabset_props, aux_2, paste0(chunks,
                                                                          collapse = "\n"))
  knitr::knit(text = final_chunk)
}
