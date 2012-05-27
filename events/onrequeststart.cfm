<!--- Place code here that should be executed on the "onRequestStart" event. --->
<cfscript>
	if(structKeyExists(url,"$pathinfo")){
    request.cgi.path_info = url.$pathinfo;
}
</cfscript>