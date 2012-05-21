<cfoutput>
	<h1>Listing answers</h1>
	#includePartial("../showFlash")#
	<p>#linkTo(text="New answer", action="new")#</p>
	<div class="span6">
		<table class="table table-striped table-condensed row">
			<thead>
				<tr>
					<th>id</th>
					<th>Answer</th>
					<th>Iscorrect</th>
					<th>Questionid</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="answers">
					<tr>
						<td>#id#</td>
						<td>#answer#</td>
						<td>#iscorrect#</td>
						<td>#questionid#</td>
						#includePartial("../editDelete")#
					</tr>
				</cfloop>
			</tbody>
		</table>
	</div>
</cfoutput>