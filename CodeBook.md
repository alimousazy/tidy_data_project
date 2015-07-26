# Code book

This file will describe variable, data, and  transformation happend to clean up the data.


### Variables 
 

 - feature: holds the name of colums or mesurment for the experminet.

 - activity_label: Mapping for the activity (Walking, Sitting, ...).

 - subject: List of IDS represent subject who conduct the experminet.

 - x_data: Contain data from the X experminent.

 - y_data: Contain data from the Y experminent.

 - total: data table which contain the results of two experminent dataset (test, train)

 ### Transformation 
 -  Load x and y data using read.table.
 -  Change the colm names of x using existing mapping feature.
 -  Bind y_data with subject and change colm names to meaningful name.
 -  Extract only colums which contains median or std.
 -  Colum bind y_data, subject and x_data(cleaned one).
 -  Prepare data for grouping by melting all mesurment except Activity and Subject.Number.
 -  Group by based on Activity, Subject.Number and mesurment name.
 -  Find the median for each group.
 -  Summarise the result.
 -  Change the result from wide to long table using dcast.
 -  Write the tidy data to tidy_data.txt.

