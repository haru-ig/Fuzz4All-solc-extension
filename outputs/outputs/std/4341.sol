pragma solidity ^0.8.0;
contract Mutator
	{
	function MutateString(string memory str, uint a, uint b) public
	returns (string memory)
	{
	   str = a.toString();
	   str = str.sub(b.toString());
	   return str;
	}
	}

contract Mutator
	{
	function MutateUint4(uint i, uint a, uint b) public
	returns (uint)
	{
	   i = a-b;
	}
	}
