component {

	/**
	 * @actionHelper logWrite
	 */
	function write(required string filename, required any data){

		return $.factory.getBean("LoggerUtil").write(arguments.filename, arguments.data);

	}

	/**
	 * @actionHelper logError
	 */
	function error(required any data){

		return write("error", arguments.data);

	}

	/**
	 * @actionHelper logRequest
	 */
	function request(required any data){

		return write("request", arguments.data);

	}

}