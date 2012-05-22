<cfoutput>
	<h1>Admin Login</h1>
	#includePartial("../showFlash")#
	#startFormTag(route="adminDashboardSignin")#
		#includePartial("form")#
	#endFormTag()#
</cfoutput>
