<cfcomponent extends="mxunit.framework.TestCase" output="false" displayname="Simple Test 2">
	
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
	
	<cffunction name="Test_Ask_Java_Programmer_About_ColdFusion_Expect_People_Still_Use_ColdFusion" access="public" >
		<cfscript>
			variables.Programmer.SetLanguage("Java");
			
			expected = "People still use ColdFusion?";
			actual = variables.Programmer.GetOpinionOnColdFusion();
			
			assertEquals(expected,actual);
		</cfscript>
	</cffunction>
	
	<cffunction name="Test_Ask_Ruby_Programmer_About_ColdFusion_Expect_If_its_not_ruby_it_sucks" access="public" >
		<cfscript>
			variables.Programmer.SetLanguage("Ruby");
			
			expected = "If its not ruby it sucks!";
			actual = variables.Programmer.GetOpinionOnColdFusion();
			
			assertEquals(expected,actual);
		</cfscript>
	</cffunction>
</cfcomponent>












