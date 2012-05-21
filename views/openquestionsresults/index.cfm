<cfoutput>
	<h1>Listing openquestionsresults</h1>
	#includePartial("../showFlash")#
	<p>#linkTo(text="New openquestionsresult", action="new")#</p>
	<div class="span6">
		<table class="table table-striped table-condensed row">
			<thead>
				<tr>
					<th>id</th>
					<th>Studentanswer</th>
					<th>Resultid</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="openquestionsresults">
					<tr>
						<td>#id#</td>
						<td>#studentanswer#</td>
						<td>#resultid#</td>
						#includePartial("../editDelete")#
					</tr>
				</cfloop>
			</tbody>
		</table>
	</div>
</cfoutput>

