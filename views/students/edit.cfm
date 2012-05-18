<h1>Editing student</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>


			#errorMessagesFor("student")#

			#startFormTag(action="update", key=params.key)#





						#textField(objectName='student', property='firstname', label='Firstname')#



						#textField(objectName='student', property='name', label='Name')#



						#passwordField(objectName='student', property='password', label='Password')#



						#textField(objectName='student', property='email', label='Email')#



						#textField(objectName='student', property='number', label='Number')#



						#checkBox(objectName='student', property='isonline', label='Isonline')#









				#submitTag()#

			#endFormTag()#



#linkTo(text="Return to the listing", action="index")#
</cfoutput>
