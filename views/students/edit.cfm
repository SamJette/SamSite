<h1>Editing student</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			#errorMessagesFor("student")#
	
			#startFormTag(action="update", key=params.key)#
		
				
															
				
					
						#textField(objectName='student', property='firstname', label='Firstname')#
															
				
					
						#textField(objectName='student', property='name', label='Name')#
															
				
					
						#textField(objectName='student', property='password', label='Password')#
															
				
					
						#textField(objectName='student', property='email', label='Email')#
															
				
					
						#textField(objectName='student', property='number', label='Number')#
															
				
															
				
															
				
															
				
				
				#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
