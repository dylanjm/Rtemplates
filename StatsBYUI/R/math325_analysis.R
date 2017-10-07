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