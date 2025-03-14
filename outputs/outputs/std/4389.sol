pragma solidity ^0.8.0;
contract Mutated3
	{
	function mutatesInt(int x) public
	{
	   x = x - (1e7-1);
	}
	function MutatedAddress(uint a, uint b) public
	{
	   a = (a - (1e7-1));
	}
	}
