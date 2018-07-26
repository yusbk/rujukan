
## Pakker som jeg trenger hvergang ny installasjon skal gjenomføres.
## Disse skal installeres om det ikke allerede gjort i folder "r-pakker"

load <- function(pkg){
  nypkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(nypkg))
    install.packages(nypkg, dependencies = TRUE, repos = "http://cran.r-project.org")
  sapply(pkg, require, character.only = TRUE)
}

pakker <- c("knitr", "data.table", "ggplot2", "shiny", "shinydashboard", "DT", "kableExtra", "gridExtra")
load(pakker)
x
