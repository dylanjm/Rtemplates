# Package: HomeworkBYUI
# Template: Homework Template (PDF)
# Dylan McDowell
# October 23rd, 2017
#
# Custom formatting function
# used to abstract away YAML settings from students.
# Creates a minimalistic YAML in the template and also
# allows for quick changes and better customization.
#' @export
# TODO:
# - Develop a possible TeX header

homework_pdf <- function() {
  template_file = system.file('rmarkdown',
                              'templates',
                              'homework',
                              'resources',
                              'homework_template.tex',
                              package = "HomeworkBYUI")

  # call the base pdf_document function
  rmarkdown::pdf_document(template = template_file,
                          highlight = "tango",
                          latex_engine = "pdflatex")
}
