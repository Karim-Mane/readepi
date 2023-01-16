## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(readepi)

## ----eval=FALSE---------------------------------------------------------------
#  file = "/Users/karimmane/Documents/Karim/LSHTM/Data/test.json"
#  data = readepi(file.path = file)

## ----eval=FALSE---------------------------------------------------------------
#  file = "/Users/karimmane/Documents/Karim/LSHTM/Data/For_correlation.xlsx"
#  data = readepi(file.path = file, which = "Sheet2")

## ----eval=FALSE---------------------------------------------------------------
#  # reading all files in the given directory
#  dir.path = "/Users/karimmane/Documents/Karim/LSHTM/Data"
#  data = readepi(file.path = dir.path)
#  
#  # reading only txt files
#  data = readepi(file.path = dir.path, pattern = "txt")

## ----eval=FALSE---------------------------------------------------------------
#  credentials.file = "/Users/karimmane/Documents/Karim/LSHTM/Data/.credentials_karim.ini"
#  
#  # reading all fields and records the project
#  data = readepi(credentials.file, project.id="Pats__Covid_19_Cohort_1_Screening")
#  project.data = data$data
#  project.metadeta = data$metadata
#  
#  # reading specified fields and all records from the project
#  fields = c("day_1_q_ran_id","redcap_event_name","day_1_q_1a","day_1_q_1b","day_1_q_1c","day_1_q_1","day_1_q_2","day_1_q_3","day_1_q_4","day_1_q_5")
#  data = readepi(credentials.file, project.id="Pats__Covid_19_Cohort_1_Screening", fields = fields)
#  
#  # reading specified records and all fields from the project
#  records = c("C10001/3","C10002/1","C10003/7","C10004/5","C10005/9","C10006/8","C10007/6","C10008/4","C10009/2","C10010/1")
#  data = readepi(credentials.file, project.id="Pats__Covid_19_Cohort_1_Screening", records =  records)
#  
#  # reading specified records and fields from the project
#  data = readepi(credentials.file, project.id="Pats__Covid_19_Cohort_1_Screening", records =  records, fields = fields)

## ----eval=FALSE---------------------------------------------------------------
#  # reading all fields and all records from the `dss_events` table
#  data = readepi(credentials.file, project.id="IBS_BHDSS", driver.name = "ODBC Driver 17 for SQL Server", table.name = "dss_events")
#  
#  # reading specified fields and all records from the table
#  data = readepi(credentials.file, project.id="IBS_BHDSS", driver.name = "ODBC Driver 17 for SQL Server", table.name = "dss_events", fields = fields)
#  
#  # reading specified records and all fields from the table
#  data = readepi(credentials.file, project.id="IBS_BHDSS", driver.name = "ODBC Driver 17 for SQL Server", table.name = "dss_events", records = records)
#  
#  # reading specified fields and records from the table
#  data = readepi(credentials.file, project.id="IBS_BHDSS", driver.name = "ODBC Driver 17 for SQL Server", table.name = "dss_events", records = records, fields = fields)

