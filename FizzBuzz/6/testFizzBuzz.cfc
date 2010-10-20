﻿component extends="mxunit.framework.TestCase"
{
	public void function setUp(){
		
		//create our CUT
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
	
	public void function test_6_should_return_fizz(){
		
		expected = 'fizz';
		actual = variables.FizzBuzz.Answer(6);
		
		assertEquals(expected,actual);
	}
	
	public void function test_10_should_return_buzz(){
		
		expected = 'buzz';
		actual = variables.FizzBuzz.Answer(10);
		
		assertEquals(expected,actual);
	}
	
	public void function test_15_should_return_fizz_buzz(){
		
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
		
		expectException('invalidArgumentException');
		
		variables.FizzBuzz.Answer("a");
	}
	
	public void function test_13_should_return_fizz(){
		
		expected = 'fizz';
		actual = variables.FizzBuzz.Answer(13);
		
		assertEquals(expected,actual);
	}
	
	public void function test_52_should_return_buzz(){
		
		expected = 'buzz';
		actual = variables.FizzBuzz.Answer(52);
		
		assertEquals(expected,actual);
	}
	
	public void function test_53_should_return_fizzbuzz(){
		expected = 'fizzbuzz';
		actual = variables.FizzBuzz.Answer(53);
		
		assertEquals(expected,actual);
	}
}
