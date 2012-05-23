<cfoutput>#output.ColumnList#</cfoutput>
<cfoutput query="output">
	<cfset out = ""/>
	<cfloop list="#output.ColumnList#" index="col">
		<cfset out = out &","& #output[col][CurrentRow]# />
	</cfloop>
	#RemoveChars(out, 1, 1)#
</cfoutput>
