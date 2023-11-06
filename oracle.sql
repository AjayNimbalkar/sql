select * from data;


SELECT
    *
FROM
    dba_users;
@ C:\app\ajayn\product\21c\dbhomeXE\demo\schema\human_resources\hr_main.sql;
select * from user_objects;
desc user_objects;
show * tables from oracle;
select * from all_objects /.xels;
SELECT *
FROM oracle;
desc help;
show create table help;
SHOW
CREATE TABLE topic;

SELECT
    *
FROM
    user_tables;

SELECT
    help,
    data_type,
    data_length
FROM
    all_tab_columns
WHERE
        help = 'table_name'
    AND topic = 'topic';

CREATE VIEW high_salary_employees AS
    SELECT
        topic,
        seq,
        info
    FROM
        help
    WHERE
        topic = 'ajay'
WITH CHECK OPTION;

MERGE INTO ol$
USING ol$e ON ( ol$.ol_name = ol$hints.ol_name )
WHEN MATCHED THEN UPDATE
SET ol_name = 'pravin';

SELECT
    current_timestamp
FROM
    help;

SELECT
    current_timestamp,
    sys_extract_utc(current_timestamp) AS utc_tmp
FROM
    help;

SELECT
    current_timestamp,
    current_timestamp - INTERVAL '4' HOUR AS honeysingh
FROM
    help;

SELECT
    current_timestamp(2)
FROM
    help;
SELECT 
    current_timestamp(1)
    from 
    help;
select current_timestamp,current_timestamp- interval '9' hour from help;
SELECT (CAST(SYSTIMESTAMP AT TIME ZONE SESSIONTIMEZONE AS DATE) - CAST(SYSTIMESTAMP AT TIME ZONE DBTIMEZONE AS DATE)) * 24
FROM help;
SELECT 'DATE' AS DataType, 'It is used for values with a date part but no time part. MySQL retrieves and displays DATE values in YYYY-MM-DD format. The supported range is 1000-01-01 to 9999-12-31.' AS Description
UNION
SELECT 'TIMESTAMP', 'It is also used for values that contain both date and time parts, and includes the time zone. TIMESTAMP has precision down to fractions of a second (up to nine decimal places), still with no time zone support; TIMESTAMP WITH TIME ZONE has the same precision as TIMESTAMP but also has time zone support.' AS Description from help;
select interval '5-0' day to second from help;
select interval '2-0' year to month from help;
select to_yminterval('+06-03')as cuurent_interval from help;
select to_Dsinterval('+06 01:03:04.456')as current_interval from help;
select extract 
(year from date '2004-02-20')
from help;
select * from data;
desc data;
drop table data;
select * from data;
desc data;
SELECT country
FROM data
WHERE EXISTS
(SELECT country FROM data WHERE country='India');
select country from data;
SELECT age,country
FROM data
WHERE Not EXISTS
(SELECT country FROM data WHERE country ='India');
--use REGEXP_LIKE function to search pattern
SELECT firstname
FROM data
WHERE REGEXP_LIKE(firstname, 'Bill')
ORDER BY firstname;
select firstname from data;

--
create table dete(imp_id Number,Manager_id Number);

INSERT INTO dete values(1,null);
INSERT INTO dete values(2,1);
INSERT INTO dete values(3,2);
INSERT INTO dete values(4,1);
INSERT INTO dete values(5,2);
INSERT INTO dete values(6,4);
select * from dete;

--connect by clause
SELECT imp_id as eid, manager_id as fid
FROM dete
START WITH imp_id = 1
CONNECT BY PRIOR imp_id = manager_id;
drop table dete;

-- 