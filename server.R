

library(shiny)

shinyServer(function(input, output) {
   
  output$NDPlot <- renderPlot({
    number<-input$n
    x<-  input$mu
    y <- input$lambda
    
    ND<-rnorm(n=number,mean = x,sd=y)
    plot(ND,ylim = c(-200,200))
  })
  
})
