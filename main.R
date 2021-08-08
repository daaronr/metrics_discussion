####

# 'main_2020.R': this single file should (ideally) source and build all data, build codebooks, run all analysis, and build bookdown and other output

# In Rstudio, select 'Code - Run Region - Run all'

#### Setup ####

library(here)
library(pacman)
here <- here::here()
rename_all <- dplyr::rename_all
rename <- dplyr::rename


pacman::p_load(base, binom, data.table, digest, dplyr, forcats, gganimate, ggthemes, ggpubr, ggrepel,  ggridges, gtsummary,
               ggstatsplot, here, huxtable, infer, purrr, janitor, lmtest, magrittr, labelled, lubridate, plotly,
               readr, readstata13, rlang, santoku, scales, sjlabelled,  snakecase, surveytools2, tidyverse, treemapify, vtable,
               install = FALSE)

#arm, ggpointdensity failing to load

pacman::p_load_gh( "remotes", "tidymodels/corrr", install = FALSE)

#... Import packages for this project using template from dr-rstuff  ####
# - you don't need to do this each time, but it keeps it updated

source(here::here("code", "download_formatting.R"))

## You MUST run this for anything else to work (installs/loads key packages and functions):
source(here::here("code", "project_setup.R"))

### Source model-building tools/functions

source(here::here("code","modeling_functions.R"))


p_load("bettertrace")
#p_load("ggstatsplot")
p_load(likert)
#p_load(pubh, ggtext)

#options(error = searcher("stackoverflow"))

#### Build and clean all data from 2020 ####

##Import relevant dataframes and set filters ####

#IF YOU want it to run with the 'old' column names ... eas_20 <- d$eas_20

d_anim <-
  readline("Do you want animations? They take a long time... (Y/N)")

d_stan <-
  readline("Do you want Stan calculations? It takes a long time... (Y/N)")

#Do add an on/off switch for Stan stuff which takes a long time

{
  options(knitr.duplicate.label = "allow")
  rmarkdown::render_site(output_format = 'bookdown::gitbook', encoding = 'UTF-8')
}



