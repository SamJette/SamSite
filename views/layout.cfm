<!--- Place HTML here that should be used as the default layout of your application --->
<cfoutput>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		#stylesheetLinkTag("bootstrap.min")#
		#javaScriptIncludeTag("jquery.min")#
		#javaScriptIncludeTag("bootstrap.min")#
	</head>
	<body>
			<div class="span12">
				<div class="navbar">
					<div class="navbar-inner">
						<div class="container">
							#linkTo(text="SAM", controller="../", action="", class="brand embossed")#
							<ul class="nav">
								<li class="divider-vertical">
								</li>
								<li>
									#linkTo(text="<span>Teachers</span>", controller="teachers", action="")#
								</li>
								<li class="divider-vertical">
								</li>
								<li>
									#linkTo(text="<span>Students</span>", controller="students", action="")#
								</li>
								<li class="divider-vertical">
								</li>
								<li>
									#linkTo(text="<span>Classes</span>", controller="classes", action="")#
								</li>
							</ul>
							<ul class="nav pull-right">
								<li>
									<cfif structKeyExists(session, "user")>
										#linkTo(text="<i class=""icon-off  icon-white""></i> Logout", controller="dashboard",
									         action="logout")#
									<cfelse>
										#linkTo(text="Login", controller="dashboard", action="login")#
									</cfif>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div id="content">
					#contentForLayout()#
				</div>
				<div id="footer" class="span12">
					&copy;2011
					#linkTo(text="Sam", controller="dashboard", action="")#
					- Terms of Service - Privacy Policy - Contact
				</div>
			</div>
		</body>
	</html>
</cfoutput>