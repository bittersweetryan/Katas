component  extends="mxunit.framework.TestCase" output="false"
{

	public void function setUp(){
		//create the cut
		variables.FizzBuzz = new FIzzBuzz();
	}
	
	public void function test_3_should_return_fizz(){
		
		actual = variables.FizzBuzz.Answer(3);
		expected = 'fizz';
		
		assertEquals(expected,actual);
	}
	
	public void function test_5_should_return_buzz(){
		actual = variables.FizzBuzz.Answer(5);
		expected = 'buzz';
		
		assertEquals(expected,actual);
	}
	
	public void function test_7_should_return_7(){
		actual = variables.FizzBuzz.Answer(7);
		expected = 7;
		
		assertEquals(expected,actual);
	}
	
	public void function test_nonnumeric_should_throw_error(){
		expectException("invalidArgumentException");
		
		variables.FizzBuzz.Answer("a");
	}
	
	public void function test_15_should_return_fizzbuzz(){
		actual = variables.FizzBuzz.Answer(15);
		expected = 'fizzbuzz';
		
		assertEquals(expected,actual);
	}
	
	public void function test_6_should_return_fizz(){
		actual = variables.FizzBuzz.answer(6);
		expected = 'fizz';
		
		assertEquals(expected,actual);
	}
	
	public void function test_13_should_return_fizz(){
		actual = variables.FizzBuzz.Answer(13);
		expected = 'fizz';
		
		assertEquals(expected,actual);
	}
	
	public void function test_list_should_return_list_with_replaced_values(){
		var myList = "1,2,3,4,5,6,7,8,9,10,11,12,13,14,15";
		
		actual = variables.FizzBuzz.Answer(myList);
		expected = "1,2,fizz,4,5,buzz,7,8,fizz,buzz,11,fizz,13,14,fizzbuzz";
		
		assertEquals(myList);
	}
}