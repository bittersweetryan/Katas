component  implements="FizzBuzz.iAnswerable" output="false"
{
	public string function Answer(required any question)
	hint="I answer a question" output=false
	{
		var theAnswer = ""; 
		
		if(!ListLen(arguments.question) AND !isNumeric(arguments.question)){
		
			throw(type="invalidArgumentException");
		}
		
		if(Len(theAnswer))
			return left(theAnswer,len(theAnswer) - 1);
		else
			return arguments.question;
	}
	
	private string function ParseList(string list){
	
		for(i = 1; i <= ListLen(arguments.question); i++){
		
			theAnswer &= TestFizz(arguments.question) & TestBuzz(arguments.question) & ",";
		}
	}
	
	private string function TestFizz(numeric question){
	
		if(!arguments.question MOD 3 OR find("13",arguments.question))
			return 'fizz';
		else
			return '';
	}
	
	private string function TestBuzz(numeric question){
	
		if(!arguments.question MOD 5 OR find("5",arguments.question))
			return 'buzz';
		else
			return '';
	}
	
}