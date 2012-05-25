<cfoutput>
<h1>
	Create a New openquestionsresult
</h1>
#includePartial("../showFlash")#
	#errorMessagesFor("openquestionsresult")#
	#startFormTag(action="create")#
		#includePartial("form")#
		#includePartial("../submit")#
	#endFormTag()#
	#includePartial("../toListing")#
</cfoutput>