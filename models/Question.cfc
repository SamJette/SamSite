component extends="Model" output="false" {

	public void function init() {
		// Associations
		belongsTo("teacher");
		hasMany("answers");
		hasMany("results");
	}
}
