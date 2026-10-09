# Run from any directory: Rscript --vanilla path/to/render_report.R
args <- commandArgs(trailingOnly = FALSE)
script_arg <- grep("^--file=", args, value = TRUE)
if (length(script_arg)) {
  script <- normalizePath(sub("^--file=", "", script_arg[1]), mustWork = TRUE)
  setwd(dirname(script))
}
required <- c("rmarkdown", "knitr", "ggplot2")
missing <- required[!vapply(required, requireNamespace, logical(1), quietly = TRUE)]
if (length(missing)) stop("Install required packages first: ", paste(missing, collapse = ", "))
if (!rmarkdown::pandoc_available()) stop("Pandoc is required. Install RStudio or Pandoc.")
rmarkdown::render("covid19_cases_and_deaths.Rmd", encoding = "UTF-8",
                  envir = new.env(parent = globalenv()), clean = TRUE)
