<h1>Create a New schoolyear</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>
<cfset start=DateFormat(Now(), 'YYYY')>
<cfset end=DateFormat(Now(), 'YYYY')+1>
<cfoutput>
			#errorMessagesFor("schoolyear")#

			#startFormTag(action="create")#

				#dateSelect(objectName='schoolyear', property='startdate', label='Startdate', label='Startdate', startYear=#start#, order='year')#

				#dateSelect(objectName='schoolyear', property='enddate', label='Enddate', label='Startdate',
					startYear=#end#,  order='year')#
				#submitTag()#

			#endFormTag()#

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
