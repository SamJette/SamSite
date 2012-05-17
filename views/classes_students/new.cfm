<h1>Create a New classes_student</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			
			#errorMessagesFor("classes_student")#
	
			#startFormTag(action="create")#
		
				
																
				
					
						#textField(objectName='classes_student', property='schoolyearid', label='Schoolyearid')#
																
				
					
						#textField(objectName='classes_student', property='studentid', label='Studentid')#
																
				
					
						#textField(objectName='classes_student', property='classid', label='Classid')#
																
				
																
				
																
				
																
				

				#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
