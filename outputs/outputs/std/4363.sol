pragma solidity ^0.8.0;
contract EquivalentMutationString
	{
	string memory A;
	string memory B;

	function test() public
	{
		A += B;
	}

	function EquivalentMutationStringAddress(string memory a, string memory b) public
	{
		A += b;
	}
	}
