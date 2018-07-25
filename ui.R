

library(shiny)

shinyUI(fluidPage(
  titlePanel("How the Normal Distribution Varies"),

  sidebarLayout(
    sidebarPanel(
      h2("Move the slide to adjust the values"),
      numericInput("n","The number of observations(1:1000):",
                  min = 100,max=1000, value=200),
       sliderInput("mu","The mean of normal distribution:",
                   min = -20,max = 20,value = 0),
      sliderInput("lambda","The SD of the distribution:",
                  min = 0,max = 100,value = 10)
    ),
    
    mainPanel(
      h1("Normal Distribution Plot"),
       plotOutput("NDPlot")
    )
  )
))
