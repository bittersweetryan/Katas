component  extends="mxunit.framework.TestCase" output="false"
{
	public void function setUp(){
		//create the CUT
		variables.FizzBuzz = new FizzBuzz();
	}
	
	public void function test_3_should_return_Fizz(){
		assertEquals(expected="Fizz",actual=variables.FizzBuzz.Answer(3));
	}
	
	public void function test_6_should_return_Fizz(){
		assertEquals(expected="Fizz",actual=variables.FizzBuzz.Answer(6));
	}
	
	public void function test_5_should_return_Buzz(){
		assertEquals(expected="Buzz",actual=variables.FizzBuzz.Answer(5));
	}
	
	 public void function test_15_should_return_buzz(){
	 	assertEquals(expected="FizzBuzz",actual=variables.FizzBuzz.Answer(15));
	 }
	 
	 public void function test_27_should_return_fizz(){
	 	assertEquals(expected="Fizz",actual=variables.FizzBuzz.Answer(27));
	 }
	 
	 public void function test_7_should_return_7(){
	 	assertEquals(expected=7,actual=variables.FizzBuzz.Answer(7));
	 }
	 
	 
	 public void function test_string_should_throw_exception()
	 {
	 	expectException("invalidArgumentException");
	 	variables.FizzBuzz.Answer("a");
	 }
}