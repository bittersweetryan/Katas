component  implements="FizzBuzz.iAnswerable" output="false"
{
	public string function Answer(required any question)
	hint="I answer a question" output=false
	{
		if(!isNumeric( arguments.question))
			throw(type="invalidArgumentError");
					
		if(!arguments.question MOD 3 AND !arguments.question MOD 5)
			return 'fizzbuzz';
		else if(!arguments.question MOD 3 OR findNoCase("3",arguments.question))
			return 'fizz';
		else if(!arguments.question MOD 5 or findNOCase("5",arguments.question))
			return 'buzz';
		else
			return arguments.question;
	}
}