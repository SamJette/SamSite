<cfscript >
 	public void function index(){
	sqloutput = model("students").findAll();
    renderWith(data=sqloutput, layout="false");
  }
 </cfscript>
<table>
	<tr>
		<cfloop list="#sqloutput.ColumnList#" index="col" delimiters=",">
			<th>
				<cfoutput>#col#</cfoutput>
			</th>
		</cfloop>
	</tr>
	<cfoutput query="sqloutput">
		<tr>
			<cfloop list="#sqloutput.ColumnList#" index="col">
				<td>#sqloutput[col][CurrentRow]#</td>
			</cfloop>
		</tr>
	</cfoutput>
</table>
