component extends="controllers.Admin" output="false" {
  public void function init(){
  	  super.init();

  }

  // openquestionsresults/index
  public void function index(){
    openquestionsresults = model("Openquestionsresult").findAll();
  }

  // openquestionsresults/show/key
  public void function show(){
    openquestionsresult = model("Openquestionsresult").findByKey(params.key);

    if (!IsObject(openquestionsresult)){
      flashInsert(error="Openquestionsresult #params.key# was not found");
      redirectTo(action="index");
    }
  }

  // openquestionsresults/new
  public void function new(){
    openquestionsresult = model("Openquestionsresult").new();
  }

  //openquestionsresults/edit/key
  public void function edit(){
    openquestionsresult = model("Openquestionsresult").findByKey(params.key);

    if (!IsObject(openquestionsresult)){
	    flashInsert(error="Openquestionsresult #params.key# was not found");
			redirectTo(action="index");
	  }
  }

  // openquestionsresults/create
  public void function create(){
    openquestionsresult = model("Openquestionsresult").new(params.openquestionsresult);

		if (openquestionsresult.save()){
			flashInsert(success="The openquestionsresult was created successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error creating the openquestionsresult.");
		  renderPage(action="new");
		}
  }

  // openquestionsresults/update
  public void function update(){
    openquestionsresult = model("Openquestionsresult").findByKey(params.key);

		if (openquestionsresult.update(params.openquestionsresult)){
		  flashInsert(success="The openquestionsresult was updated successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error updating the openquestionsresult.");
			renderPage(action="edit");
		}
  }

  // openquestionsresults/delete/key
  public void function delete(){
    openquestionsresult = model("Openquestionsresult").findByKey(params.key);

		if (openquestionsresult.delete()){
			flashInsert(success="The openquestionsresult was deleted successfully.");
      redirectTo(action="index");
    } else {
      flashInsert(error="There was an error deleting the openquestionsresult.");
			redirectTo(action="index");
    }
  }

}
