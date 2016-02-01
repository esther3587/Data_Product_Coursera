library(shiny)


fluidPage(
    
    titlePanel("Circle Area Calculator"),
    
    sidebarPanel(
        
        sliderInput('diameter', 'Diameter', 10, min=1, max=100,
                    step=5, ),
        submitButton('Submit')
        
        
    ),
    
    mainPanel(
        h3('Result of calculation'),
        h4('You entered'),
        verbatimTextOutput("inputValue"),
        h4('Which results in a calculation of'),
        verbatimTextOutput("prediction")
    )
)
