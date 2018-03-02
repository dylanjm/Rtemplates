# Package: Stats Presentation
# Template: Homework Template (Beamer)
# Dylan McDowell
# February 12th, 2018
#
# Custom formatting function
# used to abstract away YAML settings from students.
# Creates a minimalistic YAML in the template and also
# allows for quick changes and better customization.
#
# TODO:
# - Develop a possible TeX header

stats_presentation <- function() {
  template_file = system.file('rmarkdown',
                              'templates',
                              'report',
                              'resources',
                              'beamer.tex',
                              package = "StatsPresentation")

  base_format = rmarkdown::beamer_presentation(template = template_file,
                                               highlight = "kate",
                                               latex_engine = "pdflatex",
                                               slide_level = 2)

}
