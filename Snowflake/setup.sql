-- Setup script for the Manual Data Entry application.
CREATE APPLICATION ROLE manual_data_entry_role;
 
CREATE OR ALTER VERSIONED SCHEMA code_schema;
 
GRANT USAGE ON SCHEMA code_schema TO APPLICATION ROLE manual_data_entry_role;
 
CREATE STREAMLIT code_schema.manual_data_entry_streamlit
  FROM '/streamlit'
  MAIN_FILE = '/_Data_Entry_App.py';
 
GRANT USAGE ON STREAMLIT code_schema.manual_data_entry_streamlit TO APPLICATION ROLE manual_data_entry_role;