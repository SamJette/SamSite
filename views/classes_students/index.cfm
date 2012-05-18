<h1>Listing classes_students</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>
	<p>#linkTo(text="New classes_student", action="new")#</p>
</cfoutput>

<cftable query="classes_students" colHeaders="true" HTMLTable="true">

		<cfcol header="Id" text="#id#" />

		<cfcol header="Schoolyearid" text="#schoolyearid#" />

		<cfcol header="Studentid" text="#studentid#" />

		<cfcol header="Classid" text="#classid#" />

<!--- 	<cfcol header="Createdat" text="#createdat#" />

		<cfcol header="Updatedat" text="#updatedat#" />

		<cfcol header="Deletedat" text="#deletedat#" /> --->

	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
</cftable>

