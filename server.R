#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  #output$distPlot <- renderPlot({
    
    #generate bins based on input$bins from ui.R
    #x    <- quakes[, 4] 
    #bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    #hist(x, breaks = bins, xlab='Earthquake Magnitude', col = 'darkgray', border = 'white')
    
  #})
  
  output$distPlot2 <- renderPlot({
    
     #generate bins based on input$bins from ui.R
    x    <- quakes[, 3] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, xlab='Earthquake Depth', main ='Earthquake Depth Distribution',col = 'darkgray', border = 'white')
    
  })
  
  # Generate a summary of the dataset
  #output$summary <- renderPrint({
  #  summary(quakes)
  #})
  
})
