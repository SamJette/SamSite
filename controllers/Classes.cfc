component extends="Controller" output="false" {

  public void function init(){
    super.init();
    filters(through="redirectStudent");
  }

  // classes/index
  public void function index(){
    classes = model("Class").findAll();
  }

  // classes/show/key
  public void function show(){
    class = model("Class").findByKey(params.key);

    if (!IsObject(class)){
      flashInsert(error="Class #params.key# was not found");
      redirectTo(action="index");
    }
  }

  // classes/new
  public void function new(){
    class = model("Class").new();
  }

  //classes/edit/key
  public void function edit(){
    class = model("Class").findByKey(params.key);

    if (!IsObject(class)){
	    flashInsert(error="Class #params.key# was not found");
			redirectTo(action="index");
	  }
  }

  // classes/create
  public void function create(){
    class = model("Class").new(params.class);

		if (class.save()){
			flashInsert(success="The class was created successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error creating the class.");
		  renderPage(action="new");
		}
  }

  // classes/update
  public void function update(){
    class = model("Class").findByKey(params.key);

		if (class.update(params.class)){
		  flashInsert(success="The class was updated successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error updating the class.");
			renderPage(action="edit");
		}
  }

  // classes/delete/key
  public void function delete(){
    class = model("Class").findByKey(params.key);

		if (class.delete()){
			flashInsert(success="The class was deleted successfully.");
      redirectTo(action="index");
    } else {
      flashInsert(error="There was an error deleting the class.");
			redirectTo(action="index");
    }
  }

}
