<cfscript >
 	public void function index(){
	sqloutput = model("students").findAll();
    renderWith(data=sqloutput, layout="false");
  }
 </cfscript>
<cfoutput>#sqloutput.ColumnList#</cfoutput>
<cfoutput query="sqloutput">
	<cfset out = ""/>
	<cfloop list="#sqloutput.ColumnList#" index="col">
		<cfset out = out &","& #sqloutput[col][CurrentRow]# />
	</cfloop>
	#RemoveChars(out, 1, 1)#
</cfoutput>
