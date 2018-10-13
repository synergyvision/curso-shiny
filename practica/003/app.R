library(shiny)

ui <- sidebarLayout(
  sidebarPanel(
    sliderInput(inputId = "coinflipsi", label = "Lanzamientos de la moneda", min = 1, max = 10000, step = 1, value = 100)
  ),
  mainPanel(
    plotOutput("plot")
  )
)
# Define server logic for random distribution app ----
server <- function(input, output) {

  # Reactive expression to generate the requested distribution ----
  # This is called whenever the inputs change. The output functions
  # defined below then use the value computed from this expression
  coinflips <- reactive({
    coins<-c()
    for (i in (1:input$coinflipsi)) {
      coins<-c(coins, rbinom(n = 1, size = 1, prob = 0.5))
    }
    return(coins)
  })

  # Generate a plot of the data ----
  # Also uses the inputs to build the plot label. Note that the
  # dependencies on the inputs and the data reactive expression are
  # both tracked, and all expressions are called in the sequence
  # implied by the dependency graph.
  output$plot <- renderPlot({
    flips <- coinflips()
    means <- c(flips[1])
    for (i in (2:length(flips))) {
      means<-c(means, (flips[i]/i)+(means[i-1]*((i-1)/i)))
    }

    plot(means,
         main = "Media de los lanzamientos",
         type="l")
  })

}

shinyApp(ui = ui, server = server)
