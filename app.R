library(tidyverse)
library(shiny)
library(shinytitle)
library(rsconnect)

# Read cleaned csv
korg <- read.csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vS-wpF1VNO5L_lYSNpcVbXoR2N2pQcIO16ZgJg2R4jhasx_XOHnflRtfLuJp85Ft38oZjqIruSXZ1MQ/pub?output=csv") %>% 
  select(BANK, NUMBER, NAME)

ui <- fluidPage(
  titlePanel("Korg N1/N5 Voice Look-Up"),
  textInput("term", "Show me the voice names that contain the term..."),
  tableOutput("table")
)

server <- function(input, output, session) {
  output$table <- renderTable(
    korg[grep(input$term, korg$NAME, ignore.case = T),]
  )
}

shinyApp(ui, server)



