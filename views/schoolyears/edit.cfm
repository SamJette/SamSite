<h1>Editing schoolyear</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			#errorMessagesFor("schoolyear")#
	
			#startFormTag(action="update", key=params.key)#
		
				
															
				
					
						#textField(objectName='schoolyear', property='startdate', label='Startdate')#
															
				
					
						#textField(objectName='schoolyear', property='enddate', label='Enddate')#
															
				
															
				
															
				
															
				
				
				#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
