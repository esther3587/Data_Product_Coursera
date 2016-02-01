library(shiny)

area <- function(diameter) (diameter/2)^2*3.14
shinyServer(
    function(input, output) {
    output$inputValue <- renderPrint({input$diameter})
    output$prediction <- renderPrint({area(input$diameter)})
    
    }
)
