<cfoutput>
	<h1>Create a New answer</h1>
	#includePartial("../showFlash")#
	#errorMessagesFor("answer")#
	#startFormTag(action="create")#
		#includePartial("form")#
	#endFormTag()#
	#includePartial("../toListing")#
</cfoutput>