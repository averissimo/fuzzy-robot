library(shiny)

app <- shinyApp(
    ui = fluidPage(
      numericInput("n", "n", 2),
      plotOutput("plot")
    ),
    server = function(input, output) {
      output$plot <- renderPlot( plot(head(cars, input$n)) )
    }
  )

runApp(app)
