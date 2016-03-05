library(shiny)
library(datasets)
data(Orange)

Tyear <- function(Tcir) {
    fit<- lm(age~circumference,data=Orange)
    mod <- predict(fit,newdata=data.frame(circumference=Tcir),interval="predict")
    mod[1]
}

shinyServer(
    function(input, output) {
    output$inputValue <- renderPrint({input$Tcir})
    output$prediction <- renderPrint({Tyear(input$Tcir)})
    output$scatterPlot <- renderPlot({
        plot(Orange$circumference,Orange$age, xlab = "Tree Circumference (mm)",ylab="Tree Age (year)",col = 'blue',pch=16,cex=1.5)
        abline(lm(age~circumference,data=Orange),lwd=2)
        circum <- input$Tcir
        lines(c(circum,circum),c(0,2000),col="red",lwd="5")
    })
    
    }
)
