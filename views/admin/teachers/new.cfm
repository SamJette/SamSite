<cfoutput>
<h1>Create a New teacher</h1>
#includePartial("../showFlash")#
#errorMessagesFor("teacher")#
	#startFormTag(action="create")#
		#includePartial("form")#
		#includePartial("../submit")#
	#endFormTag()#
#includePartial("../toListing")#
</cfoutput>