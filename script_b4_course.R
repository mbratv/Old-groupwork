## DESCRIPTION: Preparatory script for RMED901
## AUTHOR: Julia Romanowska
## DATE CREATED: 2022-08-09
## DATE MODIFIED: 2022-08-22

# SETUP ----
# Install all these libraries:
libs_to_install <- c(
	"rmarkdown",
	"knitr",
	"tidyverse",
	"finalfit",
	"skimr",
	"naniar",
	"here",
	"visdat",
	"gtsummary",
	"GGally",
	"ggiraph",
	"devtools"
)

invisible(
  sapply(
  	libs_to_install,
  	function(lib){
  		if(!requireNamespace(lib)){
  			install.packages(lib)
  		}
  	}
  )
)

# CHECK KNITTING ----
library(rmarkdown)
library(knitr)

test_rmd_file <- "test.Rmd" 
if(file.exists(test_rmd_file)){
	rmarkdown::render(test_rmd_file)
} else {
	warning(paste0("Can't find ", test_rmd_file,
								 " file - did you place it in this folder? ", getwd()))
}

# If you don't get any errors, you're done.
# Contact the IT department at your institution if you get any errors!
