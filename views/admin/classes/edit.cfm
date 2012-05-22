<cfoutput>
<h1>Editing class</h1>
#includePartial("../showFlash")#
#errorMessagesFor("class")#
	#startFormTag(action="update", key=params.key)#
		#includePartial("form")#
	#endFormTag()#
#includePartial("../toListing")#
</cfoutput>
