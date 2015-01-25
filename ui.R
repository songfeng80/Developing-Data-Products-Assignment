library(shiny)

shinyUI (
  pageWithSidebar (
    # Application title
    headerPanel ("Predict Lung Cancer Patients Survival"),
    sidebarPanel (
      numericInput('age', 'Age', 60, min = 30, max= 90, step = 1),
      selectInput('sex', 'Gender', c("Male"=1,"Female"=2)),
      
      selectInput('ph.ecog', 'ECOG performance score (0=good 5=dead)', c("0"=0,"1"=1, "2"=2, "3"=3, "4"=4, "5"=5)),
    
      numericInput('ph.karno', 'Karnofsky performance score rate by Physician (bad=0, good=100))', 80, min = 0, max= 100, step = 1),
      numericInput('pat.karno', 'Karnofsky performance score as rate by patient (bad=0-good=100)', 80, min = 0, max= 100, step = 1),
      numericInput('meal.cal', 'Calories consumed at meals', 1000, min = 100, max= 5000, step = 1),
      numericInput('wt.loss', ' Weight loss (pounds) in last six months', 10, min = -50, max= 80, step = 1),
      
      
      checkboxInput("plotS","Plot Survival Curves?", TRUE),
      submitButton('Submit')
    ),
    mainPanel (
      h3 ('Results of prediction'),
      h4 ('The Predicted Survival Time in Days:'),

      textOutput("prediction"),
  
      
      h4 ('The Estimated Survival Curve:'),
      plotOutput("survPlot"),
      helpText("This application predicts survival times in patients with advanced lung cancer based on data from the North Central Cancer Treatment Group.
       Performance scores rate how well the patient can perform usual daily activities. Data is available in R survival package"), 
      code("Lung Cancer Survival")
    )
  )
)