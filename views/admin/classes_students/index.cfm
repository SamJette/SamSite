<cfoutput>
	<h1>Listing classes_students</h1>
	#includePartial("../showFlash")#
	<p>#linkTo(text="New classes_student", action="new")#</p>
	<div class="span6">
		<table class="table table-striped table-condensed row">
			<thead>
				<tr>
					<th>id</th>
					<th>Schoolyearid</th>
					<th>Studentid</th>
					<th>Classid</th>
				</tr>
			</thead>
			<tbody>
				<cfloop query="classes_students">
					<tr>
						<td>#id#</td>
						<td>#schoolyearid#</td>
						<td>#studentid#</td>
						<td>#classid#</td>
						#includePartial("../editDelete")#
					</tr>
				</cfloop>
			</tbody>
		</table>
	</div>
</cfoutput>



