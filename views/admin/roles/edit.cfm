<cfoutput>
<h1>Editing role</h1>
	#includePartial("../showFlash")#
		#errorMessagesFor("role")#
		#startFormTag(action="update", key=params.key)#
			#includePartial("form")#
			#includePartial("../put")#
			#includePartial("../submit")#
		#endFormTag()#
	#includePartial("../toListing")#
</cfoutput>
