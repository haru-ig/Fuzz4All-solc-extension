pragma solidity ^0.8.0;
contract Mutator
	{
	function MutateUint(uint a, uint b) public
	returns (uint)
	{
	   return a-b;
	}
	}
