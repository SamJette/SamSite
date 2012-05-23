
<table>
	<tr>
		<cfloop list="#output.ColumnList#" index="col" delimiters=",">
			<th>
				<cfoutput>#col#</cfoutput>
			</th>
		</cfloop>
	</tr>
	<cfoutput query="output">
		<tr>
			<cfloop list="#output.ColumnList#" index="col">
				<td>#output[col][CurrentRow]#</td>
			</cfloop>
		</tr>
	</cfoutput>
</table>
