<!---
	The environment setting can be set to "design", "development", "testing", "maintenance" or "production".
	For example, set it to "design" or "development" when you are building your application and to "production" when it's running live.
--->
<cfif CGI.SERVER_NAME NEQ "samsite.local">
  <cfset set(environment="design")>
<cfelse>
	<cfset set(environment="design")>
</cfif>