<h1>Showing schoolyear</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
				
					<p><span>Id</span> <br />
						#schoolyear.id#</p>
				
					<p><span>Startdate</span> <br />
						#schoolyear.startdate#</p>
				
					<p><span>Enddate</span> <br />
						#schoolyear.enddate#</p>
				
					<p><span>Createdat</span> <br />
						#schoolyear.createdat#</p>
				
					<p><span>Updatedat</span> <br />
						#schoolyear.updatedat#</p>
				
					<p><span>Deletedat</span> <br />
						#schoolyear.deletedat#</p>
				
			
		

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this schoolyear", action="edit", key=schoolyear.id)#
</cfoutput>
