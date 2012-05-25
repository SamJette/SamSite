<cfoutput>
	<h1>Create a New classes_student</h1>
	#includePartial("../showFlash")#
	#errorMessagesFor("classes_student")#
	#startFormTag(action="create")#
		#includePartial("form")#
		#includePartial("../submit")#∑
	#endFormTag()#
	#includePartial("../toListing")#
</cfoutput>
