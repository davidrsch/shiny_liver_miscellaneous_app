library(shiny)
library(shinyjs)

ui <- fluidPage(
  useShinyjs(),
  actionButton("button1", label = "Button1", class = "custom_class"),
  hidden(actionButton("button2", label = "Button2", class = "custom_class"))
)

server <- function(input, output, session) {
  observeEvent(input$button1, {
    showModal(modalDialog(
      title = "Hello!",
      "This is a modal dialog box for button1.",
      footer = modalButton("Close")
    ))
  })

  observeEvent(input$button2, {
    showModal(modalDialog(
      title = "Hello!",
      "This is a modal dialog box for button2.",
      footer = modalButton("Close")
    ))
  })
}

shinyApp(ui, server)
