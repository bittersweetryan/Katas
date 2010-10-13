component  implements="FizzBuzz.iAnswerable" output="false"
{
	public string function Answer(required any question)
	hint="I answer a question" output=false
	{
		if(!IsNumeric(arguments.question))
			throw(type="invalidArgumentException");
			
		if((arguments.question MOD 3 eq 0 && arguments.question MOD 5 eq 0) || (find(3,arguments.question) && find(5,arguments.question)))
			return 'fizzbuzz';
		else if (arguments.question MOD 5 eq 0)
			return 'buzz';
		else if (arguments.question MOD 3 eq 0 OR find(3,arguments.question))
			return 'fizz';
		else
			return arguments.question;
	}
}