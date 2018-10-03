library(shiny)

# Página vacia
ui <- fluidPage()
# Definición de un servidor vacio
server <- function(input, output) {}

# Create Shiny app ----
#shinyApp(ui = htmlTemplate("www/index.html"), server = server)
shinyApp(ui = ui, server = server)
