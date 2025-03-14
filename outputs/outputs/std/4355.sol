pragma solidity ^0.8.0;
contract OldMutator
	{
	new Mutator
	{
	    function MutateAddress(uint a, uint b)
		{
	        a = b;
		}
	}
