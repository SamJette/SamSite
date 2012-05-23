component extends="Controller" output="false" {
  public void function init(){
    //super.init();
	provides("html,xml,json,csv");
  }
 public void function index(){
	output = model("students").findAll();
        renderWith(data=output, layout="false");

  }

 }