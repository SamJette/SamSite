<cfoutput>
	<h1>Listing questions</h1>
	#includePartial("../showFlash")#
	<p>#linkTo(text="New question", action="new")#</p>
</cfoutput>
<div class="span6">
	<table class="table table-striped table-condensed row">
		<cfoutput query="questions" group="teacherid">
			<tr>
				<th colspan="2">#fullname#</th>
			</tr>
			<tr>
				<th>id</th>
				<th>Question</th>
				<th>Is open?</th>
			</tr>
			<cfoutput>
				<tr>
					<td>#id#</td>
					<td>#question#</td>
					<td>#IIF(isopen, DE("Yes"), DE("No"))#</td>
					#includePartial("../editDelete")#
				</tr>
			</cfoutput>
			<tr>
				<td colspan="5">&nbsp;</td>
			</tr>
		</cfoutput>
	</table>
</div>