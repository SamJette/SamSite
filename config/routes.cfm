<!---
your application and edit the default one.
	The default route is the one that will be called on your application's "home" page.
--->


<cfscript>

drawRoutes()
	.root(controller="main", action="login")
	.namespace("admin")
		.controller("dashboard")
			.get(name="login")
			.get(name="logout")
			.post(name="signin")
		.end()
		.resources(name="dashboard")
		.resources(name="answers")
		.resources(name="classes")
		.resources(name="classes_students")
		.resources(name="classes_teachers")
		.resources(name="openquestionsresults")
		.resources(name="questions")
		.resources(name="results")
		.resources(name="roles")
		.resources(name="schoolyears")
		.resources(name="students")
		.resources(name="teachers")
	.end()
	.resources(name="myoutput")
	.controller("polling")
		.get(name="poll")
.end();

</cfscript>