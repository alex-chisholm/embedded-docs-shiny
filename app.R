library(shiny)

# Define UI
ui <- fluidPage(
  titlePanel("Embedded Docs in a Shiny App"),
  fluidRow(
    h2('PDF Report'),
    column(12,
           tags$iframe(
             src = "report.pdf",  # File is now served from the www directory
             width = "100%",
             height = "800px"
           )
    ),
    h2('HTML Report'),
    column(12,
           tags$iframe(
             src = "report.html",  # File is now served from the www directory
             width = "100%",
             height = "800px"
           )
    )
  )
)

# Define server logic
server <- function(input, output) {
  # No server-side logic required for this app
}

# Run the application
shinyApp(ui = ui, server = server)
