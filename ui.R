#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Predict Magnitude of Earthquake from Peak Accelaration"),
  h2("Using Joyner–Boore Attenuation Data"),
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderAccel",
                  "Select Peak Acceleration",
                   min = 0,
                   max = 0.8,
                   value = 0.5)
    ),
    
    # Show a plot of the generated distribution and prediction based on the model
    mainPanel(
       plotOutput("distPlot"),
       h3("Predicted Magnitude from Model:"),
       textOutput("pred")
    )
  )
))
