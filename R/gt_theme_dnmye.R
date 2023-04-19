#' Función para estilizar tablas gt con theme propio
#'
#' @param gt_table Tabla gt
#' @param var_total Nombre de la variable que contiene la categoría "Total"
#'
#' @export

gt_theme_dnmye <- function(gt_table, var_total = NA){

  gt_table <- gt::cols_align(gt_table,
                         align = "center",
                         columns = 2:ncol(data.frame(gt_table["_data"])))

  gt_table <- gt::cols_align(gt_table,
                             align = "left",
                             columns = 1)

  gt_table <- gt::tab_options(gt_table,
                              data_row.padding = gt::px(8),
                              column_labels.font.weight = "bold")

  gt_table <- gt::fmt_percent(gt_table, columns = gt::starts_with(c("var_","part_","prop_","porc_",
                                                                    "variacion","participacion","proporcion","porcentaje")), decimals = 1, dec_mark = ",", sep_mark = ".")

  gt_table <- gt::fmt_number(gt_table, columns = where(is.integer), decimals = 0, dec_mark = ",", sep_mark = ".")

  gt_table <- gt::data_color(gt_table,
                             columns = c(gt::starts_with(c("var_","variacion"))),
                             apply_to = "text",
                             colors = scales::col_bin(
                               bins = c(-Inf, 0, Inf),
                               palette = c(comunicacion::dnmye_colores("rosa"), comunicacion::dnmye_colores("azul verde")),
                             )
  )

  gt_table <- gt::tab_style(gt_table,
                            style = list(
                              gt::cell_text(weight =  "bold")
                            ),
                            locations = gt::cells_body(
                              columns = c(gt::starts_with("var_"))
                            ))

  gt_table <- gt::tab_style(gt_table,
                            style = gt::cell_fill(comunicacion::dnmye_colores("gris claro")),
                            locations = gt::cells_body(rows = {{var_total}} == "Total")
  )

  gt_table <- gt::tab_style(gt_table,
                            style = list(
                              gt::cell_text(weight =  "bold")
                            ),
                            locations = gt::cells_body(rows = {{var_total}} == "Total"
                            ))

  gt_table <- gt::opt_table_font(gt_table,
    font = list(
      gt::google_font(name = "Encode Sans")
    )
  )

  gt_table <- gt::sub_missing(gt_table, columns = gt::everything(), missing_text = "///")

  gt_table
}
