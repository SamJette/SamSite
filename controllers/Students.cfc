component extends="Controller" output="false" {

  public void function init(){
    super.init();
  }

  // students/index
  public void function index(){
    students = model("Student").findAll();
  }

  // students/show/key
  public void function show(){
    student = model("Student").findByKey(params.key);

    if (!IsObject(student)){
      flashInsert(error="Student #params.key# was not found");
      redirectTo(action="index");
    }
  }

  // students/new
  public void function new(){
    student = model("Student").new();
  }

  //students/edit/key
  public void function edit(){
    student = model("Student").findByKey(params.key);

    if (!IsObject(student)){
	    flashInsert(error="Student #params.key# was not found");
			redirectTo(action="index");
	  }
  }

  // students/create
  public void function create(){
    student = model("Student").new(params.student);

		if (student.save()){
			flashInsert(success="The student was created successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error creating the student.");
		  renderPage(action="new");
		}
  }

  // students/update
  public void function update(){
    student = model("Student").findByKey(params.key);

		if (student.update(params.student)){
		  flashInsert(success="The student was updated successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error updating the student.");
			renderPage(action="edit");
		}
  }

  // students/delete/key
  public void function delete(){
    student = model("Student").findByKey(params.key);

		if (student.delete()){
			flashInsert(success="The student was deleted successfully.");
      redirectTo(action="index");
    } else {
      flashInsert(error="There was an error deleting the student.");
			redirectTo(action="index");
    }
  }

}
