
# Wrangling Field Scans

Scenario: you are working with large field team that is collecting behavioral measurements on subjects, and returning individual files. Everything is in a big messy ball called `field_data_example.zip`.

A single data file might look like this:

```
"x1","x2","x3","x4","sample_date","site","subject_id","sex","age"
1.9,4,0,1,2022-10-09,"z",1,"Female",33
0.44,6,0,1,2022-10-09,"z",1,"Female",33
2.35,5,0,1,2022-10-09,"z",1,"Female",33
0.19,6,0,1,2022-10-09,"z",1,"Female",33
-0.37,4,0,1,2022-10-09,"z",1,"Female",33
```

details:
- each file represents a single subject, with five readings on four variables (x1 to x4), plus a timestamp and subject ID
- subject IDs repeat across sites
- some files are duplicated b/c of multiple uploads 
- some subjects were measured more than once
- the file naming conventions are not standard due to equipment changes

objectives:
1. wrangle all files into a unified folder structure with no duplicates and consistent 
2. create some kind of relational data structures to hold everything for research to begin
