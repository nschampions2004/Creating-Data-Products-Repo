library(shiny)
angleComp <- function(angle) 90 - angle

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$angle})
    output$complement <- renderPrint({
      if (input$angle < 0 || input$angle > 90)
           "Make sure your angle is between 0 and 90"
      
          else angleComp(input$angle)
          })
})
