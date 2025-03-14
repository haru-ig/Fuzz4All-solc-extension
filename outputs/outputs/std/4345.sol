pragma solidity ^0.8.0;
contract Mutator
	{
	uint a; uint b;
	function MutateArray(uint _a, uint _b) public
	returns (uint)
	{
	   a = _a;
	   b = _b;
	   return a + b;
	}
	}

pragma solidity ^0.8.0;
contract Mutator
	{
	uint a; uint b;
	function MutateArray(uint _a, uint _b) public
	returns (uint)
	{
	   a = _a;
	   b = _b;
	   return a;
	}
	}
contract Mutator
	{
	uint a; uint b;
	function MutateArray(uint _a, uint _b) public
	returns (uint)
	{
	   a = _a;
	   b = _b;
	   return a;
	}
	}
