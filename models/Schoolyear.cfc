component extends="Model" output="false" {

	public void function init() {
		// Asscociations
	  	hasMany("Classes_students");
	  	// Properties
		property(
        name="Schoolyeardate",
        sql="Concat(Trim(schoolyears.startdate), '-', Trim(schoolyears.enddate))"
        );
        // Validations
        validatesUniquenessOf(property="startdate", scope="enddate", message="Sorry, that year is already in the table.", includeSoftDeletes="false");
	}

}
