<h1>Showing student</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
				
					<p><span>Id</span> <br />
						#student.id#</p>
				
					<p><span>Firstname</span> <br />
						#student.firstname#</p>
				
					<p><span>Name</span> <br />
						#student.name#</p>
				
					<p><span>Password</span> <br />
						#student.password#</p>
				
					<p><span>Email</span> <br />
						#student.email#</p>
				
					<p><span>Number</span> <br />
						#student.number#</p>
				
					<p><span>Createdat</span> <br />
						#student.createdat#</p>
				
					<p><span>Updatedat</span> <br />
						#student.updatedat#</p>
				
					<p><span>Deletedat</span> <br />
						#student.deletedat#</p>
				
			
		

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this student", action="edit", key=student.id)#
</cfoutput>
