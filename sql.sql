imp system/admin@orcl FILE=C:\Users\HUIAL2\Desktop\ImportDB\b2b.dmp log=C:\Users\HUIAL2\Desktop\ImportDB\import.log full=y

--Test Test
--select current logged in user
select user from dual;

-- select all users
select * from all_users;

--Sqlplus setting
SET pagesize 30 -- no of row, new column name will be added for each new page
SET PAUSE ON -- to pause the execution for each page
SET LONG 10000
SET linesize 2000 -- set page width
COLUMN last_name format a20
COLUMN total format 999,999,999
SET feedback ON -- display sql execution result
alter session set nls_date_format = 'yyyy-mm-dd hh:mi:ssPM';



-- Check error after execution
SQL> show error;

-- Show user role and permission
SELECT * FROM USER_SYS_PRIVS;
SELECT * FROM USER_TAB_PRIVS ;
SELECT * FROM USER_ROLE_PRIVS




-- listing all schemas
select  * from all_users;




-- Last command
/

-- Edit last command
edit



SET TERM      OFF 
-- TERM = ON will display on terminal screen (OFF = show in LOG only)

SET ECHO      ON 
-- ECHO = ON will Display the command on screen (+ spool)
-- ECHO = OFF will Display the command on screen but not in spool files.
-- Interactive commands are always echoed to screen/spool.

SET TRIMOUT   ON 
-- TRIMOUT = ON will remove trailing spaces from output

SET TRIMSPOOL ON 
-- TRIMSPOOL = ON will remove trailing spaces from spooled output

SET HEADING   OFF 
-- HEADING = OFF will hide column headings

SET FEEDBACK  OFF 
-- FEEDBACK = ON will count rows returned

SET PAUSE     OFF 
-- PAUSE = ON .. press return at end of each page

SET PAGESIZE  0   
-- PAGESIZE = height 54 is 11 inches (0 will supress all headings and page brks)

SET LINESIZE  80 
-- LINESIZE = width of page (80 is typical)

SET VERIFY    OFF 
-- VERIFY = ON will show before and after substitution variables

-- Start spooling to a log file
SPOOL C:\TEMP\MY_LOG_FILE.LOG

--Run sql from file at sqlplus
>@filepath
###############################################
select 'INSERT INTO css_tp_global_text(SERVICE, INT_VALUE, EXT_VALUE, TRDNG_PTNR_ID, REC_UPD_DT, IS_PREFERRED_ENTRY)  VALUES ( ' ||
'''' || t.SERVICE || '''' || ', ' || 
'''' || t.INT_VALUE || '''' || ', ' ||
'''' || t.EXT_VALUE || '''' || ', ' ||
'''' || t.TRDNG_PTNR_ID || '''' || ', ' ||
' SYSDATE ' || ', ' ||
0 || ')'
from css_tp_global_text t
where trdng_ptnr_id in ('038173118C', 'LYMAN', 'ACS-PHILIPS', 'ESSUTTON', 'GRAINGER-CT', 'GEARSPORTS', 'NEWELLAPLL', 'QUIKSILVERAPLL', 'TRUTRACK', 'RHAPLL', 'HASHAS315', 'WEDGEWOOD')
###############################################