pragma solidity ^0.8.0;
contract Mutated2
	{
	function ArrayByte(uint a, uint b) public
	{
	   a += b;
	}
	function MutatedByte(uint a, uint b) public
	{
	   a = a + (1e7-a);
	}
	}
