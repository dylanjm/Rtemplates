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

  img_dir  <- system.file("resources", "images", package = "prettydoc")

  pre_processor <- function(metadata, input_file, runtime, knit_meta,
                            files_dir, output_dir) {
    if (!file.exists(files_dir))
      dir.create(files_dir)
    file.copy(img_dir,  files_dir, recursive = TRUE)
  }

  res <- rmarkdown::output_format(
    knitr = NULL,
    pandoc = NULL,
    pre_processor = pre_processor,
    ## Note that here `theme` and `highlight` are just parameters to make
    ## the HTML document tiny
    ## The real `theme` and `highlight` passed to html_pretty() are
    ## reflected in the final CSS file. Here `css` is set to NULL, but
    ## it will be set in the pre_processor() hook
    base_format = rmarkdown::beamer_presentation(template = template_file,
                                                   highlight = "kate",
                                                   latex_engine = "pdflatex")
  )

  res

}
