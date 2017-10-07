# Package: StatsBYUI
# Template: Math 335 Analysis (HTML)
# Dylan McDowell
# October 6th, 2017
#
# Custom formatting function
# used to abstract away YAML settings from students.
# Creates a minimalistic YAML in the template and also 
# allows for quick changes and better customization.
#
# TODO:
# - Integrate CSS formatting
# - Develop a possible HTML header 
# - Include Data Science Logo .png in the header.

math335_analysis <- function() {

  # call the base html_document function
  rmarkdown::html_document(code_folding = "hide",
                           keep_md = "yes",
                           fig_height = 6,
                           fig_width = 12,
                           fig_align = 'center',
                           warning = FALSE,
                           message = FALSE)
}