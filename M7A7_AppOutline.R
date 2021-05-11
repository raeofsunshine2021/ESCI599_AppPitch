#This is a super simple outline of my app
#I need to figure out how to add more inputs for the bar chart



#this is a nice demo:
    #https://shiny.rstudio.com/gallery/single-file-shiny-app.html
#interactive barplot demo:
    #https://www.youtube.com/watch?v=V17UQEvULCA&ab_channel=DataScienceTutorials

#Packages
library(shiny)
library(tidyverse)

produced <- 1000 #range of values 

#User Interface 
ui <- fluidPage(
    #title 
    titlePanel("Evergreen House Energy Snapshot"),
    #subtitle 
    mainPanel("House Info / Background about App"),
    #input boxes - practice
    numericInput('produced','Energy Produced', produced),
    plotOutput('plot')
)

#Server 
server <- function(input, output){
    #barchart of energy produced
    output$plot <- renderPlot({
        barplot(input$produced)
    })
}


#run app
shinyApp(ui, server)