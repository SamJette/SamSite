<cfcomponent extends="plugins.dbmigrate.Migration" hint="change columns schoolyears table">
  <cffunction name="up">
    <cfscript>
      execute('ALTER table teachers ADD UNIQUE KEY `UN_email` (`email`);');
    </cfscript>
  </cffunction>
  <cffunction name="down">
    <cfscript>
       execute('ALTER table teachers DROP INDEX `UN_email`;');
    </cfscript>
  </cffunction>
</cfcomponent>
