library(shiny)
server<-function (input, output, session) {
        output$dump<-renderPrint({
                dataset<-get(input$dataset,"package:datasets", inherits = FALSE)
                str(dataset)
        })
        output$plot<-renderPlot({
                dataset<-get(input$dataset,"package:datasets", inherits = FALSE)
                plot(dataset)
        })
        output$table<-renderTable({
                dataset<-get(input$dataset,"package:datasets", inherits = FALSE)
                dataset
        })
}
