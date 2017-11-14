# Define server logic required to draw a histogram
server <- function(input, output) {
  bcl_data <- read.csv("Data/bcl-data.csv")
  
  output$Hist_AlcCount <- renderPlot({
              bcl_data %>%   
                ggplot()+
                  aes(x = Alcohol_Content) +
                  geom_histogram(binwidth = 5)
  })
}
