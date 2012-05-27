<cfoutput>
	#textArea(objectName='question', property='question', label='Question')#
	<!---#textField(objectName='question', property='teacherid', label='Teacherid')#--->
	#select(objectName="question", textField="fullName" ,property="teacherid", label="Teacher" , options=teacherlist)#
	#checkBox(objectName='question', property='isopen', label='Is open?')#

</cfoutput>