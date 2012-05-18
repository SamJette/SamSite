<h1>Showing classes_student</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

	<p><span>Id</span> <br />
		#classes_student.id#</p>

	<p><span>Schoolyearid</span> <br />
		#classes_student.schoolyearid#</p>

	<p><span>Studentid</span> <br />
		#classes_student.studentid#</p>

	<p><span>Classid</span> <br />
		#classes_student.classid#</p>

<!--- 	<p><span>Createdat</span> <br />
		#classes_student.createdat#</p>

	<p><span>Updatedat</span> <br />
		#classes_student.updatedat#</p>

	<p><span>Deletedat</span> <br />
		#classes_student.deletedat#</p> --->

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this classes_student", action="edit", key=classes_student.id)#
</cfoutput>
