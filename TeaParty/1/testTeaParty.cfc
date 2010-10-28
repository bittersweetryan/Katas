component  extends="mxunit.framework.TestCase" hint="I test the tea party kata solution"
{
	public void function setUp(){
		
		variables.TeaParty = new TeaParty();
	}
	
	public void function test_jame_bond_should_return_hello_mr_bond(){
		assertTrue(isStruct(variables.TeaParty));
    }
    
}