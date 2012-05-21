component extends="Controller" output="false" {

  public void function init(){
    super.init();
    filters(through="redirectStudent");
  }

  // roles/index
  public void function index(){
    roles = model("Role").findAll();
  }

  // roles/show/key
  public void function show(){
    role = model("Role").findByKey(params.key);

    if (!IsObject(role)){
      flashInsert(error="Role #params.key# was not found");
      redirectTo(action="index");
    }
  }

  // roles/new
  public void function new(){
    role = model("Role").new();
  }

  //roles/edit/key
  public void function edit(){
    role = model("Role").findByKey(params.key);

    if (!IsObject(role)){
	    flashInsert(error="Role #params.key# was not found");
			redirectTo(action="index");
	  }
  }

  // roles/create
  public void function create(){
    role = model("Role").new(params.role);

		if (role.save()){
			flashInsert(success="The role was created successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error creating the role.");
		  renderPage(action="new");
		}
  }

  // roles/update
  public void function update(){
    role = model("Role").findByKey(params.key);

		if (role.update(params.role)){
		  flashInsert(success="The role was updated successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error updating the role.");
			renderPage(action="edit");
		}
  }

  // roles/delete/key
  public void function delete(){
    role = model("Role").findByKey(params.key);

		if (role.delete()){
			flashInsert(success="The role was deleted successfully.");
      redirectTo(action="index");
    } else {
      flashInsert(error="There was an error deleting the role.");
			redirectTo(action="index");
    }
  }

}
