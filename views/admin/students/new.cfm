<cfoutput>
	<h1>Create a New student</h1>
	#includePartial("../showFlash")#
	#errorMessagesFor("student")#
	#startFormTag(action="create")#
		#includePartial("form")#
		#includePartial("../submit")#
	#endFormTag()#
	#includePartial("../toListing")#
</cfoutput>
