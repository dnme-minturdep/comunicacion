

### Paletas institucionales

dnmye_paletas <- function(palette = "c10_todos", reverse = FALSE, ...) {

  ### Paleta de colores
  paletas <- list(

    `c2_continuo`  = c("#50B8B1", "#9283BE"),
    `c2_contraste` = c("#50B8B1", "#EE3D8F"),
    `c10_todos`     = c("#EE3D8F", "#F7941E", "#FFD100", "#D7DF23", "#50B8B1",
                        "#9283BE", "#37BBED", "#50535C", "#AAAAAA", "#E7E7E7"))

  pal <- paletas[[palette]]

  if (reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)
}
