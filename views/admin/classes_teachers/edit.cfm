<cfoutput>
<h1>Editing classes_teacher</h1>
#includePartial("../showFlash")#
#errorMessagesFor("classes_teacher")#
	#startFormTag(action="update", key=params.key)#
		#includePartial("form")#
		#includePartial("../put")#
		#includePartial("../submit")#
	#endFormTag()#
#includePartial("../toListing")#
</cfoutput>
