<cfoutput>
<h1>Create a New role</h1>
	#includePartial("../showFlash")#
	#errorMessagesFor("role")#
		#startFormTag(action="create")#
			#includePartial("form")#
			#includePartial("../submit")#
		#endFormTag()#
	#includePartial("../toListing")#
</cfoutput>
