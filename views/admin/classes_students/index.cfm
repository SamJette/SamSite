<cfoutput>
	<h1>Listing classes_students</h1>
	#includePartial("../showFlash")#
	<p>#linkTo(text="New classes_student", action="new")#</p>
</cfoutput>
<div class="span6">
	<table class="table table-striped table-condensed row">
		<cfoutput query="classes_students" group="studentid">
			<tr>
				<th colspan="2">#firstname# #name#</th>
			</tr>
			<tr>
				<th>id</th>
				<th>Schoolyear</th>
				<th>Class</th>
			</tr>
			<cfoutput>
				<tr>
					<td>#id#</td>
					<td>#year(startdate)#-#year(enddate)#</td>
					<td>#class#</td>
					#includePartial("../editDelete")#
				</tr>
			</cfoutput>
			<tr>
				<td colspan="5">&nbsp;</td>
			</tr>
		</cfoutput>
	</table>
</div>