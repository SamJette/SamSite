<cfif CGI.SERVER_NAME NEQ "samsite.local">
	<cfsetting showDebugOutput = "no" />
</cfif>
<cfparam name="session.user.roleid" default = 3 >
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
          <a class="brand" href="#">Sam</a>
          <div class="btn-group pull-right">
          	<cfoutput>
			  	<cfif structKeyExists(session.user,"name")>
				  	<cfif session.user.roleid LTE 3>
			            <a class="btn dropdown-toggle" data-toggle="dropdown" href="##">
			              <i class="icon-user"></i>
						  #session.user.name#
			              <span class="caret"></span>
			            </a>
			            <ul class="dropdown-menu">
			              <li><a href="##">Profile</a></li>
			              <li class="divider"></li>
			              <li>#linkTo(text="Sign Out", controller="dashboard", action="logout")#</li>
			            </ul>
					</cfif>
			  	</cfif>
			</cfoutput>
          </div>
		  <!---<cfoutput>
			<cfif session.user.roleid EQ 1>
          <div class="nav-collapse">

            <ul class="nav">
			  <li class="active">#linkTo(text="<span>Database</span>", controller="dashboard", action="")#</li>
			  <!---<li>#linkTo(text="<span>Students</span>", controller="students", action="")#</li>
			  <li>#linkTo(text="<span>Classes</span>", controller="classes", action="")#</li>
			  <li>#linkTo(text="<span>Classes_Students</span>", controller="Classes_students", action="")#</li>
			  <li>#linkTo(text="<span>Roles</span>", controller="roles", action="")#</li>
			  <li>#linkTo(text="<span>Schoolyears</span>", controller="schoolyears", action="")#</li>
			  <li>#linkTo(text="<span>Questions</span>", controller="questions", action="")#</li>
			  <li>#linkTo(text="<span>Answers</span>", controller="answers", action="")#</li>
			  <li>#linkTo(text="<span>Open Questions Results</span>", controller="openquestionsresults", action="")#</li>
			  <li>#linkTo(text="<span>Results</span>", controller="results", action="")#</li>--->
			</ul>

          </div>
		  	</cfif>
		</cfoutput>---><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container-fluid">
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
    </cfoutput>
     </body>
</html>