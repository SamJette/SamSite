<cfoutput>
	<h1>Listing roles</h1>
	#includePartial("../showFlash")#
	<p>#linkTo(text="New role", action="new")#</p>
	<div class="span6">
		<table class="table table-striped table-condensed row">
			<thead>
				<tr>
					<th>Title</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="roles">
					<tr>
						<td>#title#</td>
						#includePartial("../editDelete")#
					</tr>
				</cfloop>
			</tbody>
		</table>
	</div>
</cfoutput>