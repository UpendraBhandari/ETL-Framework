CREATE OR REPLACE TRIGGER  "BI_PRIME_METADATA_TABLES" 
  before insert on "PRIME_METADATA_TABLES"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "PRIME_METADATA_TABLES_SEQ".nextval into :NEW."ID" from dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_PRIME_METADATA_TABLES" ENABLE;CREATE OR REPLACE TRIGGER  "BI_PRIME_METADATA_COLUMNS" 
  before insert on "PRIME_METADATA_COLUMNS"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "PRIME_METADATA_COLUMNS_SEQ".nextval into :NEW."ID" from dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_PRIME_METADATA_COLUMNS" ENABLE;CREATE OR REPLACE TRIGGER  "BI_DATABASE_TYPE" 
  before insert on "DATABASE_TYPE"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "DATABASE_TYPE_SEQ".nextval into :NEW."ID" from dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_DATABASE_TYPE" ENABLE;CREATE OR REPLACE TRIGGER  "BI_CONNECTION_DETAIL" 
  before insert on "CONNECTION_DETAIL"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "CONNECTION_DETAIL_SEQ".nextval into :NEW."ID" from dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_CONNECTION_DETAIL" ENABLE;