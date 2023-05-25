# Report Generator


## Getting Started



## Instructions

### Part 1 - gather data for the report

* Download this CSV file to the container -
https://github.com/datablist/sample-csv-files/raw/main/files/organizations/organizations-100.csv

* Extract a list of the full names of all the companies in the CSV file and
save it in the file /tmp/names.txt

* Summarize the number of employees across
all the entries in the CSV file and put the total number of employees into the
file /tmp/employee_count.txt, prefixed with the words "Total number of
employees: "

* Extract a list of all company names that contain the
abbreviation Inc and save that output in a file named /tmp/lines-with-inc.txt

### Part 2 - Create and save the final report

* Using the files above, create a final report, saved to the file /tmp/final-report.txt,  that contains

* The line "Reported created on " and the current date as a string (MM/DD/YYYY) along with the current public IP the container is using to communicate with the outside world (you get get that by doing an HTTP GET request to the URL https://api.ipify.org/ and capturing the response)

* Header line using the /tmp/employee_count.txt file

* A list of all the company names that contain “inc”, sorted by name, written
  out as a bulleted list (Use * for bullets), above the list put the header
  “Company names that contain the word Inc:”

* A list of all names of all people from the file /tmp/names.txt, sorted
  alphabetically by name, written out as a bulleted list (use * for bullets),
  above the list put the header “All names, sorted”

