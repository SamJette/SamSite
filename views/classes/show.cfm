<h1>Showing class</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

	<p><span>Id</span> <br />
		#class.id#</p>

	<p><span>Class</span> <br />
		#class.class#</p>

	<p><span>Teacherid</span> <br />
		#class.teacherid#</p>

<!--- 	<p><span>Createdat</span> <br />
		#class.createdat#</p>

	<p><span>Updatedat</span> <br />
		#class.updatedat#</p>

	<p><span>Deletedat</span> <br />
		#class.deletedat#</p> --->

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this class", action="edit", key=class.id)#
</cfoutput>
