<cfoutput>
<h1>Editing student</h1>
#includePartial("../showFlash")#
#errorMessagesFor("student")#
	#startFormTag(action="update", key=params.key)#
		#includePartial("form")#
	#endFormTag()#
#includePartial("../toListing")#
</cfoutput>
