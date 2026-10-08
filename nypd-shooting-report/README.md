# NYPD Shooting Incident Data Report

This project analyzes the archived NYPD Shooting Incident Data (Historic) dataset for 2006 through 2024. It examines changes over time, borough differences, victim age groups, and associations with the statistical murder flag.

## Files

- `nypd_shooting_incident_report.Rmd` - reproducible R Markdown source
- `data/nypd_shooting_incident_historic.csv` - archived input data used by the report
- `presentation/nypd_shooting_presentation.pptx` - presentation for the final video
- `presentation/nypd_shooting_speaker_notes.md` - timed narration guide

## Reproduce the report

1. Download or clone this repository.
2. Open `nypd_shooting_incident_report.Rmd` in RStudio.
3. Install the required packages if needed:

```r
install.packages(c("tidyverse", "lubridate", "janitor", "broom"))
```

4. Set the working directory to `nypd-shooting-report` or open the file from that directory.
5. Click **Knit** to generate the HTML report.

The report reads the included CSV using a relative path. No personal file paths or credentials are required.

## Data source

NYC Open Data / Data.gov: [ARCHIVED_NYPD Shooting Incident Data (Historic)](https://catalog.data.gov/dataset/archived-nypd-shooting-incident-data-historic)

The repository includes the archived CSV used for the analysis so that results do not change if the remote endpoint is updated.

