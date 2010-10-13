component  implements="iAnswerable"  output="false"
{
	public string function Answer(required any question)
	hint=I answer a question output=false
	{	
		if(isArray(arguments.question)){
			return ParseArray(arguments.question);
		}
		else if(listLen(arguments.question) gt 1){
			return ParseList(arguments.question);
		}
		else if(isNumeric(arguments.question)){
			return TestForFizzBuzz(arguments.question);					
		}
		else{
			throw(type="invalidArgumentException");
		}
		
	}
	
	private string function ParseArray(required array question){
		myString = "";
			
			for(i=1;i<=ArrayLen(arguments.question);i++){
				myString &= TestForFizzBuzz(arguments.question[i]) & ",";
			}
			return Left(myString,len(myString)-1);
	}
	
	private string function ParseList(required string question, string delimiter=","){
		myString = "";
			
			for(i=1;i<=ListLen(arguments.question,",");i++){
				myString &= TestForFizzBuzz(ListGetAt(arguments.question,i,",")) & ",";
			}
			return Left(myString,len(myString)-1);
	}
	
	private string function TestForFizzBuzz(required numeric question){
		writedump(var=arguments.question,output="console" );
		if((!question mod 3 && !question mod 5) || (find(3,arguments.question) && find(5,arguments.question)))
			return "FizzBuzz";
		else if(!question mod 3 || find(3,arguments.question))
			return "Fizz";
		else if(!question mod 5)
			return "Buzz";
		else
			return arguments.question;
	}
}