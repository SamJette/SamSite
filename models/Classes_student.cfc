component extends="Model" output="false" {

	public void function init() {
		// Associations
		belongsTo("class");
		belongsTo("student");
		belongsTo("schoolyear");
	  	hasMany("students");
	  	// Properties

	 	// Validations
	 	validatesUniquenessOf(property="studentid", scope="classid, schoolyearid", message="The student for that class already exists for that schoolyear", includeSoftDeletes="false");
		validatesUniquenessOf(property="studentid", scope="schoolyearid", message="The student & schoolyear combination already exists", includeSoftDeletes="false");
	}

}
