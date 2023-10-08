library(tidyverse)
library(rvest)

url <- "https://quarto.org/docs/reference/formats/html.html"
quarto_opts <- function(url, h2_skip = 1) {
  url %>% 
    read_html() -> html
  html %>% 
    html_table() -> opts
  html %>% 
    html_elements(css = "h2, h3") %>% 
    html_text() %>% 
    tail(., n = length(.) - h2_skip) -> h2
  tibble(h2 = h2, opts = opts) %>% 
    unnest(cols = opts) %>% 
    rename(opt = X1, desc = X2)
}

url <- "https://quarto.org/docs/reference/formats/html.html"
html_opts <- quarto_opts(url, h2_skip = 1)
html_opts %>% View()

url <- "https://quarto.org/docs/reference/cells/cells-knitr.html"
knitr_opts <- quarto_opts(url, h2_skip = 2)
knitr_opts %>% View()

url <- "https://quarto.org/docs/reference/cells/cells-jupyter.html"
jupyter_opts <- quarto_opts(url, h2_skip = 2)
jupyter_opts %>% View()

# url <- "https://quarto.org/docs/reference/projects/websites.html"
# website_opts <- quarto_opts(url, h2_skip = 1)
# website_opts %>% View()
