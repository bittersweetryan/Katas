component  implements="FizzBuzz.iAnswerable" output="false"
{
	public string function Answer(required any question)
	hint="I answer a question" output=false
	{
		var retString = '';
		
		if(!isNumeric(arguments.question))
			throw(type="invalidArgumentException");
			
		retString = CheckForFizz(arguments.question) & CheckForBuzz(arguments.question);
		
		if(len(retString))
			return retString;
		else
			return arguments.question;
		
	}
	
	private string function CheckForFizz(numeric question){
		
		if(!arguments.question MOD 3 OR findNoCase(3,arguments.question))
			return 'fizz';
		else
			return '';
	}
	
	private string function CheckForBuzz(numeric question){
		
		if(!arguments.question MOD 5 OR findNoCase(5,arguments.question))
			return 'buzz';
		else
			return '';
	}
}