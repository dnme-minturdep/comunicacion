# Function for DNMYE pdf template

Function for DNMYE pdf template

## Usage

``` r
template_informe(
  logo = "0",
  front_img = "0",
  back_img = "0",
  img_to_dark = FALSE,
  logo_to_white = FALSE,
  other_css = NULL,
  ...
)
```

## Arguments

- logo:

  Logo

- front_img:

  Front cover image

- back_img:

  Back cover image

- img_to_dark:

  Darken image

- logo_to_white:

  Tranform logo color to white - logo must be SVG

- other_css:

  Add an other CSS

- ...:

  Arguments passed to pagedown::html_paged

## Value

A pagedown template
