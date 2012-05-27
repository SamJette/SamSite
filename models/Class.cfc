component extends="Model" output="false" {

	public void function init() {
		// Associations
		belongsTo("Teacher");
		hasMany("Classes_students");
		// Validations
		validatesUniquenessOf(property="classid", includeSoftDeletes="false");
	}
}
