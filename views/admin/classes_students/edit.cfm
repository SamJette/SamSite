<cfoutput>
<h1>Editing classes_student</h1>
#includePartial("../showFlash")#
#errorMessagesFor("classes_student")#
	#startFormTag(action="update", key=params.key)#
		#includePartial("form")#
	#endFormTag()#
#includePartial("../toListing")#
</cfoutput>
