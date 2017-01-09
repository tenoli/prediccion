library(shinydashboard)
library(leaflet)

header <- dashboardHeader(
  title = "Tenoli"
)

body <- dashboardBody(
  fluidRow(
    column(width = 9,
           tabBox("ubipredi",
           width = NULL,
           tabPanel("Ubicacion",
           width = NULL, solidHeader = TRUE,
           leafletOutput("map", height = 500)
           ),
           tabPanel("Prediccion",
                    plotOutput("prediccion", height = 500)
           )
           ) 
    ),
    column(width = 3,
           box(width = NULL, status = "success",
               selectInput("centros",
                           label = "Centro",
                           choices = c(
                                      "Santa Cruz" = 1,
                                      "Agricola" = 2,
                                      "Maravillas" = 3,
                                      "Metropolitana" = 4
                                      )
               )
            ),
           box(
             width = NULL,
             status = "info",
             sliderInput("actitud",
                         "Actitud",
                         min = 0,
                         max = 1,
                         value = 0.5),
             sliderInput("potencial",
                         "Potencial",
                         min = 0,
                         max = 1,
                         value = 0.5)
           )
    )
  )
)

dashboardPage(
  skin = "black",
  header,
  dashboardSidebar(disable = TRUE),
  body
)