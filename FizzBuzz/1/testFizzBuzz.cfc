component extends="mxunit.framework.TestCase"
{
	public void function setUp(){
		//create the CUT
		variables.FizzBuzz = new FizzBuzz();
	}	
	
	public void function test_3_should_return_fizz(){
		actual = variables.FizzBuzz.Answer(3);
		expected = "Fizz";
		assertEquals(expected,actual);
	}
	
	public void function test_5_should_return_buzz(){
		actual = variables.FizzBuzz.Answer(5);
		expected = "Buzz";
		assertEquals(expected,actual);
	}
	
	public void function test_15_should_return_fizzbuzz(){
		actual = variables.FizzBuzz.Answer(15);
		expected = "FizzBuzz";
		assertEquals(expected,actual);
	}
	
	public void function test_13_should_return_fizz(){
		actual = variables.FizzBuzz.Answer(13);
		expected = "Fizz";
		assertEquals(expected,actual);
	}
	
	public void function test_17_should_return_17(){
		actual = variables.FizzBuzz.Answer(17);
		expected = "17";
		assertEquals(expected,actual);
	}
	
	public void function test_single_character_should_throw_exception(){
		expectException("invalidArgumentException");
		variables.FizzBuzz.Answer("a");
	}
	
	public void function test_pass_in_longer_array_and_get_exptected_output(){
		var myArray = [];
		for(i=1;i<=15;i++){
			ArrayAppend(myArray,i);
		}
		
		actual = variables.FizzBuzz.Answer(myArray);
		expected = "1,2,fizz,4,buzz,fizz,7,8,fizz,buzz,11,fizz,fizz,14,fizzbuzz";
		assertEquals(expected,actual);
	}
	
	public void function test_pass_in_list_and_get_exptected_output(){
		var myList = "1,2,3,4,5,6,7,8,9,10,11,12,13,14,15";
		
		actual=variables.FizzBuzz.Answer(myList);
		expected = "1,2,fizz,4,buzz,fizz,7,8,fizz,buzz,11,fizz,fizz,14,fizzbuzz";
		
		assertEquals(expected,actual);
	}
}
