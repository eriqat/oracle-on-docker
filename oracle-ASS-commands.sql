1)alter database add logfile group 4 ('/u01/app/oracle/oradata/EE/redo04.log') size 100m;
-swith to group4 with: alter system switch logfile;
-delete all redo log from dir
-alter database add logfile group 1 ('/u01/app/oracle/oradata/EE/redo01.log') size 100m, group 2 ('/u01/app/oracle/oradata/EE/redo02.log') size 100m;
- alter database add logfile group 3 ('/u01/app/oracle/oradata/EE/redo03.log') size 100m;
-mulyiplex the redolog:
 alter database add logfile member '/u01/app/oracle/oradata/EE/redo03a.log' to group 3;  

 2)ALTER DATABASE BACKUP CONTROLFILE TO '/u01/controlfile-1.ctl';
 -repeat until 3.

 3)alter system set processes = 450 scope = spfile;