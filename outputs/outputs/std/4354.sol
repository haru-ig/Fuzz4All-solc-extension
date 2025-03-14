pragma solidity ^0.8.0;
contract NewMutator
	{
	function MutateAddress(uint a, uint b) public
	{
	   a = a + b;
	}
	}
