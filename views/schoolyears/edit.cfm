<h1>Editing schoolyear</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

	#errorMessagesFor("schoolyear")#

	#startFormTag(action="update", key=params.key)#

		#dateSelect(objectName='schoolyear', property='startdate', label='Startdate',  order='year')#

		#dateSelect(objectName='schoolyear', property='enddate', label='Enddate',  order='year')#
		#submitTag()#

	#endFormTag()#

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
