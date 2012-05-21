<cfoutput>
<h1>Editing question</h1>
#includePartial("../showFlash")#
#errorMessagesFor("question")#
	#startFormTag(action="update", key=params.key)#
		#includePartial("form")#
	#endFormTag()#
	#includePartial("../toListing")#
</cfoutput>
