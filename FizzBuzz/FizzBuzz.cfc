component  implements="iAnswerable" output="false"
{
	public string function Answer(required any question)
	hint=I answer a question output=false
	{	
		if(!isNumeric(arguments.question) && !isArray(arguments.question)){
			throw(type="invalidArgumentException");
		}
		
		if(isArray(arguments.question)){
			myString = "";
			
			for(i=1;i<=ArrayLen(arguments.question);i++){
				myString &= TestInput(arguments.question[i]) & ",";
			}
			return Left(myString,len(myString)-1);
		}
		else{
			return TestInput(arguments.question);					
		}
	}
	
	private string function TestInput(required numeric question){
		writedump(var=arguments.question,output="console" );
		if(!question mod 3 && !question mod 5)
			return "FizzBuzz";
		else if(!question mod 3 || find(3,arguments.question))
			return "Fizz";
		else if(!question mod 5)
			return "Buzz";
		else
			return arguments.question;
	}
}