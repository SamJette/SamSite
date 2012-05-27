component extends="controllers.Admin" output="false" {
  public void function init(){
    super.init();

  }



  // classes_teachers/index
  public void function index(){
    classes_teachers = model("Classes_teacher").findAll(include="Class, Schoolyear, Teacher", order="teacherid, id");
  }

  // classes_teachers/show/key
  public void function show(){
    classes_teacher = model("Classes_teacher").findByKey(params.key);
    if (!IsObject(classes_teacher)){
      flashInsert(error="Classes_teacher #params.key# was not found");
      redirectTo(action="index");
    }
  }

  // classes_teachers/new
  public void function new(){
    classes_teacher = model("Classes_teacher").new();
    classlist = model("Class").findAll();
    teacherlist = model("Teacher").findAll();
    schoolyearlist = model("Schoolyear").findAll();
  }

  //classes_teachers/edit/key
  public void function edit(){
    classes_teacher = model("Classes_teacher").findByKey(params.key);
    classlist = model("Class").findAll();
    teacherlist = model("Teacher").findAll();
    schoolyearlist = model("Schoolyear").findAll();

    if (!IsObject(classes_teacher)){
	    flashInsert(error="Classes_teacher #params.key# was not found");
			redirectTo(action="index");
	  }
  }

  // classes_teachers/create
  public void function create(){
    classes_teacher = model("Classes_teacher").new(params.classes_teacher);

		if (classes_teacher.save()){
			flashInsert(success="The classes_teacher was created successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error creating the classes_teacher.");
		  renderPage(action="new");
		}
  }

  // classes_teachers/update
  public void function update(){
    classes_teacher = model("Classes_teacher").findByKey(params.key);

		if (classes_teacher.update(params.classes_teacher)){
		  flashInsert(success="The classes_teacher was updated successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error updating the classes_teacher.");
			renderPage(action="edit");
		}
  }

  // classes_teachers/delete/key
  public void function delete(){
    classes_teacher = model("Classes_teacher").findByKey(params.key);

		if (classes_teacher.delete()){
			flashInsert(success="The classes_teacher was deleted successfully.");
      redirectTo(action="index");
    } else {
      flashInsert(error="There was an error deleting the classes_teacher.");
			redirectTo(action="index");
    }
  }

}
