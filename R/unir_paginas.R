#' Función para agregar hojas institucionales a los informes generados con el template de la DNMyE
#'
#' @param input Ruta con el PDF del informe
#' @param save_as Nombre y ruta del informe a guardar
#' @param topic Tema del informe. Puede ser: "calidad", "competitividad hotelera", "eoh", "sector hotelero", "internacional", "interno", "inversiones", "naturaleza", "naturaleza apn" o "generico"
#' @param back_colour Color de la contratapa. Puede ser "gris" (default) o "celeste"
#' @examples
#' \dontrun{
#'   unir_paginas(input = "eoh.pdf",
#'    save_as = "informe_eoh_junio_2022.pdf",
#'    topic = "eoh",
#'    back_colour = "gris"
#'  )
#' }
#' @export

unir_paginas <- function(input, save_as, topic, back_colour = "gris") {

  staplr::select_pages(1, input_filepath = input, output_filepath = "cover.pdf")

  n_pages <- as.numeric(pdftools::pdf_info(input)$pages)

  staplr::select_pages(2:n_pages, input_filepath = input, output_filepath = "body.pdf")


  if(Sys.info()["nodename"] != "dev-rstudio-vra-ubuntu") {
  if (topic == "calidad") {
    topic_path <- "https://tableros.yvera.tur.ar/recursos/hojas_institucionales/calidad_turistica_ct.pdf"
  } else if(topic == "competitividad hotelera") {
    topic_path <- "https://tableros.yvera.tur.ar/recursos/hojas_institucionales/competitividad_hotelera_ct.pdf"
  } else if(topic == "eoh") {
    topic_path <- "https://tableros.yvera.tur.ar/recursos/hojas_institucionales/encuesta_ocupacion_hotelera_ct.pdf"
  } else if(topic == "sector hotelero") {
    topic_path <- "https://tableros.yvera.tur.ar/recursos/hojas_institucionales/encuesta_ocupacion_hotelera_ct.pdf"
  } else if(topic == "internacional") {
    topic_path <- "https://tableros.yvera.tur.ar/recursos/hojas_institucionales/turismo_internacional_ct.pdf"
  } else if(topic == "interno") {
    topic_path <- "https://tableros.yvera.tur.ar/recursos/hojas_institucionales/turismo_interno_ct.pdf"
  } else if(topic == "inversiones") {
    topic_path <- "https://tableros.yvera.tur.ar/recursos/hojas_institucionales/inversiones_turisticas_ct.pdf"
  } else if(topic == "naturaleza") {
    topic_path <- "https://tableros.yvera.tur.ar/recursos/hojas_institucionales/turismo_naturaleza_ct.pdf"
  } else if(topic == "naturaleza apn") {
    topic_path <- "https://tableros.yvera.tur.ar/recursos/hojas_institucionales/turismo_naturaleza_apn_ct.pdf"
  } else if(topic == "generico") {
    topic_path <- "https://tableros.yvera.tur.ar/recursos/hojas_institucionales/generico_st.pdf"
  }

    temp <- tempfile()

    utils::download.file(topic_path, temp, method = "curl", quiet = T)

    temp_back <- tempfile()

    utils::download.file(ifelse(back_colour == "gris",
                         "https://tableros.yvera.tur.ar/recursos/hojas_institucionales/contratapa.pdf",
                         "https://tableros.yvera.tur.ar/recursos/hojas_institucionales/contra_tapa.pdf"), temp_back,
                  method = "curl", quiet = T)

    suppressWarnings(staplr::staple_pdf(input_files = c("cover.pdf",
                                                        temp,
                                                        "body.pdf",
                                                        temp_back),
                                        output_filepath = save_as))

    invisible(file.remove(c("cover.pdf","body.pdf",temp,temp_back)))
  } else {
    if (topic == "calidad") {
      topic_path <- "/srv/shiny-server/recursos/hojas_institucionales/calidad_turistica_ct.pdf"
    } else if(topic == "competitividad hotelera") {
      topic_path <- "/srv/shiny-server/recursos/hojas_institucionales/competitividad_hotelera_ct.pdf"
    } else if(topic == "eoh") {
      topic_path <- "/srv/shiny-server/recursos/hojas_institucionales/encuesta_ocupacion_hotelera_ct.pdf"
    } else if(topic == "sector hotelero") {
      topic_path <- "/srv/shiny-server/recursos/hojas_institucionales/encuesta_ocupacion_hotelera_ct.pdf"
    } else if(topic == "internacional") {
      topic_path <- "/srv/shiny-server/recursos/hojas_institucionales/turismo_internacional_ct.pdf"
    } else if(topic == "interno") {
      topic_path <- "/srv/shiny-server/recursos/hojas_institucionales/turismo_interno_ct.pdf"
    } else if(topic == "inversiones") {
      topic_path <- "/srv/shiny-server/recursos/hojas_institucionales/inversiones_turisticas_ct.pdf"
    } else if(topic == "naturaleza") {
      topic_path <- "/srv/shiny-server/recursos/hojas_institucionales/turismo_naturaleza_ct.pdf"
    } else if(topic == "naturaleza apn") {
      topic_path <- "/srv/shiny-server/recursos/hojas_institucionales/turismo_naturaleza_apn_ct.pdf"
    } else if(topic == "generico") {
      topic_path <- "/srv/shiny-server/recursos/hojas_institucionales/generico_st.pdf"
    }

    suppressWarnings(staplr::staple_pdf(input_files = c("cover.pdf",
                                                        topic_path,
                                                        "body.pdf",
                                                        ifelse(back_colour == "gris",
                                                               "/srv/shiny-server/recursos/hojas_institucionales/contratapa.pdf",
                                                               "/srv/shiny-server/recursos/hojas_institucionales/contra_tapa.pdf")),
                                        output_filepath = save_as))

    invisible(file.remove(c("cover.pdf","body.pdf")))
  }


  if (file.exists(save_as)) {
    message("PDF generado correctamente")
  }

}
