pragma solidity ^0.8.0;
contract OldMutator1
	{
	function MutateAddress(uint a, uint b) public virtual
	{
	   a += b;
	}
	}

pragma solidity ^0.8.0;
contract OldMutator2
	{
	function MutateAddress(uint a, uint b) internal virtual
	{
	   a += b;
	}
	}
