shinyUI(fluidPage(
  titlePanel("The Car Comparison App"),
  
  sidebarLayout(
    sidebarPanel(
      
      radioButtons("chooseTrans", label = h5("Automatic or Manual transmission"),
                   choices = list("Automatic"=0, "Manual"=1),
                   selected = 0),
      
      br(),
      
      sliderInput("chooseMPG", label=h5("Select fuel consumption (MPG)"),
                  min = 10, max = 35, value = c(10, 35)),
      
      br(),
      
      selectInput("viewVar", h5("View which variable"), 
                  names(mtcars)[c(2,3,4,5,6,7,8,11)])),
    
    
    mainPanel(h4("View stats:"),
              
              plotOutput("plot1"),
              helpText(   a("Click Here for Help", href="https://github.com/davidjruyle/data_products_app/blob/master/documentation.Rmd")
              )
  ))))



  