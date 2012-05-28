component extends="Controller" output="false" {
  public void function init(){
	provides("html,xml,json,csv");
  }
 public void function poll(){
	sqloutput1 = model("questions").findAllByIspushed(where="ispushed=1");

	if(sqloutput1.RecordCount EQ 0){
		sqloutput = query("end":["stop"]);
		APPLICATION.message="stop";
	}else{
		sqloutput = query("begin":["start"]);
		APPLICATION.message="start";
	}
    renderWith(data=sqloutput, layout="false");
    showDebugOutput="No"
  }
  public void function index(){
  		message= APPLICATION.message;
  }

 }