library(shinydashboard)
library(leaflet)
library(dplyr)
library(curl) 

server <- function(input, output){
  
  datos <- reactive()
  
  output$map <- renderLeaflet({
    leaflet(data = datos()) %>%
      addProviderTiles("CartoDB.Positron") %>%
      addMarkers(~long, ~lat, popup = ~Clave)
  })
}