<cfoutput>
	#select(objectName="classes_student", property="schoolyearid",textField="schoolyeardate", label="Schoolyearid" , options=schoolyearlist)#
	#select(objectName="classes_student", property="studentid", label="Student" , options=studentlist)#
	#select(objectName="classes_student", property="classid", label="Class" , options=classlist)#
</cfoutput>