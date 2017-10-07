math335_analysis <- function() {
  # get the locations of resource files located within the package
  # css <- system.file("reports/styles.css", package = "Math325")
  # header <- system.file("reports/quarterly/header.html", package = "mypackage")
  
  # call the base html_document function
  rmarkdown::html_document(code_folding = "hide",
                           keep_md = "yes",
                           fig_height = 6,
                           fig_width = 12,
                           fig_align: 'center',
                           warning = FALSE,
                           message = FALSE)
}