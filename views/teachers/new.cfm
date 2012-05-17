<h1>Create a New teacher</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			
			#errorMessagesFor("teacher")#
	
			#startFormTag(action="create")#
		
				
																
				
					
						#textField(objectName='teacher', property='firstname', label='Firstname')#
																
				
					
						#textField(objectName='teacher', property='name', label='Name')#
																
				
					
						#textField(objectName='teacher', property='password', label='Password')#
																
				
					
						#textField(objectName='teacher', property='email', label='Email')#
																
				
					
						#textField(objectName='teacher', property='roleid', label='Roleid')#
																
				
																
				
																
				
																
				

				#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
