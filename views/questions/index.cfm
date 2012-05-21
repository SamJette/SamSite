<cfoutput>
	<h1>Listing questions</h1>
	#includePartial("../showFlash")#
	<p>#linkTo(text="New question", action="new")#</p>
	<div class="span6">
		<table class="table table-striped table-condensed row">
			<thead>
				<tr>
					<th>id</th>
					<th>Question</th>
					<th>Isopen</th>
					<th>Teacherid</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="questions">
					<tr>
						<td>#id#</td>
						<td>#question#</td>
						<td>#isopen#</td>
						<td>#teacherid#</td>
						#includePartial("../editDelete")#
					</tr>
				</cfloop>
			</tbody>
		</table>
	</div>
</cfoutput>




