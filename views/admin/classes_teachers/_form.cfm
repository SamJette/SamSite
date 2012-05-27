<cfoutput>
	#select(objectName="classes_teacher", property="schoolyearid",textField="schoolyeardate", label="Schoolyearid" , options=schoolyearlist)#
	#select(objectName="classes_teacher", property="teacherid", label="teacher" , options=teacherlist)#
	#select(objectName="classes_teacher", property="classid", label="Class" , options=classlist)#
</cfoutput>