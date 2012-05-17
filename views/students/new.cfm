<h1>Create a New student</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			
			#errorMessagesFor("student")#
	
			#startFormTag(action="create")#
		
				
																
				
					
						#textField(objectName='student', property='firstname', label='Firstname')#
																
				
					
						#textField(objectName='student', property='name', label='Name')#
																
				
					
						#textField(objectName='student', property='password', label='Password')#
																
				
					
						#textField(objectName='student', property='email', label='Email')#
																
				
					
						#textField(objectName='student', property='number', label='Number')#
																
				
																
				
																
				
																
				

				#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
