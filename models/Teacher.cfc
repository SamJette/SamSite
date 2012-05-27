component extends="Model" output="false" {
	public void function init() {
		// Associations
		hasMany("questions");
		belongsTo("role");
		hasMany("classes");
		// Properties
		property(
        name="fullName",
        sql="Concat(Trim(teachers.firstname), ' ', Trim(teachers.name))"
        );
       	// Validations
	  	validatesFormatOf(property="email", type="email");
	  	validatesUniquenessOf(property="email", includeSoftDeletes="false");
	}
}