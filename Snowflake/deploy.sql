use schema streamlit_db.streamlit_schema;

create or replace stage streamlit_stage;

put file://C:\Users\HP\Desktop\Streamlit\app.py @streamlit_stage 
overwrite=true auto_compress=false;

create or replace streamlit first_streamlit_app
    root_location = '@streamlit.streamlit_schema.streamlit_stage'
    main_file = '/app.py'
    query_warehouse = 'COMPUTE_WH';

show streamlits;