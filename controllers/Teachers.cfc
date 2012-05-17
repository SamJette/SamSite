component extends="Controller" output="false" {
  
  public void function init(){
  }
  
  // teachers/index
  public void function index(){
    teachers = model("Teacher").findAll();
  }
  
  // teachers/show/key
  public void function show(){
    teacher = model("Teacher").findByKey(params.key);
    	
    if (!IsObject(teacher)){
      flashInsert(error="Teacher #params.key# was not found");
      redirectTo(action="index");
    }
  }
  
  // teachers/new
  public void function new(){
    teacher = model("Teacher").new();
  }
  
  //teachers/edit/key
  public void function edit(){
    teacher = model("Teacher").findByKey(params.key);
    	
    if (!IsObject(teacher)){
	    flashInsert(error="Teacher #params.key# was not found");
			redirectTo(action="index");
	  }
  }
  
  // teachers/create
  public void function create(){
    teacher = model("Teacher").new(params.teacher);
		
		if (teacher.save()){
			flashInsert(success="The teacher was created successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error creating the teacher.");
		  renderPage(action="new");
		}
  }
  
  // teachers/update
  public void function update(){
    teacher = model("Teacher").findByKey(params.key);
		
		if (teacher.update(params.teacher)){
		  flashInsert(success="The teacher was updated successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error updating the teacher.");
			renderPage(action="edit");
		}
  }
  
  // teachers/delete/key
  public void function delete(){
    teacher = model("Teacher").findByKey(params.key);

		if (teacher.delete()){
			flashInsert(success="The teacher was deleted successfully.");
      redirectTo(action="index");
    } else {
      flashInsert(error="There was an error deleting the teacher.");
			redirectTo(action="index");
    }
  }
  
}
