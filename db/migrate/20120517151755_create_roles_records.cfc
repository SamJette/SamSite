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
<cfcomponent extends="plugins.dbmigrate.Migration" hint="create roles records">
  <cffunction name="up">
    <cfscript>
	    addRecord(table='roles',title='Admin',createdat=Now(), updatedat=Now());
      	addRecord(table='roles',title='Member',createdat=Now(), updatedat=Now());
    </cfscript>
  </cffunction>
  <cffunction name="down">
    <cfscript>
		removeRecord(table='roles',where="title='Admin'");
    	removeRecord(table='roles',where="title='Member'");
    </cfscript>
  </cffunction>
</cfcomponent>
