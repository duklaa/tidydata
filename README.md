# tidydata #
## Project for Coursera course on Getting and Cleaning Data ##

The analysis script proceeds as follows:

1. Reads the names of the features and the activities from the respective files.

2. Reads the three parts of the training data (subject, activity, features) and merges them into a single dataset.

3. Reads the three parts of the test data (subject, activity, features) and merges them into a single dataset.

4. Merges the training and test data into a single data frame and converts it to a data frame table for use with dplyr.

5. Retains only the measurements on mean and standard deviation by keeping features that have "mean' and "std" in their names.

6. Converts the Activity variable to "Factor" form using the activity names (from Step 1) as the labels.

7. Creates a tidy data set by grouping the data by Subject and Activity and calculating the neam of each feature for every  combination of Subject+Activity.

8. Saves the tidy data to a txt file.
