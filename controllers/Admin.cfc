component extends="Controller" output="false" {
  public void function init(){
  	filters(through="checkLogin", except="login,register,signin,activate");
  	usesLayout("../layout");
  }

  // checkLogin
  public void function checkLogin(){
  	if(!structKeyExists(session, "user")){
  		redirectTo(controller="admin.dashboard", action="login");
  	}
  }
}