component extends="controllers.Admin" output="false" {

  public void function init(){
	super.init();

  }

  // answers/index
  public void function index(){
    answers = model("Answer").findAll(include="Question", order="questionid, id");
  }

  // answers/show/key
  public void function show(){
    answer = model("Answer").findByKey(params.key);

    if (!IsObject(answer)){
      flashInsert(error="Answer #params.key# was not found");
      redirectTo(action="index");
    }
  }

  // answers/new
  public void function new(){
    answer = model("Answer").new();
    questionlist = model("Question").findAll();
  }

  //answers/edit/key
  public void function edit(){
    answer = model("Answer").findByKey(params.key);
    questionlist = model("Question").findAll();

    if (!IsObject(answer)){
	    flashInsert(error="Answer #params.key# was not found");
			redirectTo(action="index");
	  }
  }

  // answers/create
  public void function create(){
    answer = model("Answer").new(params.answer);

		if (answer.save()){
			flashInsert(success="The answer was created successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error creating the answer.");
		  renderPage(action="new");
		}
  }

  // answers/update
  public void function update(){
    answer = model("Answer").findByKey(params.key);

		if (answer.update(params.answer)){
		  flashInsert(success="The answer was updated successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error updating the answer.");
			renderPage(action="edit");
		}
  }

  // answers/delete/key
  public void function delete(){
    answer = model("Answer").findByKey(params.key);

		if (answer.delete()){
			flashInsert(success="The answer was deleted successfully.");
      redirectTo(action="index");
    } else {
      flashInsert(error="There was an error deleting the answer.");
			redirectTo(action="index");
    }
  }

}
