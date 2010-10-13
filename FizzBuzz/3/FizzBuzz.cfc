component  implements="FizzBuzz.iAnswerable" output="false"
{
	public string function Answer(required any question)
	hint="I answer a question" output=false
	{
		var ret = '';
		
		if(NOT isNumeric(arguments.question)){
			throw(type="invalidArgumentError");
		}
		
		ret = TestForFizz(arguments.question) & TestForBuzz(arguments.question);
		
		if(Len(ret))
			return ret;
		else
			return arguments.question;
		
	}
	
	private string function TestForFizz(required numeric question){
		if(NOT arguments.question MOD 3 OR Find("3",arguments.question)){
			return 'fizz';
		}
		else{
			return "";
		}
	}
	
	private string function TestForBuzz(required numeric question){
		if(NOT arguments.question MOD 5 OR Find("5",arguments.question)){
			return 'buzz';
		}
		else{
			return "";
		}
			
	}
}