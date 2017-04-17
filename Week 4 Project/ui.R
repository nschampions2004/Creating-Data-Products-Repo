library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("What angle would you like to find the complement to?"),
  sidebarPanel(
    numericInput('angle', 'Numeric input for number of degrees', 0, min= 0, max = 90, step = 1),
    submitButton('Submit'),
    h3('(Make sure your value is between 0 and 90 degrees)')
),
  mainPanel(
    h3('You entered'),
    verbatimTextOutput("inputValue"),
    h3('Your angles complement is'),
    verbatimTextOutput("complement"),
    h3('degrees...')
  )
))