<cfoutput>
<h1>Listing schoolyears</h1>
	#includePartial("../showFlash")#
	<p>#linkTo(text="New schoolyear", action="new")#</p>
	<div class="span6">
		<table class="table table-striped table-condensed row">
			<thead>
				<tr>
					<th>Title</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="schoolyears">
					<tr>
						<td>#DateFormat(startdate, 'YYYY')#</td>
						<td>#DateFormat(enddate, 'YYYY')#</td>
						#includePartial("../editDelete")#
					</tr>
				</cfloop>
			</tbody>
		</table>
	</div>
</cfoutput>
