<cfoutput>
#includePartial("startend")#
<h1>Create a New schoolyear</h1>
#includePartial("../showFlash")#
#errorMessagesFor("schoolyear")#
	#startFormTag(action="create", class="yearselect")#
		#includePartial("form")#
		#includePartial("../submit")#
	#endFormTag()#
#includePartial("../toListing")#
</cfoutput>
