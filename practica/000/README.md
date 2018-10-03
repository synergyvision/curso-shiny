La intención del paquete `shiny` es ofrecer una opción para generar dinamismo mediante dos elementos fundamentales: la intercción y la reactividad. 

Para entender lo que ocurre vamos a ejecutar los comandos siguientes en la cónsola de R:

- **fluidPage()**
- **fluidPage(titlePanel("Hola Synergy Vision"))**

En este ejemplo básico vamos a crear un control **slider**

Move the *Number of bins* slider and notice how the `renderPlot` expression is automatically re-evaluated when its dependant, `input$bins`, changes, causing a histogram with a new number of bins to be rendered.
