<cfoutput>
#includePartial("startend")#
<h1>Editing schoolyear</h1>
#includePartial("../showFlash")#
#errorMessagesFor("schoolyear")#
	#startFormTag(action="update", key=params.key, class="yearselect")#
		#includePartial("form")#
		#includePartial("../put")#
		#includePartial("../submit")#
	#endFormTag()#
#includePartial("../toListing")#
</cfoutput>
