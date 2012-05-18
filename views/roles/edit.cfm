<h1>Editing role</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>


			#errorMessagesFor("role")#

			#startFormTag(action="update", key=params.key)#

						#textField(objectName='role', property='title', label='Title')#

				#submitTag()#

			#endFormTag()#



#linkTo(text="Return to the listing", action="index")#
</cfoutput>
