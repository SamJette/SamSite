component extends="Controller" output="false" {
  public void function init(){
    //super.init();
	provides("html,xml,json,csv");
  }
 public void function export(){
	output = model("students").findAll();
   if(params.format == 'json'){
        renderWith(data=output);
    }

  }

 }