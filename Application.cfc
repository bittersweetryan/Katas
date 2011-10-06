     <cfcomponent>
	<cfscript>	
		this.name = "Kata dojo"; 
		
		this.seperator = createObject("java","java.lang.System").getProperty("file.separator");
		
		this.mappings["/mxunit"] = getDirectoryFromPath(getCurrentTemplatePath()) & "mxunit" & this.seperator;
		this.mappings["/"] = expandpath(".");
	</cfscript>
	
	<cffunction name="OnApplicationStart" access="public" returntype="boolean" output="false">
		<cfscript>
			return true;
		</cfscript>
	</cffunction>
	
	<cffunction name="OnRequestStart" access="public" returntype="boolean" output="false">
 		<cfargument name="TargetPage" type="string" required="true"/>
 		<cfscript>
 			return true; 	 	
		</cfscript>
	</cffunction>
</cfcomponent>