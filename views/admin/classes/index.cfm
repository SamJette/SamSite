<cfoutput>
	<h1>Listing classes</h1>
	#includePartial("../showFlash")#
	<p>#linkTo(text="New class", action="new")#</p>
	<div class="span6">
		<table class="table table-striped table-condensed row">
			<thead>
				<tr>
					<th>id</th>
					<th>Class</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="classes">
					<tr>
						<td>#id#</td>
						<td>#class#</td>
						#includePartial("../editDelete")#
					</tr>
				</cfloop>
			</tbody>
		</table>
	</div>
</cfoutput>