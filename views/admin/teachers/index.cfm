<cfoutput>
	<h1>Listing teachers</h1>
	#includePartial("../showFlash")#
	<p>#linkTo(text="New teacher", action="new")#</p>
	<div class="span10">
		<table class="table table-striped table-condensed row">
			<thead>
				<tr>
					<th>id</th>
					<th>Name</th>
					<th>Password</th>
					<th>Email</th>
					<th>Role</th>
					<th>Activated</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="teachers">
					<tr>
						<td>#id#</td>
						<td>#fullname#</td>
						<td>#password#</td>
						<td>#email#</td>
						<td>#title#</td>
						<td>#IIF(isactivated, DE("Activated"), DE("Not Activated"))#</td>
						#includePartial("../editDelete")#
					</tr>
				</cfloop>
			</tbody>
		</table>
	</div>
</cfoutput>