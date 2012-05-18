<cfoutput>
	<h1>Listing classes</h1>
	#includePartial("showFlash")#
	<p>#linkTo(text="New class", action="new")#</p>
	<div class="span6">
		<table class="table table-striped table-condensed row">
			<thead>
				<tr>
					<th>Class</th>
					<th>Teacherid</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="classes">
					<tr>
						<td>#class#</td>
						<td>#teacherid#</td>
						#includePartial("editDelete")#
					</tr>
				</cfloop>
			</tbody>
		</table>
	</div>
</cfoutput>