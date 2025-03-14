pragma solidity ^0.8.0;
contract NewMutator
	{
	function MutateAddress2(uint a, uint b) public returns(uint)
		{
		a += b;
		return a;
		}
	}
