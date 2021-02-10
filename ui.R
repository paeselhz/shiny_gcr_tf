shinyUI(
  fluidPage(
    ##-- Favicon ----
    tags$head(
      #-- biblio js ----
      tags$link(rel="stylesheet", type = "text/css",
                href = "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"),
      tags$link(rel="stylesheet", type = "text/css",
                href = "https://fonts.googleapis.com/css?family=Open+Sans|Source+Sans+Pro")
    ),
    ##-- Logo ----
    div(style="padding: 1px 0px; width: '100%'",
        titlePanel(
          title="", windowTitle = "Shiny Test WebApp - New Version"
        )
    ),
    theme = "styles.css",
    # theme = shinythemes::shinytheme("lumen"),
    navbarPage(
      title = "",
      id = "navbar",
      theme = "styles.css",
      selected = "home",
      fluid = TRUE,
      tabPanel(
        title = "Home",
        value = "home",
        hr(),
        column(width = 12,
               h1("Shiny Test WebApp - New Version")),
        br()
      )
    )
  )
)