component extends="Model" output="false" {

	public void function init() {
		belongsTo("Question");
		hasMany("results");
	}

}
