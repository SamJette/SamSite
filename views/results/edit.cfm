<cfoutput>
<h1>Editing result</h1>
#includePartial("../showFlash")#
#errorMessagesFor("result")#
	#startFormTag(action="update", key=params.key)#
		#includePartial("form")#
	#endFormTag()#
	#includePartial("../toListing")#
</cfoutput>
