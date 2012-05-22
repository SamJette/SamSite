<cfoutput>
<h1>Create a New question</h1>
#includePartial("../showFlash")#
#errorMessagesFor("question")#
	#startFormTag(action="create")#
		#includePartial("form")#
	#endFormTag()#
	#includePartial("../toListing")#
</cfoutput>