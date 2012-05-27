component extends="Model" output="false" {

	public void function init() {
		// Associations
		belongsTo("class");
		belongsTo("teacher");
		belongsTo("schoolyear");
	  	hasMany("teachers");
	  	//Validations
	    validatesUniquenessOf(property="teacherid", scope="classid, schoolyearid", message="The teachers for that class already exists for that schoolyear", includeSoftDeletes="false");
	}

}
