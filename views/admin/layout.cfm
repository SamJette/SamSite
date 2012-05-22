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
			              <li>#linkTo(text="Sign Out", controller="admin.dashboard", action="logout")#</li>
			            </ul>
					</cfif>
			  	</cfif>
			</cfoutput>
          </div>
		  <cfoutput>
			<cfif session.user.roleid EQ 1>
          <div class="nav-collapse">

            <ul class="nav">
			  <li class="active">#linkTo(text="<span>Database</span>", controller="admin.dashboard", action="")#</li>
			  <!---<li>#linkTo(text="<span>Students</span>", controller="admin.students", action="")#</li>
			  <li>#linkTo(text="<span>Classes</span>", controller="admin.classes", action="")#</li>
			  <li>#linkTo(text="<span>Classes_Students</span>", controller="admin.Classes_students", action="")#</li>
			  <li>#linkTo(text="<span>Roles</span>", controller="admin.roles", action="")#</li>
			  <li>#linkTo(text="<span>Schoolyears</span>", controller="admin.schoolyears", action="")#</li>
			  <li>#linkTo(text="<span>Questions</span>", controller="admin.questions", action="")#</li>
			  <li>#linkTo(text="<span>Answers</span>", controller="admin.answers", action="")#</li>
			  <li>#linkTo(text="<span>Open Questions Results</span>", controller="admin.openquestionsresults", action="")#</li>
			  <li>#linkTo(text="<span>Results</span>", controller="admin.results", action="")#</li>--->
			</ul>

          </div>
		  	</cfif>
		</cfoutput><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
			<cfif session.user.roleid EQ 1>
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Database Tables</li>
			  <cfset cc =  variables.params.controller />

			  <cfoutput>
	              <li <cfif cc eq LCase('Teachers')>class="active"</cfif>>#linkTo(text="<span>Teachers</span>", controller="admin.teachers", action="index")#</li>
				  <li <cfif cc eq LCase('Students')>class="active"</cfif>>#linkTo(text="<span>Students</span>", controller="admin.students", action="index")#</li>
				  <li <cfif cc eq LCase('Classes')>class="active"</cfif>>#linkTo(text="<span>Classes</span>", controller="admin.classes", action="index")#</li>
				  <li <cfif cc eq LCase('Classes_Students')>class="active"</cfif>>#linkTo(text="<span>Classes_Students</span>", controller="admin.classes_students", action="index")#</li>
				  <li <cfif cc eq LCase('Roles')>class="active"</cfif>>#linkTo(text="<span>Roles</span>", controller="admin.roles", action="index")#</li>
				  <li <cfif cc eq LCase('Schoolyears')>class="active"</cfif>>#linkTo(text="<span>Schoolyears</span>", controller="admin.schoolyears", action="index")#</li>
				  <li <cfif cc eq LCase('Questions')>class="active"</cfif>>#linkTo(text="<span>Questions</span>", controller="admin.questions", action="index")#</li>
				  <li <cfif cc eq LCase('Answers')>class="active"</cfif>>#linkTo(text="<span>Answers</span>", controller="admin.answers", action="index")#</li>
				  <li <cfif cc eq LCase('Openquestionsresults')>class="active"</cfif>>#linkTo(text="<span>Open Questions Results</span>", controller="admin.openquestionsresults", action="index")#</li>
			  	  <li <cfif cc eq LCase('Results')>class="active"</cfif>>#linkTo(text="<span>Results</span>", controller="admin.results", action="index")#</li>
			  </cfoutput>
            </ul>
          </div>
			</cfif>
		  <!--/.well -->
        </div><!--/span-->
        <div class="span9">
          <!---<div class="hero-unit">
            <h1>Hello, world!</h1>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
            <p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p>
          </div>--->
          <div class="row-fluid">
           <cfoutput> #contentForLayout()#</cfoutput>
            <!--- <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
          </div><!--/row-->
          <div class="row-fluid">
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div> ---><!--/span-->
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