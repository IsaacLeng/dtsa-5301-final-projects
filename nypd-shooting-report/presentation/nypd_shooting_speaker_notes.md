# NYPD Shooting Incident Data Presentation Notes

Target length: approximately 8 minutes. Keep the camera close to eye level and speak from the ideas rather than reading every sentence.

## Slide 1 - Title (about 30 seconds)

Hello. This presentation summarizes my analysis of the archived NYPD Shooting Incident Data. I focus on changes over time, differences across boroughs, victim age groups, and a logistic regression of the statistical murder flag. The dataset covers 2006 through 2024 and contains 29,744 records.

## Slide 2 - Research questions and data (about 60 seconds)

The analysis asks three questions. First, how did recorded shootings change over time? Second, how do raw counts differ by borough and victim age group? Third, which recorded characteristics are associated with the statistical murder flag?

The file contains 29,744 rows and 23,298 distinct incident keys. This means some incident keys appear more than once. The archived structure may connect one incident to multiple victim or offender records. I keep the row-based analysis used in my report, but I treat repeated keys as an important limitation.

## Slide 3 - Annual pattern (about 75 seconds)

The annual series does not follow a straight line. Recorded rows generally declined from 2006 through 2018. The lowest annual count was 958 in 2018.

Counts then increased sharply in 2020 and reached 2,011 in 2021. They later declined to 1,182 in 2024. The timing raises questions about pandemic disruption, policing, reporting, and economic conditions. However, the chart only identifies the timing of the change. It does not show what caused it.

## Slide 4 - Borough differences (about 65 seconds)

Brooklyn has the largest raw count with 11,685 records. The Bronx follows with 8,834. Together they account for about 69 percent of all records. Queens and Manhattan have lower counts, while Staten Island has the fewest.

These numbers are raw counts. They do not adjust for residential population, daytime activity, land area, or exposure. Therefore, the graph should not be interpreted as showing that an individual resident faces a particular level of risk.

## Slide 5 - Victim age groups (about 60 seconds)

Victim records are concentrated among people aged 18 to 44. The 25 to 44 group has 13,563 records, while the 18 to 24 group has 10,677. Together, those groups represent 81.5 percent of the archived file.

This is a descriptive pattern. The dataset does not provide the population size or exposure for each age group, so these counts do not calculate age-specific risk.

## Slide 6 - Logistic regression (about 100 seconds)

I used logistic regression to model whether the statistical murder flag was true. The predictors are borough, victim age group, and victim sex. The reference categories are Brooklyn, victims aged 25 to 44, and male victims.

Most borough confidence intervals include or approach one. This means the model does not show strong borough separation after accounting for the included age and sex categories.

The age-group associations are clearer. Compared with ages 25 to 44, records for victims under 18 and ages 18 to 24 have lower estimated odds. Records for ages 45 to 64 and 65 or older have higher estimated odds. These results describe associations in the archived data. They do not show that age caused the outcome.

## Slide 7 - Interpretation and limitations (about 80 seconds)

The analysis supports statements about annual patterns, raw differences across groups, and conditional associations in a simple model.

Several limitations restrict stronger claims. Raw counts lack population and exposure denominators. Missing demographic fields may create selection bias. The file also contains 6,446 rows beyond one row per distinct incident key. This repeated structure weakens the independence assumption used by a standard logistic regression.

The archived dataset has since been replaced by separate shootings, victim, and offender datasets. That newer structure reflects the difficulty of representing incidents with multiple people in one table.

## Slide 8 - Conclusion (about 55 seconds)

The analysis shows three main patterns. Annual counts reached their lowest point in 2018, surged during 2020 and 2021, and then declined. Brooklyn and the Bronx have the largest raw counts, although those counts do not measure individual risk. In the regression, borough odds ratios remain close to one, while several age-group associations are more pronounced.

The appropriate conclusion is descriptive. These archived records identify patterns and questions for further study, but they do not establish causes. Thank you.

