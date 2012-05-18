<h1>Listing schoolyears</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>
	<p>#linkTo(text="New schoolyear", action="new")#</p>
</cfoutput>

<cftable query="schoolyears" colHeaders="true" HTMLTable="true">



					<cfcol header="Id" text="#id#" />

					<cfcol header="Startdate" text="#DateFormat(startdate, 'YYYY')#" />

					<cfcol header="Enddate" text="#DateFormat(enddate, 'YYYY')#" />

					<!--- <cfcol header="Createdat" text="#createdat#" />

					<cfcol header="Updatedat" text="#updatedat#" />

					<cfcol header="Deletedat" text="#deletedat#" /> --->



	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
</cftable>

