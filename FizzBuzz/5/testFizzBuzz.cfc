﻿component  extends="mxunit.framework.TestCase" output="false"
{

	public void function setUp(){
		//create the cut
		variables.FizzBuzz = new FizzBuzz();
	}
	
	public void function test_3_should_return_fizz(){
		
		expected = 'fizz';
		actual = variables.FizzBuzz.Answer(3);
		
		assertEquals(expected,actual);
	}
	
	public void function test_5_should_return_buzz(){
		expected = 'buzz';
		actual = variables.FizzBuzz.Answer(5);
		
		assertEquals(expected,actual);
	}
	
	public void function test_15_should_return_fizzbuzz(){
		expected = 'fizzbuzz';
		actual = variables.FizzBuzz.Answer(15);
		
		assertEquals(expected,actual);
	}
	
	public void function test_7_should_return_7(){
		expected = 7;
		actual = variables.FizzBuzz.Answer(7);
		
		assertEquals(expected,actual);
	}
	
	public void function test_a_should_throw_error(){
		expectException("invalidArgumentError");
		
		variables.FizzBuzz.Answer("a");
	}
	
	public void function test_13_should_return_fizz(){
		expected = 'fizz';
		actual=variables.FizzBuzz.Answer(13);
		
		assertEquals(expected,actual);
	}
	
	public void function test_57_should_return_buzz(){
		expected = 'buzz';
		actual = variables.FizzBuzz.Answer(56);
		
		assertEquals(expected,actual);
	}
}