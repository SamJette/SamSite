component extends="Controller" output="false" {
  public void function init(){
  	filters(through="checkAdminLogin", except="login,register,signin,activate");
  	usesLayout("../layout");
  }

  // checkLogin
  public void function checkAdminLogin(){
    writedump(session);
  	if(!structKeyExists(session, "user")){
  		redirectTo(controller="admin.dashboard", action="login");
  	}
  }
}