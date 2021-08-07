# Setup modeling tidying functions

# library(mice)
#library(brms)
library(broom.mixed)
#library(ggmcmc)
library(here)
library(tidyverse)

# Functions ---------------------------------------------------------------

##rename_to_var_label, zero_to_missing, missing_to_zero: added to functions.R in Rstuff

make_formula <- function(lhs, rhs) {
  stats::reformulate(response = lhs, termlabels = rhs,
                     env = globalenv()) # Formula is defined in the global environment
}

# Functions for Model-building and capture  ----------------------------------------------------


# Functions for "tidy`" linear models (regression); 
# also returning the model objects as we need these for a range of plots/analyses

# Make a model into a tidy object extract (and rename) coefficients and CIs (from a list/tibble including  columns 'term' and )

tidy_coefficient_names <- function(fit, replacement_names = NULL, model_name = NULL, ...){ 
  
  fit <- fit %>%
    broom::tidy(conf.int =TRUE, ...)
  
  # Rename terms if names were specified
  if (!is.null(replacement_names)) {
    fit <- fit %>%
      mutate(term = str_replace_all(term, replacement_names))
  }
  if (!is.null(model_name)) {
    fit <- fit %>%
      mutate(model_names = model_name)
  }
  
  return(fit)
  
}


# Fit linear (regression) model and return fit (not tidied, just regular)

fit_lm <- function(formula, df, replacement_names=NULL, #DR: replacement_names is not doing anything atm
                   keep_data = TRUE, #return 'model frame'
                   y = TRUE,
                   qr = TRUE,
                   keep_model_matrix=FALSE){
  
  fit <- lm(
    formula, data = df,
            model = keep_data, #whether to return 'model frame'
            x = keep_model_matrix, #whether to keep the model matrix
            y = y, #whether to keep the response
            qr = qr #whether to keep the 'QR decomposition', a factorization of the (?) model matrix
            )  
  
  return(fit)
}

# Tidy glm (quasipoisson as default)
fit_glm <- function(formula, df, family = quasipoisson,
                    replacement_names=NULL, 
                    keep_data = TRUE, 
                    y = TRUE,
                    qr = TRUE,
                    keep_model_matrix=FALSE){

# Function to run a GLM (?and return as tidy tibble)
  
  fit <- glm(formula, data = df,
             model = keep_data,
             x = keep_model_matrix,
             family = family,
             y = y)
  
  return(fit)
}

# Make dataframe with outcome variable, model formula and associated dataframe (uses make_formula defined above)
make_model_df <- function(indep_vars, outcome_vars, dfs){
  
  # Make all associated formulas
  formulas <- mapply(function(x, y) make_formula(x, y), x = outcome_vars, y = indep_vars)
  
  tibble(outcome = as.character(outcome_vars),
         formulas = formulas,
         dfs = dfs)
}

# Fit models using columns specifying formulas and required dataframes; 
#fit_lm as default modeling thing, but fit_glm, etc can also work

fit_models <- function(df, formulas_col, dfs_col, fun = fit_lm){
  
  assertthat::assert_that(is.character(formulas_col) & is.character(dfs_col),
                          msg = "Formulas and dfs column should be specified as strings")
  
  results <- map2(.x = pull(df, !!formulas_col),
                  .y = pull(df, !!dfs_col), ~ fun(.x, .y))
  return(results)
}

# Working in a Bayesian framework?

# Compile empty model (to avoid recompilation)
# bayes_lm_empty <- function(df, lhs, rhs){
#   fit <- brms::brm(make_formula(lhs, rhs),
#                    data = df,
#                    family = gaussian,
#                    chains = 0)
# }
#
# ## TODO: Get this to name variables properly
#
# # Update empty model
# fit_bayes_lm <- function(df, lhs, rhs, empty_fit){
#   model_formula <- make_formula(lhs, rhs)
#   update(empty_fit,
#          formula = model_formula,
#          newdata = df,
#          recompile = FALSE,
#          chains = 4)
# }

