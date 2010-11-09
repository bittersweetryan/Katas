component  extends="mxunit.framework.TestCase" hint="I test the tea party kata solution"
{
	public void function setUp(){
		
		variables.TeaParty = new TeaParty();
	}
	
	public void function test_james_bond_should_return_hello_mr_bond(){
	
		expectd = "Hello Mr. Bond";
		actual = variables.TeaParty.Welcome("Bond",false,false);
		assertEquals(expectd, actual);
    }
	
	public void function test_elton_john_should_return_hello_sir_john(){
    		expected = "Hello Sir John";
    		actual = variables.TeaParty.welcome("John",false,true);
    		
    		assertEquals(expected,actual);
    }
	
	public void function test_jane_austin_should_return_hello_ms_austin(){
    		expected = "Hello Ms. Austin";
    		actual = variables.TeaParty.welcome('Austin',true,false);
    		
    		assertEquals(expected,actual);
    }
    
}