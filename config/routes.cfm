<!---
your application and edit the default one.
	The default route is the one that will be called on your application's "home" page.
--->


<cfscript>

drawRoutes()
	.root(controller="main", action="login")
	.namespace("admin")
		.resources(name="answers", nested="true")
		.end()
		.controller("dashboard")
			.get(name="login")
			.get(name="logout")
			.post(name="signin")
		.end()
		.resources(name="dashboard", nested="true")
		.end()
		.resources(name="classes", nested="true")
		.end()
		.resources(name="classes_students", nested="true")
		.end()
		.resources(name="openquestionsresults", nested="true")
		.end()
		.resources(name="questions", nested="true")
		.end()
		.resources(name="results", nested="true")
		.end()
		.resources(name="roles", nested="true")
		.end()
		.resources(name="schoolyears", nested="true")
		.end()
		.resources(name="students", nested="true")
		.end()
		.resources(name="teachers", nested="true")
		.end()
	.end()
.end();

</cfscript>