component extends="Controller" output="false" {

  public void function init(){
    super.init();
    filters(through="redirectStudent");
  }



  // classes_students/index
  public void function index(){
    classes_students = model("Classes_student").findAll();
  }

  // classes_students/show/key
  public void function show(){
    classes_student = model("Classes_student").findByKey(params.key);

    if (!IsObject(classes_student)){
      flashInsert(error="Classes_student #params.key# was not found");
      redirectTo(action="index");
    }
  }

  // classes_students/new
  public void function new(){
    classes_student = model("Classes_student").new();
  }

  //classes_students/edit/key
  public void function edit(){
    classes_student = model("Classes_student").findByKey(params.key);

    if (!IsObject(classes_student)){
	    flashInsert(error="Classes_student #params.key# was not found");
			redirectTo(action="index");
	  }
  }

  // classes_students/create
  public void function create(){
    classes_student = model("Classes_student").new(params.classes_student);

		if (classes_student.save()){
			flashInsert(success="The classes_student was created successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error creating the classes_student.");
		  renderPage(action="new");
		}
  }

  // classes_students/update
  public void function update(){
    classes_student = model("Classes_student").findByKey(params.key);

		if (classes_student.update(params.classes_student)){
		  flashInsert(success="The classes_student was updated successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error updating the classes_student.");
			renderPage(action="edit");
		}
  }

  // classes_students/delete/key
  public void function delete(){
    classes_student = model("Classes_student").findByKey(params.key);

		if (classes_student.delete()){
			flashInsert(success="The classes_student was deleted successfully.");
      redirectTo(action="index");
    } else {
      flashInsert(error="There was an error deleting the classes_student.");
			redirectTo(action="index");
    }
  }

}
