<cfoutput>
<h1>Listing schoolyears</h1>
	#includePartial("../showFlash")#
	<p>#linkTo(text="New schoolyear", action="new")#</p>
	<div class="span6">
		<table class="table table-striped table-condensed row">
			<thead>
				<tr>
					<th>id</th>
					<th>Startdate</th>
					<th>Enddate</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="schoolyears">
					<tr>
						<td>#id#</td>
						<td>#year(startdate)#</td>
						<td>#year(enddate)#</td>
						#includePartial("../editDelete")#
					</tr>
				</cfloop>
			</tbody>
		</table>
	</div>
</cfoutput>
