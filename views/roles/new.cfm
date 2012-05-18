<h1>Create a New role</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>
			#errorMessagesFor("role")#

			#startFormTag(action="create")#

				#textField(objectName='role', property='title', label='Title')#
				#submitTag()#

			#endFormTag()#

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
