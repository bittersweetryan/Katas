component  extends="mxunit.framework.TestCase" output="false"
{

	public void function setup(){
		//create the cut
		variables.TeaParty = new TeaParty();
	}
	
	public void function test_james_bond_should_return_hello_mr_bond(){
    		expected = "Hello, Mr. Bond";
    		actual = variables.TeaParty.Welcome("Bond",false,false);
    		
    		assertEquals(expected,actual);
    }
    
}