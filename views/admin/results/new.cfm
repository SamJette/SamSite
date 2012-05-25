<cfoutput>
<h1>Create New result</h1>
#includePartial("../showFlash")#
#errorMessagesFor("result")#
	#startFormTag(action="create")#
		#includePartial("form")#
		#includePartial("../submit")#
	#endFormTag()#
	#includePartial("../toListing")#
</cfoutput>