component extends="controllers.Admin" output="false" {
  public void function init(){
  	  super.init();
  }

  public void function login(){
  	//initialize model
		user = model("teacher").new();

  }
  public void function logout(){
  	  if(structKeyExists(session, "user")){
  	  	StructDelete(session, "user");
  	  }
	redirectTo(controller="main", action="login");
  }
   public void function signin(){

		 if (len(params.user.password) eq 0){
				params.user.password = "0";
		}
		//find a modelobject
    	user = model("teacher").findOne(where="email='#params.user.email#' AND password='#params.user.password#'");

		if (IsObject(user)){
			renderPage(action="login");

			if(user.isactivated neq 1){
				flashInsert(error="We could not log you in. Your account has not yet been activated. Please check the email you received at signup.");
				renderPage(action="login");
			}else{
				session.user.id = user.id;
				session.user.name = user.name;
				session.user.roleid = user.roleid;
				redirectTo(route="adminDashboardIndex");
			}
		}else{
				user = model("teacher").new(email=params.user.email);
				flashInsert(error="The email and password you entered are not valid.");
				renderPage(action="login");
		}

	}
}
