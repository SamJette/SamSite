component extends="Wheels" output="false" {
  public void function init(){
  	filters(through="checkLogin", except="myoutput,admin,login,register,signin,activate");
  }

  // checkLogin
  public void function checkLogin(){
  	if(!structKeyExists(session, "stuser")){
  		redirectTo(controller="main", action="login");
  	}
  }
}