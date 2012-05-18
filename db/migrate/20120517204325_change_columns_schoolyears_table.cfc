<cfcomponent extends="plugins.dbmigrate.Migration" hint="change columns schoolyears table">
  <cffunction name="up">
    <cfscript>
      execute('ALTER table schoolyears CHANGE startdate startdate YEAR(4);');
      execute('ALTER table schoolyears CHANGE enddate enddate YEAR(4);');
    </cfscript>
  </cffunction>
  <cffunction name="down">
    <cfscript>
       execute('ALTER table schoolyears CHANGE startdate startdate DATE();');
       execute('ALTER table schoolyears CHANGE enddate enddate DATE();');
    </cfscript>
  </cffunction>
</cfcomponent>
