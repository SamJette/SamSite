<h1>Create a New class</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			
			#errorMessagesFor("class")#
	
			#startFormTag(action="create")#
		
				
																
				
					
						#textField(objectName='class', property='class', label='Class')#
																
				
					
						#textField(objectName='class', property='teacherid', label='Teacherid')#
																
				
																
				
																
				
																
				

				#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
