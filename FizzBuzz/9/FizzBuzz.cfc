component  implements="FizzBuzz.iAnswerable"
{
	public string function Answer(required any question)
	hint="I answer a question" output=false
	{
		var theAnswer = "";
		
		if(!isNumeric(arguments.question))
			throw(type="invalidArgumentExecption");
		
		theAnswer = CheckForFizz(arguments.question) & CheckForBuzz(arguments.question);
		
		if(len(theAnswer))
			return theAnswer;
		else
			return arguments.question;
	}
	
	private string function CheckForFizz(numeric question){
		
		if(!arguments.question MOD 3 OR findNoCase("3",arguments.question))
			return 'fizz';
		else
			'';
	}
	
	private string function CheckForBuzz(numeric question){
		
		if(!arguments.question MOD 5 OR findNoCase("5",arguments.question))
			return 'buzz';
		else
			'';
	}
}