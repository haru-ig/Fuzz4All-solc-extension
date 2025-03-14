pragma solidity ^0.8.0;
contract OldSolidity
	{
	function ArrayAddress(uint a, uint b) public
	{
		return a & b;
	}
	function MutatedAddress(uint a, uint b) public
	{
	   return a + b;
	}
	}
