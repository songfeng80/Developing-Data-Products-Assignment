# Developing-Data-Products-Assignment

Coursera Project

This peer assessed assignment has two parts. First, you will create a Shiny application and deploy it on Rstudio's servers. Second, you will use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about your application.

NCCTG Lung Cancer Data
This data set is about Survival in patients with advanced lung cancer from the North Central Cancer Treatment Group. It includes the following variables:

nst: Institution code

time: Survival time in days

status: censoring status 1=censored, 2=dead

age: Age in years

sex: Male=1 Female=2

ph.ecog: ECOG performance score (0=good 5=dead)

ph.karno: Karnofsky performance score (bad=0-good=100) rated by physician

pat.karno: Karnofsky performance score as rated by patient

meal.cal: Calories consumed at meals

wt.loss: Weight loss in last 6 months




Part1: Shiny Application
This part a Shiny App was developed to predict the lung cancer patient survival time using AFT model developed using the lung cancer data. The App asks user to input the variables, and it also provides option to plot the survival curves based on the Cox PH model.

The R codes are saved at:
https://github.com/songfeng80/Developing-Data-Products-Assignment/ui.R
https://github.com/songfeng80/Developing-Data-Products-Assignment/server.R

The App is available at:
https://alecwang.shinyapps.io/Developing-Data-Products-Assignment/

Part2: Reproducible Pitch Presentation

The Slidify Rmd file is saved at
https://github.com/songfeng80/Developing-Data-Products-Assignment/index.Rmd
The Slidify html file is saved at
https://github.com/songfeng80/Developing-Data-Products-Assignment/index.html