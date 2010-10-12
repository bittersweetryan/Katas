/*******
	if a number is divisible by 3 then return fizz
	if a number is divisible by 5 then return buzz
	if a number is divisible by 3 and 5 return fizzbuzz
	if a number contains 3 then return fizz
	if a number contians 5 then return buzz
	if a number contains both then return fizzbuzz
	parse a string
	parse a array
*******/
component  extends="mxunit.framework.TestCase" output="false"
{
	public void function setUp(){
		//create the CUT
		variables.FizzBuzz = new FizzBuzz();
	}
	
	public void function test_3_should_return_fizz(){
		actual = variables.FizzBuzz.Answer(3);
		expected = 'fizz';
		
		assertEquals(expected, actual);
	}
	
	public void function test_5_should_return_buzz(){
		actual = variables.FizzBuzz.Answer(5);
		expected = 'buzz';
		
		assertEquals(expected,actual);
	}
	
	public void function test_15_shoud_return_fizzbuzz(){
		actual = variables.FizzBuzz.Answer(15);
		expected = 'fizzbuzz';
		
		assertEquals(expected,actual);
	}
	
	public void function test_6_should_return_fizz(){
		actual = variables.FizzBuzz.Answer(6);
		expected = 'fizz';
		
		assertEquals(expected,actual);
	}
	
	public void function test_7_should_return_7(){
		actual = variables.FizzBuzz.Answer(7);
		expected = 7;
		assertEquals(expected,actual);
	}
	
	public void function test_a_should_return_execption(){
		expectException("invalidArgumentException");
		
		variables.FizzBuzz.Answer("a");
	}
	
	public void function test_13_should_return_fizz(){
		actual = variables.FizzBuzz.Answer(13);
		expected = 'fizz';
		
		assertEquals(expected,actual);
	}
	
	public void function test_35_should_return_fizzbuzz(){
		actual = variables.FizzBuzz.Answer(35);
		expected = 'fizzbuzz';
		
		assertEquals(expected,actual);
	}
}