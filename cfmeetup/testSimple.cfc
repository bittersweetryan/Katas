<cfcomponent extends="mxunit.framework.TestCase" output="false">
	<cffunction name="SetUp" access="public">
		<cfscript>
			//create the CUT
			variables.Programmer = new Programmer();
		</cfscript>
	</cffunction>
	
	<cffunction name="Test_Ask_PHP_Programmer_About_ColdFusion_Expect_ColdFusion_Sucks" access="public">
		<cfscript>
			variables.Programmer.SetLanguage("php");
			
			expected = "ColdFusion Sucks!";
			actual = variables.Programmer.GetOpinionOnColdFusion();
			
			assertEquals(expected,actual);
		</cfscript>
	</cffunction>
</cfcomponent>









