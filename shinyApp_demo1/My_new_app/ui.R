# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("My Liquor Webpage"),
  
  
  sidebarPanel(strong("This is the sidebar")),
  
  mainPanel(plotOutput("Hist_AlcCount"))
)
