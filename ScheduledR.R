library(rmarkdown)
# library(pander)
library(rstudioapi)
# library(cronR)

a <- c((1 + 2)*33, Sys.time(), "a")
write(a, "~/RepTemplates/BibliographicStudies/a.txt")



# 
Sys.setenv(RSTUDIO_PANDOC="/Applications/RStudio.app/Contents/MacOS/pandoc"); rmarkdown::render(input = "/Users/serdarbalciold/RepTemplates/BibliographicStudies/ScheduleTrialBibliographic.Rmd", output_format = "html_notebook", output_file = "/Users/serdarbalciold/RepTemplates/BibliographicStudies/index.html", quiet = TRUE)

b <- c((1 + 2)*33, Sys.time(), "b")
write(b, "~/RepTemplates/BibliographicStudies/b.txt")

#
# Sys.sleep(time = 2)
#
CommitMessage <- paste("updated on ", Sys.time(), sep = "")
gitCommand <- paste("git add . \n git commit --message '", CommitMessage, "' \n git push origin master \n", sep = "")
# cd /Users/serdarbalciold/RepTemplates/BibliographicStudies/ \n
# Sys.sleep(time = 2)
#
gitTerm <- rstudioapi::terminalCreate(show = FALSE)
#
# Sys.sleep(time = 2)
#
rstudioapi::terminalSend(gitTerm, gitCommand)

c <- c((1 + 2)*33, Sys.time(), "c")
write(c, "~/RepTemplates/BibliographicStudies/c.txt")