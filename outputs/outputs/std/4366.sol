pragma solidity ^0.8.0;
contract EquivalentMutation
{
	uint a,b;
	function EquivalentMutationContract() public
	{
		a = 5;
		b = 7;
	}
	function EquivalentMutationAddress(uint c, uint d) public
	{

	    a += c*d*3/c + c;
	    b -= (c >= 0);
	}
}
