<cfoutput>
	<h1>Login</h1>
	#includePartial("showFlash")#
	#startFormTag(controller="main", action="Signin")#
		#includePartial("form")#
	#endFormTag()#
</cfoutput>
