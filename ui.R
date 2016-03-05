library(shiny)

fluidPage(
    
    titlePanel("Orange Tree Age Predictor"),
    
    sidebarPanel(
        
        h3("Introduction:"),
        h5("This application uses the dataset included in", span("datasets", style = "color:red"),"package,",span("Orange",style = "color:red"),",a tabulated dataset containning records of the growth of orange trees."),
        h3("Method:"),
        h5("We use a linear model fit to predict the age of trees based on its trunk circumference."),
        h3("Age Calculator:"),
        
        sliderInput('Tcir', 'Tree Circumference (mm)', 100, min=30, max=210,
                    step=5),
        submitButton('Submit')
        
        
    ),
    
    mainPanel(
        h4('Tree circumference you entered : '),
        verbatimTextOutput("inputValue"),
        h4('Which results in a prediction of tree age (year) :'),
        verbatimTextOutput("prediction"),
        br(),
        h4('Graphic Representation of the dataset : '),
        h5('The red line represent the tree circumference you selected and the black line is the linear regression model fit. The blue dots are from the Orange dataset.'),
        plotOutput('scatterPlot')
    )
)
