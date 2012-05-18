<cfoutput>

<h1>Login</h1>

<cfif flashKeyExists("success")>
	<p class="success">#flash("success")#</p>
</cfif>

#flash("error")#

#startFormTag(action="signin")#

#textField(label="Email", objectName="user", property="email")#
#passwordField(label="Password", objectName="user", property="password")#
<div>
	#submitTag(value="Sign in")#
</div>

#endFormTag()#

</cfoutput>