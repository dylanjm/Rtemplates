# Package: HomeworkBYUI
# Template: Homework Template (PDF)
# Dylan McDowell
# October 23rd, 2017
#
# Custom formatting function
# used to abstract away YAML settings from students.
# Creates a minimalistic YAML in the template and also
# allows for quick changes and better customization.
#
# TODO:
# - Develop a possible TeX header

real_analysis_pdf <- function() {
  template_file = system.file('rmarkdown',
                              'templates',
                              'real_analysis',
                              'resources',
                              'real_analysis_template.tex',
                              package = "HomeworkBYUI")

  # call the base pdf_document function
  rmarkdown::pdf_document(template = template_file,
                          highlight = "tango",
                          latex_engine = "pdflatex")
}
