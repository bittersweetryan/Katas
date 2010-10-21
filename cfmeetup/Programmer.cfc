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
					return "ColdFusion Rocks!";
				break;
				case "java":
					return "People still use ColdFusion?";
				break;
				case "ruby":
					return "I don't like Ruby!";
				break;
			}				
		</cfscript>
	</cffunction> 
	
	<cffunction name="AddNewLanguage" returntype="void" access="public">
		<cfargument name="language" type="string" />
		<cfscript>
			AddLanguage(arguments.language);
		</cfscript>
	</cffunction>
	
	<cffunction name="AddLanguage" returntype="void" access="private">
		<cfargument name="language" type="string" />
		<cfscript>
			ArrayAppend(variables.languages,arguments.language);
		</cfscript>
	</cffunction>
</cfcomponent>