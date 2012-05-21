component extends="Controller" output="false" {

  public void function init(){
  	  super.init();
  	  filters(through="redirectStudent");
  }

  // results/index
  public void function index(){
    results = model("Result").findAll();
  }

  // results/show/key
  public void function show(){
    result = model("Result").findByKey(params.key);

    if (!IsObject(result)){
      flashInsert(error="Result #params.key# was not found");
      redirectTo(action="index");
    }
  }

  // results/new
  public void function new(){
    result = model("Result").new();
  }

  //results/edit/key
  public void function edit(){
    result = model("Result").findByKey(params.key);

    if (!IsObject(result)){
	    flashInsert(error="Result #params.key# was not found");
			redirectTo(action="index");
	  }
  }

  // results/create
  public void function create(){
    result = model("Result").new(params.result);

		if (result.save()){
			flashInsert(success="The result was created successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error creating the result.");
		  renderPage(action="new");
		}
  }

  // results/update
  public void function update(){
    result = model("Result").findByKey(params.key);

		if (result.update(params.result)){
		  flashInsert(success="The result was updated successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error updating the result.");
			renderPage(action="edit");
		}
  }

  // results/delete/key
  public void function delete(){
    result = model("Result").findByKey(params.key);

		if (result.delete()){
			flashInsert(success="The result was deleted successfully.");
      redirectTo(action="index");
    } else {
      flashInsert(error="There was an error deleting the result.");
			redirectTo(action="index");
    }
  }

}
