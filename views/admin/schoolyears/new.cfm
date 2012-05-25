<cfoutput>
<cfset start=DateFormat(Now(), 'YYYY')>
<cfset end=DateFormat(Now(), 'YYYY')+1>
	<h1>Create a New schoolyear</h1>
	#includePartial("../showFlash")#
	#errorMessagesFor("schoolyear")#
		#startFormTag(action="create")#
			#includePartial(form)#
			#includePartial("../submit")#
		#endFormTag()#
	#includePartial("../toListing")#
</cfoutput>