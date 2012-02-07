/**
 * @singleton true
 */
component {

	function timestamp(){

		return dateformat(now(),"yyyymmdd") & " " & timeformat(now(),"HH:mm:ss");

	}

	function write(required string filename, required any data){

		arguments.filename = arguments.filename & "_log_" & dateformat(now(),"yyyymmdd");

		var directoryPath = expandPath("/config/log");
		var filePath = expandPath("/config/log/#arguments.filename#.txt");

		if(!isJson(arguments.data)){
			arguments.data = serializeJson(arguments.data);
		}

		if(!directoryExists(directoryPath)){
			directoryCreate(directoryPath);
		}

		if(!fileExists(filePath)){
			fileWrite(filePath,"");
			writeLine(filePath,"#timestamp()# :: file written");
		}

		writeLine(filePath,"#timestamp()# :: #arguments.data#");

	}

	function writeLine(required string filepath,required string data){

		var log = fileOpen(arguments.filePath, "append");

		fileWriteLine(log,arguments.data);

		fileClose(log);

	}

}