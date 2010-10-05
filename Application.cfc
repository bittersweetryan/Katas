<cfcomponent>
	<cfscript>
		this.name="Kata Dojo";
		
		this.mappings["/mxunit"] = expandPath("../mxunit");
	</cfscript>
	<cffunction name="OnApplicationStart">
		<cfscript>
			return true;
		</cfscript>
	</cffunction>
</cfcomponent>