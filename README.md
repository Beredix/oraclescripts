oracle scripts
==========

A couple of bash scripts for oracle databases.


* getorasid

   Uses lsnrctl services to get the ORACLE_SID given a databasename

   Example:
   
    ``export ORACLE_SID=`getorasid RACDB`   ``

* getorasids

   Uses lsnrctl services to get all the oraclesids
   
   Example:
   
    `getorasids`

* oracle-cpu-db

   sums up cpu usage per database (actually per program name)

   Schedule in crontab to save data every 5-10 minutes

   Example:
    `oracle-cpu-db >>oracle-cpu-db.txt`

* oracle-cpu-stats

   Takes accumulated output from oracle-cpu-db, transposes the data and outputs a csv-file

   Example:
    `oracle-cpu-stats oracle-cpu-db.txt >oracle-cpu.csv`

* oraps

   Simple command to show sessions in the database

   Example:
   
    `oraps`

* oratrans

   Simple command to show current transactions in the database

   Example:
   
    `oratrans`

* sqlplusone

   Utility script to run a one-liner from sqlplus
   First argument is used as argument to sqlplus, primarily login and parameters
   Second argument is the actual command to run.

   Example:
   
    `sqlplusone "-S / as sysdba" "show parameter control_management_pack`

* foreachsid

   Utility script to run a command on all sids in the machine.  
   The command is run with ORACLE_SID set to the current database.  
   Also $AP and $DQ is set to ' and " respectively to help with different parameters and escaping  
   Example:  
    `foreachsid 'sqlplusone "-S / as sysdba" "alter system set control_management_pack_access=none scope=both sid=$AP*$AP;"'`



