<cfoutput>
<h1>Editing answer</h1>
#includePartial("../showFlash")#
#errorMessagesFor("answer")#
	#startFormTag(action="update", key=params.key)#
		#includePartial("form")#
	#endFormTag()#
#includePartial("../toListing")#
</cfoutput>
