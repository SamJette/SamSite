<!---
	This is the parent controller file that all your controllers should extend.
	You can add functions to this file to make them globally available in all your controllers.
	Do not delete this file.
--->
component extends="Wheels" output="false" {

  public void function init(){
  	filters(through="checkLogin", except="login,register,create,signin,profile,activate");
  }

  // checkLogin
  public void function checkLogin(){
  	if(structKeyExists(session, "user")){
  		loggedInUser = model("Teacher").findByKey(session.user.id);
  	}else{
  		redirectTo(controller="Dashboard", action="login");
  	}
  }
}

