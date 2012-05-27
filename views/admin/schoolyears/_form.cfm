<cfsavecontent variable="jscriptYearselect">
	<cfoutput>
	 	#javaScriptIncludeTag("yearselect")#
	 </cfoutput>
</cfsavecontent>
<cfset contentFor(yearselect=jscriptYearselect)>
<cfoutput>
		#dateSelect(objectName='schoolyear', property='startdate', label='Startdate', label='Startdate', startYear=#start#, endYear=#start#+5, order='year')#
		#dateSelect(objectName='schoolyear', property='enddate', label='Enddate', startYear=#end#, endYear=#end#+5, order='year')#
</cfoutput>