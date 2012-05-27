<cfoutput>
	<h1>Create a New classes_teacher</h1>
	#includePartial("../showFlash")#
	#errorMessagesFor("classes_teacher")#
	#startFormTag(action="create")#
		#includePartial("form")#
		#includePartial("../submit")#
	#endFormTag()#
	#includePartial("../toListing")#
</cfoutput>
