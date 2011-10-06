
<cfsetting showdebugoutput="false" />

<cfinvoke component="mxunit.runner.DirectoryTestSuite"
          method="run"
          directory="#expandPath('.')#"
          recurse="true"
          excludes="mxunit"
          returnvariable="results" />

<cfscript>
	testResults = results.getResultsOutput('html');
	
	testResults = replace(testResults, "/Katas.mxunit","mxunit","ALL");
</cfscript>

<cfoutput>  
	#testResults#
</cfoutput>