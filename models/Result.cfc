component extends="Model" output="false" {

	public void function init() {
	  	// Associations
		belongsTo("question");
		belongsTo("student");
		belongsTo("answer");
	  	hasMany("openquestionsresult");
	  	// Properties
	}

}
