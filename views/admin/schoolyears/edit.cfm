<cfoutput>
<cfset start=DateFormat(Now(), 'YYYY')>
<cfset end=DateFormat(Now(), 'YYYY')+1>
<h1>Editing schoolyear</h1>
#includePartial("../showFlash")#
#errorMessagesFor("schoolyear")#
	#startFormTag(action="update", key=params.key)#
		#includePartial(form)#
		#includePartial("../put")#
		#includePartial("../submit")#
	#endFormTag()#
#includePartial("../toListing")#
</cfoutput>
