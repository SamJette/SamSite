component extends="controllers.Admin" output="false" {
public void function init(){
    super.init();

  }

  // schoolyears/index
  public void function index(){
    schoolyears = model("Schoolyear").findAll();
  }

  // schoolyears/show/key
  public void function show(){
    schoolyear = model("Schoolyear").findByKey(params.key);

    if (!IsObject(schoolyear)){
      flashInsert(error="Schoolyear #params.key# was not found");
      redirectTo(action="index");
    }
  }

  // schoolyears/new
  public void function new(){
    schoolyear = model("Schoolyear").new();
  }

  //schoolyears/edit/key
  public void function edit(){
    schoolyear = model("Schoolyear").findByKey(params.key);

    if (!IsObject(schoolyear)){
	    flashInsert(error="Schoolyear #params.key# was not found");
			redirectTo(action="index");
	  }
  }

  // schoolyears/create
  public void function create(){
    //fix for date -- Year conversion
    for(i in params.schoolyear){
        params.schoolyear[i] = #Year(params.schoolyear[i])#;
     }
    schoolyear = model("Schoolyear").new(params.schoolyear);

		if (schoolyear.save()){
			flashInsert(success="The schoolyear was created successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error creating the schoolyear.");
		  renderPage(action="new");
		}
  }

  // schoolyears/update
  public void function update(){
    schoolyear = model("Schoolyear").findByKey(params.key);
    //fix for date -- Year conversion
    for(i in params.schoolyear){
        params.schoolyear[i] = #Year(params.schoolyear[i])#;
     }
		if (schoolyear.update(params.schoolyear)){
		  flashInsert(success="The schoolyear was updated successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error updating the schoolyear.");
			renderPage(action="edit");
		}
  }

  // schoolyears/delete/key
  public void function delete(){
    schoolyear = model("Schoolyear").findByKey(params.key);

		if (schoolyear.delete()){
			flashInsert(success="The schoolyear was deleted successfully.");
      redirectTo(action="index");
    } else {
      flashInsert(error="There was an error deleting the schoolyear.");
			redirectTo(action="index");
    }
  }

}
