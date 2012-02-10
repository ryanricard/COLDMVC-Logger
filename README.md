####A logging plugin for ColdMVC

#####Usage:

Download the Logger plugin for ColdMVC and put it inside your _/plugins_ folder. Name the directory however you like; to reduce possible conflict, I suggest namespacing it _/com-ryanricard-logger_.

Update your app's _/config/plugins.cfm_ with the following.

	<cfset add("com-ryanricard-logger") />

Call Logger by way of the logger helper or controller action methods.

####Available Methods

#####write(filename, data)

Equivalent action helper: logWrite(filename, data)

Returns: void

* filename (required): string
* data (required): any complex or simple value

#####error(data)

Equivalent action helper: logError(data)

Returns: void

* data (required): any complex or simple value

#####request(data)

Equivalent action helper: logRequest(data)

Returns: void

* data (required): any complex or simple value

####Observes & writes data on ColdMVC _error_ event.  Intrusive? Maybe, but I like it.

Details: Out of the box, the plugin observers the ColdMVC error event (newly added in ColdMVC 2.0), creates a log directory at the same level as your app directory, and writes a dated error_log_YYYYMMDD.txt documenting daily errors. Potential hang-ups include the possibility of OS file write permissions.


#####Copyright 2012 Ryan Ricard

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.