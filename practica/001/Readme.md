La intención del paquete `shiny` es ofrecer una opción para generar dinamismo mediante dos elementos fundamentales: la intercción y la reactividad. 

Para entender lo que ocurre vamos a ejecutar los comandos siguientes en la cónsola de R:

- **fluidPage()**
- **fluidPage(titlePanel("Hola Synergy Vision"))**
- **titlePanel("Hello Synergy Vision!")**
- **titlePanel(div("Hola Synergy Vision!", style = "font-family: 'Lobster', cursive; font-weight: 500; line-height: 1.1; color: #acacac;"))**
- **sidebarLayout()**
- **sidebarLayout(sidebarPanel())**
- **sidebarLayout(sidebarPanel(),mainPanel())**
- Ver la ayuda de **sliderInput** y **plotOutput**

En este ejemplo básico vamos a crear un control **slider**

Move the *Number of bins* slider and notice how the `renderPlot` expression is automatically re-evaluated when its dependant, `input$bins`, changes, causing a histogram with a new number of bins to be rendered.
