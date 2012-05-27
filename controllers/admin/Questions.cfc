component extends="controllers.Admin" output="false" {
  public void function init(){
  	  super.init();
  }

  // questions/index
  public void function index(){
    questions = model("Question").findAll(include="Teacher");

  }

  // questions/show/key
  public void function show(){
    question = model("Question").findByKey(params.key);

    if (!IsObject(question)){
      flashInsert(error="Question #params.key# was not found");
      redirectTo(action="index");
    }
  }

  // questions/new
  public void function new(){
    question = model("Question").new();
    teacherlist = model("Teacher").findAll();
  }

  //questions/edit/key
  public void function edit(){
    question = model("Question").findByKey(params.key);
    teacherlist = model("Teacher").findAll();

    if (!IsObject(question)){
	    flashInsert(error="Question #params.key# was not found");
			redirectTo(action="index");
	  }
  }

  // questions/create
  public void function create(){
    question = model("Question").new(params.question);

		if (question.save()){
			flashInsert(success="The question was created successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error creating the question.");
		  renderPage(action="new");
		}
  }

  // questions/update
  public void function update(){
    question = model("Question").findByKey(params.key);

		if (question.update(params.question)){
		  flashInsert(success="The question was updated successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error updating the question.");
			renderPage(action="edit");
		}
  }

  // questions/delete/key
  public void function delete(){
    question = model("Question").findByKey(params.key);

		if (question.delete()){
			flashInsert(success="The question was deleted successfully.");
      redirectTo(action="index");
    } else {
      flashInsert(error="There was an error deleting the question.");
			redirectTo(action="index");
    }
  }

}
