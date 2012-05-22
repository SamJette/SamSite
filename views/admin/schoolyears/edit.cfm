<cfoutput>
<cfset start=DateFormat(Now(), 'YYYY')>
<cfset end=DateFormat(Now(), 'YYYY')+1>
<h1>Editing schoolyear</h1>
#includePartial("../showFlash")#
#errorMessagesFor("schoolyear")#
	#startFormTag(action="update", key=params.key)#
		#dateSelect(objectName='schoolyear', property='startdate', label='Startdate', label='Startdate', startYear=#start#, order='year')#
		#dateSelect(objectName='schoolyear', property='enddate', label='Enddate', startYear=#end#, order='year')#
		#includePartial(form)#
	#endFormTag()#
#includePartial("../toListing")#
</cfoutput>
