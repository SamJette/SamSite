<h1>Listing teachers</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>
	<p>#linkTo(text="New teacher", action="new")#</p>
</cfoutput>

<cftable query="teachers" colHeaders="true" HTMLTable="true">



					<cfcol header="Id" text="#id#" />

					<cfcol header="Firstname" text="#firstname#" />

					<cfcol header="Name" text="#name#" />

					<cfcol header="Password" text="#password#" />

					<cfcol header="Email" text="#email#" />

					<cfcol header="Roleid" text="#roleid#" />

					<!--- <cfcol header="Createdat" text="#createdat#" />

					<cfcol header="Updatedat" text="#updatedat#" />

					<cfcol header="Deletedat" text="#deletedat#" /> --->



	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
</cftable>

