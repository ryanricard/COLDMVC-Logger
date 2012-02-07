/**
 * @singleton true
 * @accessors true
 */
component {

	/**
	 * @inject coldmvc
	 */
	property $;

	/**
	 * @events error
	 */
	public void function logError(struct params = {}){

		if(!structKeyExists(arguments.params, "error")){
			arguments.params["error"] = "Whoops. Error param not received by logger plugin. Dig in and let me know what you find. Thanks! Ryan";
		}

		$.logger.error(arguments.params.error);

	}

}