component  implements="FizzBuzz.iAnswerable"
{
	public string function Answer(required any question)
	hint="I answer a question" output=false
	{
		var theAnswer = "";
		
		if(!isNumeric(arguments.question))
			throw(type="invalidArgumentException");
		
		theAnswer = TestForFizz(arguments.question) & TestForBuzz(arguments.question);
		
		if(len(theAnswer))
			return theAnswer;
		else
			return arguments.question;
	}
	
	private string function TestForFizz(numeric question){
		if(!arguments.question MOD 3 OR find("3",arguments.question))
			return 'fizz';
		else
			return "";
	}
	
	private string function TestForBuzz(numeric question){
		if(!arguments.question MOD 5 OR find("5",arguments.question))
			return 'buzz';
		else
			return "";
	}
}