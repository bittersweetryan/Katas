interface  displayname="Welcome Interface"
{

/**
 * Welcome a guest
 *
 * @param lastName   the last name of the guest
 * @param isWoman    true if the guest is female
 * @param isSir      true if the guest was knighted by the queen
 *
 * @return          issues welcome text to the guest
 */
	public string function welcome (string lastName, boolean isWoman, boolean isSir);

}