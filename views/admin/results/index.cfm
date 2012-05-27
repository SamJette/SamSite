<div class="span6">
	<table class="table table-striped table-condensed row">
		<cfoutput query="results" group="questionid">
			<tr>
				<th colspan="2">#question#</th>
			</tr>
				<tr>
					<th>id</th>
					<th>Student Answer</th>
					<th>Student</th>
					<th>Score</th>
				</tr>
			<cfoutput>
				<tr>
					<td>#id#</td>
					<td>
						<cfif !isopen>
							#answer#
						<cfelse>
							#studentanswer#
						</cfif>
					</td>
					<td>#fullname#</td>
					<td>
						<cfif !isopen>
							#iscorrect#
						<cfelse>
							<cfif trim(answer) eq trim(studentanswer)>
								1
							<cfelse>
								0
							</cfif>
						</cfif>
					</td>
					#includePartial("../editDelete")#
				</tr>
			</cfoutput>
			<tr>
				<td colspan="5">&nbsp;</td>
			</tr>
		</cfoutput>
	</table>
</div>




