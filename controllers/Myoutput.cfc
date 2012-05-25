component extends="Controller" output="false" {
  public void function init(){
	provides("html,xml,json,csv");
  }
 public void function index(){
	sqloutput = model("students").findAll();
    renderWith(data=sqloutput, layout="false");
  }

 }