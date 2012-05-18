<!---
    |-------------------------------------------------------------------------------------------|
  | Parameter     | Required | Type    | Default | Description                                |
    |-------------------------------------------------------------------------------------------|
  | table         | Yes      | string  |         | Name of table to add record to             |
  | columnNames   | Yes      | string  |         | Use column name as argument name and value |
    |-------------------------------------------------------------------------------------------|

    EXAMPLE:
      addRecord(table='members',id=1,username='admin',password='#Hash("admin")#');
--->
<cfcomponent extends="plugins.dbmigrate.Migration" hint="create schoolyears records">
  <cffunction name="up">
    <cfscript>
      addRecord(table='schoolyears',startdate=2012,enddate=2012+1,createdat=Now(), updatedat=Now());
      addRecord(table='schoolyears',startdate=2013,enddate=2013+1,createdat=Now(), updatedat=Now());
    </cfscript>
  </cffunction>
  <cffunction name="down">
    <cfscript>
    removeRecord(table='schoolyears',where="startdate='2012' and enddate=startdate+1");
    removeRecord(table='schoolyears',where="startdate='2013' and enddate=startdate+1");
    </cfscript>
  </cffunction>
</cfcomponent>
