#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Motor Trend Car Road Tests"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput("var",
                        "select which variable you wish to plot:",
                        choices=names(mtcars),
                        selected = mtcars$mpg,
                        multiple = FALSE,
                        selectize = FALSE,
                        width = NULL,
                        size = NULL
                        ),
            sliderInput("bins",
                        "Number of bins plotted in the histogram:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
