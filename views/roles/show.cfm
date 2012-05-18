<h1>Showing role</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>



					<p><span>Id</span> <br />
						#role.id#</p>

					<p><span>Title</span> <br />
						#role.title#</p>

<!--- 					<p><span>Createdat</span> <br />
						#role.createdat#</p>

					<p><span>Updatedat</span> <br />
						#role.updatedat#</p>

					<p><span>Deletedat</span> <br />
						#role.deletedat#</p> --->




#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this role", action="edit", key=role.id)#
</cfoutput>
