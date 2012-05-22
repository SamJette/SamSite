<cfoutput>
	<h1>Listing results</h1>
	#includePartial("../showFlash")#
	<p>#linkTo(text="New result", action="new")#</p>
	<div class="span6">
		<table class="table table-striped table-condensed row">
			<thead>
				<tr>
					<th>id</th>
					<th>Questionid</th>
					<th>Answerid</th>
					<th>Studentid</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="results">
					<tr>
						<td>#id#</td>
						<td>#questionid#</td>
						<td>#answerid#</td>
						<td>#studentid#</td>
						#includePartial("../editDelete")#
					</tr>
				</cfloop>
			</tbody>
		</table>
	</div>
</cfoutput>





