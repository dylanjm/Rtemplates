# Package: StatsBYUI
# Template: Math 325 Analysis (HTML)
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

math325_analysis <- function() {
  # get the locations of resource files located within the package
  # css <- system.file("reports/styles.css", package = "Math325")
  # header <- system.file("reports/quarterly/header.html", package = "mypackage")
  
  # call the base html_document function
  rmarkdown::html_document(theme = 'cerulean',
                           fig_align = 'center',
                           fig_height = 6,
                           fig_width = 12,
                           message = 'no',
                           warning = 'no')
}