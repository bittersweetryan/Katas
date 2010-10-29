<cfcomponent output="false">
	<cfscript>
		variables.language = "";
		variables.languages = [];
	</cfscript>
	
	<cffunction name="SetLanguage" returntype="void" access="public" 
		hint="I set the type of programming language this programmer uses">
		<cfargument name="language" type="string" />
		<cfscript>
			variables.language = arguments.language;
		</cfscript>
	</cffunction>
	
	<cffunction name="GetOpinionOnColdFusion" returntype="string" access="public"
		hint="I get a programmers opinion on ColdFusion">
		<cfscript>
			switch("#variables.language#") 
			{
				case "php":
					return "ColdFusion Sucks!";
				break;
				case "java":
					return "People still use ColdFusion?";
				break;
				case "ruby":
					return "If its not Ruby it sucks!";
				break;
			}				
		</cfscript>
	</cffunction> 
	
	<cffunction name="AddNewLanguage" returntype="boolean" access="public">
		<cfargument name="language" type="string" />
		<cfscript>
			if(!AddLanguage(arguments.language));
				
		</cfscript>
	</cffunction>
	
	<cffunction name="AddLanguage" returntype="boolean" access="private">
		<cfargument name="language" type="string" />
		<cfscript>
			ArrayAppend(variables.languages,arguments.language);
			return true;
		</cfscript>
	</cffunction>
</cfcomponent>