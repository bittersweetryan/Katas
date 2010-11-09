component  implements="TeaParty.iWelcome" output="false"
{
	public string function welcome( string lastName, boolean isWoman, boolean isSir)
	{
		var retString = 'Hello';
		
		if(arguments.isSir)
			retString &= ' Sir ';
		else if(arguments.isWoman)
			retString &= ' Ms. ';
		else
			retString &= ' Mr. ';
			
		return retString & arguments.lastName;
	}
}