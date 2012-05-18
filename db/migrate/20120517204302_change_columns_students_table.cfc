<cfcomponent extends="plugins.dbmigrate.Migration" hint="change columns schoolyears table">
  <cffunction name="up">
    <cfscript>
      execute('ALTER table students ADD UNIQUE KEY `UN_number` (`number`);');
      execute('ALTER table students ADD UNIQUE KEY `UN_email` (`email`);');
    </cfscript>
  </cffunction>
  <cffunction name="down">
    <cfscript>
       execute('ALTER table students DROP INDEX `UN_number`;');
       execute('ALTER table students DROP INDEX `UN_email`;');
    </cfscript>
  </cffunction>
</cfcomponent>
