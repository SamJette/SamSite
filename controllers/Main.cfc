component extends="Controller" output="false" {
  public void function init(){
    //super.init();

  }
 public void function home(){
	output="Studenten pagina";
  }

  public void function login(){
  	//initialize model
		stuser = model("student").new();

  }
  public void function logout(){
  	  if(structKeyExists(session, "stuser")){
  	  	StructDelete(session, "stuser");
  	  }
	redirectTo(controller="main", action="login");
  }
   public void function signin(){

		 if (len(params.stuser.password) eq 0){
				params.stuser.password = "0";
		}
		//find a modelobject
    	stuser = model("student").findOne(where="email='#params.stuser.email#' AND password='#params.stuser.password#'");

		if (IsObject(stuser)){
			renderPage(action="login");
				session.stuser.id = stuser.id;
				session.stuser.name = stuser.name;
				session.stuser.roleid = 3;
				redirectTo(controller="main", action="home");

		}else{
				stuser = model("student").new(email=params.stuser.email);
				flashInsert(error="The email and password you entered are not valid.");
				renderPage(action="login");
		}

	}
}