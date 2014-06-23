library(shiny)

# Define server logic for slider examples
shinyServer(function(input, output) {
        
        # Reactive expression to compose a data frame containing all of the values
        sliderValues <- reactive({
                
                # Compose data frame
                data.frame(
                        Name = c("N",
                                 "Seed"),
                        Value = as.character(c(input$n, 
                                               input$seed)), 
                        stringsAsFactors=FALSE)
        }) 
        
        # Show the values using an HTML table
        output$values <- renderTable({
                sliderValues()
        })
        
        #input$goButton
        
        output$hist1 <- renderPlot({
                set.seed(input$seed)
                hist(rnorm(input$n))
                
        })
})