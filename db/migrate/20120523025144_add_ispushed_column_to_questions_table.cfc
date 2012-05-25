<!---
    |----------------------------------------------------------------------------------------------|
	| Parameter  | Required | Type    | Default | Description                                      |
    |----------------------------------------------------------------------------------------------|
	| name       | Yes      | string  |         | existing table name                              |
    |----------------------------------------------------------------------------------------------|

    EXAMPLE:
      t = changeTable(name='employees');
      t.string(columnNames="fullName", default="", null=true, limit="255");
      t.change();
--->
<cfcomponent extends="plugins.dbmigrate.Migration" hint="add ispushed column to questions table">
  <cffunction name="up">
    <cfscript>
      addColumn(table='questions', columnType='boolean', columnName='ispushed', default=0, null=true);
    </cfscript>
  </cffunction>
  <cffunction name="down">
    <cfscript>
    removeColumn(table='questions',columnName='ispushed');
    </cfscript>
  </cffunction>
</cfcomponent>
