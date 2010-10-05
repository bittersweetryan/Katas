component  implements="iAnswerable"
{
	public string function Answer(any theNumber)
	hint="I return an answer" output=false displayname="Answer"
	{
		if(!isNumeric(arguments.theNumber))
			throw(detail="Bad Argument",type="invalidArgumentException");
			
		if(arguments.theNumber MOD 3 eq 0 && arguments.theNumber mod 5 eq 0)
			return "FizzBuzz";
		if(arguments.theNumber MOD 3 eq 0)
			return "Fizz";
		if(arguments.theNumber MOD 5 eq 0)
			return "Buzz";
		else
			return arguments.theNumber;
	}
}