<cfoutput>
<h1>Editing teacher</h1>
#includePartial("../showFlash")#
#errorMessagesFor("teacher")#
	#startFormTag(action="update", key=params.key)#
		#includePartial("form")#
	#endFormTag()#
#includePartial("../toListing")#
</cfoutput>