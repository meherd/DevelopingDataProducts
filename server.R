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
  model<-lm(mag~accel,data = attenu)
  
  modelpred <- reactive({
    accelInput <- input$sliderAccel
    predict(model, newdata = data.frame(accel = accelInput))
  })
  
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    
    sliderAccel <- seq(min(x), max(x), length.out = input$sliderAccel + 1)
    
    # draw the histogram with the specified number of bins
    #hist(x, breaks = bins, col = 'blue', border = 'white',xlab = "Accelration",main = "Peak Accleration")
    plot(attenu$accel, attenu$mag, xlab = "Peak Acceleration",
         ylab = "Magnitude",main = "Peak Accleration vs Magnitude",abline(model, col = "red", lwd = 2)
    )
  })
  output$pred <- renderText({
    modelpred()
  })
})
