library(shiny)
library(survival)


data(lung)
mod_AFT<-survreg(Surv(time,status-1)~age+factor(sex)+ph.ecog+ph.karno+pat.karno+meal.cal+wt.loss, data=lung,dist="weibull")

mod_PH<-coxph(Surv(time,status-1)~age+factor(sex)+ph.ecog+ph.karno+pat.karno+meal.cal+wt.loss, data=lung)

shinyServer(
  function(input, output) {

    output$prediction <- renderPrint ({
      age = input$age
      sex = input$sex
      ph.ecog = as.numeric(input$ph.ecog)
      ph.karno = input$ph.karno
      pat.karno = input$pat.karno
      meal.cal = input$meal.cal
      wt.loss = input$wt.loss
      ceiling(as.numeric(predict(mod_AFT,data.frame(age, sex, ph.ecog, ph.karno, pat.karno, meal.cal, wt.loss),interval="prediction"))) })
  
   
    output$survPlot <- renderPlot({
      if (input$plotS) {
      plot(survfit(mod_PH), lty = c(1,2,3), col=c(1,4,4), xlab="Days", ylab="Survival probability") 
      legend ("topright",c("predicted","lower bound","upper bound"), lty = c(1,2,3), col=c(1,4,4))
      } 
      })

  }
)