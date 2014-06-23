library(shiny)

# Define UI for slider demo application
shinyUI(fluidPage(
        
        #  Application title
        titlePanel("Random Number Generation in R"),
        
        # Sidebar with sliders that demonstrate various available options
        sidebarLayout(
                sidebarPanel(
                        # Simple integer interval
                        sliderInput("n", "Quantity of Randoms to Generate:", 
                                    min=1, max=100, value=50),
                        
                        
                        # Specification of range within an interval
                        sliderInput("seed", "Seed:",
                                    min = 1, max = 1000, value = 500),
                
                        # add some instruction on use
                        helpText("Move the sliders to choose values,",
                         " the historgram will update automatically.")) ,
                # Show a table summarizing the values entered
                mainPanel(
                        tableOutput("values"),
                        plotOutput("hist1", width = 400, height = 300)
                )
        )
))