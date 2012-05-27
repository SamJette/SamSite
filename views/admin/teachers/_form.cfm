<cfoutput>
	#textField(objectName='teacher', property='firstname', label='Firstname')#
	#textField(objectName='teacher', property='name', label='Name')#
	#textField(objectName='teacher', property='password', label='Password')#
	#textField(objectName='teacher', property='email', label='Email')#
	#select(objectName="teacher", textField="title" ,property="roleid", label="Role" , options=rolelist)#
	#checkBox(objectName='teacher', property='isactivated', label='Isactivated')#
</cfoutput>