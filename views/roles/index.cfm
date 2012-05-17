<h1>Listing roles</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>
	<p>#linkTo(text="New role", action="new")#</p>
</cfoutput>

<cftable query="roles" colHeaders="true" HTMLTable="true">
	
			
				
					<cfcol header="Id" text="#id#" />
				
					<cfcol header="Title" text="#title#" />
				
					<cfcol header="Createdat" text="#createdat#" />
				
					<cfcol header="Updatedat" text="#updatedat#" />
				
					<cfcol header="Deletedat" text="#deletedat#" />
				
			
		
	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
</cftable>

