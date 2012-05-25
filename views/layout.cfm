<cfif CGI.SERVER_NAME NEQ "samsite.local">
  <cfsetting showDebugOutput = "no" />
</cfif>
<!--- Place HTML here that should be used as the default layout of your application --->
<!DOCTYPE html>
<html lang="en">
  <head>
	<meta charset="utf-8">
	<title>Sam</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Le styles -->
	<cfoutput>#stylesheetLinkTag("bootstrap.min")#</cfoutput>
	<style type="text/css">
	  body {
		padding-top: 60px;
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	  .bottombar {
			position: fixed;
			bottom: 0;
			left: 0;
			right: 0;
		}
	</style>
  <cfoutput>#stylesheetLinkTag("bootstrap-responsive.min")#</cfoutput>
	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Le fav and touch icons -->
	<link rel="shortcut icon" href="">
  </head>

  <body>

	<div class="navbar navbar-fixed-top">
	  <div class="navbar-inner">
		<div class="container-fluid">
		  <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </a>
		  <a class="brand" href="#">Question Time</a>
		  <div class="btn-group pull-right">
			<cfoutput>
			   <cfif structKeyExists(session,"stuser") >
				  <a class="btn dropdown-toggle" data-toggle="dropdown" href="##">
					<i class="icon-user"></i>
					 #session.stuser.name#
					<span class="caret"></span>
				  </a>
				  <ul class="dropdown-menu">
					<li><a href="##">Profile</a></li>
					<li class="divider"></li>
					<li>#linkTo(text="Sign Out", controller="main", action="logout")#</li>
				  </ul>
			  </cfif>
			</cfoutput>
		  </div>
		  <cfoutput>
		   <cfif !structKeyExists(session, "user")>
		  <div class="nav-collapse">
			<ul class="nav">
			 <li class="active">#linkTo(text="<span>Admin Section</span>", controller="admin.dashboard", action="login")#</li>
			 </ul>
		  </div>
		  </cfif>
		  </cfoutput><!--/.nav-collapse -->
		</div>
	  </div>
	</div>

	<div class="container-fluid">
	  <div class="row">
		<div class="span9 offset3">
		  <div class="row-fluid">
		   <cfoutput> #contentForLayout()#</cfoutput>
		  </div><!--/row-->
		</div><!--/span-->
	  </div><!--/row-->
	  <div class="bottombar">
	  <hr>
	  <footer class="container-fluid">
		<p>&copy; Sam 2012</p>
	  </footer>
	  </div>
	</div>
	<!--/.fluid-container-->

	<!-- Le javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	  <cfoutput>
		#javaScriptIncludeTag("jquery-1.7.2.min")#
		#javaScriptIncludeTag("bootstrap.min")#
		#javaScriptIncludeTag("wheels")#
	</cfoutput>
	 </body>
</html>