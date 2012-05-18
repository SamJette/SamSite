<!---
	This is the parent controller file that all your controllers should extend.
	You can add functions to this file to make them globally available in all your controllers.
	Do not delete this file.
--->
component extends="Controller" output="false" {

  public void function init(){
  	super.init();
  }

  // roles/index
  public void function index(){

    roles = model("Role").findAll();
  }

  public void function login(){
  	//initialize model
	user = model("teacher").new();

  }
  public void function logout(){
	StructDelete(session, "user");
	redirectTo(controller="dashboard", action="login");
  }
   public void function signin(){

		 if (len(params.user.password) eq 0){
				params.user.password = "$€£"
		}
		//find a modelobject
    	user = model("teacher").findOne(where="email='#params.user.email#' AND password='#params.user.password#'");

		if (IsObject(user)){
			flashInsert(error="We could not log you in. Your account has not yet been activated. Please check the email you received at signup.");
			if(user.isactivated neq 1){
				renderPage(action="login");
			}else{
				session.user.id = user.id;
				redirectTo(controller="dashboard", action="");
			}
		}else{
			user = model("teacher").new(email=params.user.email);
			flashInsert(error="The email and password you entered are not valid.");
			renderPage(action="login");
		}
	}
}
