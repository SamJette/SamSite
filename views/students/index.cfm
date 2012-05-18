<cfoutput>
	<h1>Listing students</h1>
	#includePartial("../showFlash")#
	<p>#linkTo(text="New student", action="new")#</p>
	<div class="span10">
		<table class="table table-striped table-condensed row">
			<thead>
				<tr>
					<th>Firstname</th>
					<th>Name</th>
					<th>Password</th>
					<th>Email</th>
					<th>Number</th>
					<th>Online</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="students">
					<tr>
						<td>#firstname#</td>
						<td>#name#</td>
						<td>#password#</td>
						<td>#email#</td>
						<td>#number#</td>
						<td>#IIF(isonline, DE("Online"), DE("Offline"))#</td>
						#includePartial("../editDelete")#
					</tr>
				</cfloop>
			</tbody>
		</table>
	</div>
</cfoutput>