<cfoutput>
	<h1>Student Login</h1>
	#includePartial("showFlash")#
	#startFormTag(controller="main", action="Signin")#
		#includePartial("form")#
	#endFormTag()#
</cfoutput>
