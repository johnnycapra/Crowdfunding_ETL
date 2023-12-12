# Crowdfunding_ETL

# Create the Category and Subcategory DataFrames

### Create the Category DataFrame

- Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame with columns:
  - "category_id" (entries sequentially from "cat1" to "catn")
  - "category" (contains only the category titles)
  
- Export the category DataFrame as category.csv and save it to your GitHub repository.

### Create the Subcategory DataFrame

- Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame with columns:
  - "subcategory_id" (entries sequentially from "subcat1" to "subcatn")
  - "subcategory" (contains only the subcategory titles)
  
- Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.

# Create the Campaign DataFrame

- Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame with columns:
  - "cf_id"
  - "contact_id"
  - "company_name"
  - "description" (renamed from "blurb")
  - "goal" (converted to float)
  - "pledged" (converted to float)
  - "outcome"
  - "backers_count"
  - "country"
  - "currency"
  - "launch_date" (renamed from "launched_at", UTC times converted to datetime format)
  - "end_date" (renamed from "deadline", UTC times converted to datetime format)
  - "category_id" (unique identification numbers matching "category_id" in the category DataFrame)
  - "subcategory_id" (unique identification numbers matching "subcategory_id" in the subcategory DataFrame)
  
- Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.

# Create the Contacts DataFrame

- Choose one of the following two options:

  ### Option 1:

  - Import the contacts.xlsx file into a DataFrame.
  - Iterate through the DataFrame, converting each row to a dictionary.
  - Iterate through each dictionary, extracting values from keys using a Python list comprehension.
  - Add values for each row to a new list.
  - Create a new DataFrame with the extracted data.
  - Split each "name" column value into a first and last name, placing each in a new column.
  - Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.

  ### Option 2:

  - Import the contacts.xlsx file into a DataFrame.
  - Extract the "contact_id", "name", and "email" columns using regular expressions.
  - Create a new DataFrame with the extracted data.
  - Convert the "contact_id" column to the integer type.
  - Split each "name" column value into a first and last name, placing each in a new column.
  - Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.

- Verify that your final DataFrame resembles the one in the provided image (final contact DataFrame).

# Create the Crowdfunding Database

- Inspect the four CSV files and sketch an ERD using [QuickDBD](https://www.quickdatabasediagrams.com/) - External link to QuickDBD.
- Use the information from the ERD to create a table schema for each CSV file, specifying data types, primary keys, foreign keys, and other constraints.
- Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
- Create a new Postgres database named crowdfunding_db.
- Using the database schema, create the tables in the correct order to handle the foreign keys.
- Verify the table creation by running a SELECT statement for each table.
- Import each CSV file into its corresponding SQL table.
- Verify that each table has the correct data by running a SELECT statement for each.
