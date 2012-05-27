component extends="Model" output="false" {

	public void function init() {
	  // Associations
	  hasMany("Classes_students");
	  hasMany("Results");
	  // Properties
	  property(
        name="fullName",
        sql="Concat(Trim(students.firstname), ' ', Trim(students.name))"
        );
	  // Validations
	  validatesFormatOf(property="email", type="email");
	  validatesUniquenessOf(property="email", includeSoftDeletes="false");
	  validatesUniquenessOf(property="number", includeSoftDeletes="false");
	  validatesUniquenessOf(property="email", scope="number", includeSoftDeletes="false");
	}

}
