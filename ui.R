library(shiny)
ui<-fluidPage(
        h1("Simple App"),
        h4("This app demonstrates simple data visualization and plotting principles
           using the 'dataset' package"),
        sidebarLayout(
                sidebarPanel( 
                        selectInput("dataset", "Select a Dataset - Please note
                                    because of individual data structures
                                    not all datasets will be plotted:",
                                    choices = ls("package:datasets"),
                                    selected="pressure")
                ),
                mainPanel("select a tab: str - summary; plot - figures; table - data",
                          tabsetPanel(
                                  tabPanel("str",
                                           verbatimTextOutput("dump")
                                  ),
                                  tabPanel("plot",
                                           plotOutput("plot")
                                  ),
                                  tabPanel("table",
                                           tableOutput("table")
                                  )
                          )
                )
        )
        )

