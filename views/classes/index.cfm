<h1>Listing classes</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>
	<p>#linkTo(text="New class", action="new")#</p>
</cfoutput>

<cftable query="classes" colHeaders="true" HTMLTable="true">

	<cfcol header="Id" text="#id#" />

	<cfcol header="Class" text="#class#" />

	<cfcol header="Teacherid" text="#teacherid#" />

<!--- 	<cfcol header="Createdat" text="#createdat#" />

	<cfcol header="Updatedat" text="#updatedat#" />

	<cfcol header="Deletedat" text="#deletedat#" /> --->

	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
</cftable>

