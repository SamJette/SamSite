<cfoutput>
	#select(objectName="answer", property="questionid", label="Question" , options=questionlist)#
	#textField(objectName='answer', property='answer', label='Answer')#
	#checkBox(objectName='answer', property='iscorrect', label='Iscorrect')#
</cfoutput>