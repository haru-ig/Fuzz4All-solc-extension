pragma solidity ^0.8.0;
contract Mutated
	{
	function ArrayAddress(uint a, uint b) public
	{
	   a <<= b;
	}
	function MutatedAddress(uint a, uint b) public
	{
	   a = -(a + (1e7-1));
	}
	}
