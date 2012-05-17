<h1>Showing teacher</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
				
					<p><span>Id</span> <br />
						#teacher.id#</p>
				
					<p><span>Firstname</span> <br />
						#teacher.firstname#</p>
				
					<p><span>Name</span> <br />
						#teacher.name#</p>
				
					<p><span>Password</span> <br />
						#teacher.password#</p>
				
					<p><span>Email</span> <br />
						#teacher.email#</p>
				
					<p><span>Roleid</span> <br />
						#teacher.roleid#</p>
				
					<p><span>Createdat</span> <br />
						#teacher.createdat#</p>
				
					<p><span>Updatedat</span> <br />
						#teacher.updatedat#</p>
				
					<p><span>Deletedat</span> <br />
						#teacher.deletedat#</p>
				
			
		

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this teacher", action="edit", key=teacher.id)#
</cfoutput>
