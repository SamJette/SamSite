<cfoutput>
<h1>Editing openquestionsresult</h1>
#includePartial("../showFlash")#
#errorMessagesFor("openquestionsresult")#
	#startFormTag(action="update", key=params.key)#
		#includePartial("form")#
	#endFormTag()#
	#includePartial("../toListing")#
</cfoutput>
