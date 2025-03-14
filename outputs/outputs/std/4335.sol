pragma solidity ^0.8.0;
contract Mutator
	{
	constructor(uint a, uint b)
	{
	  _;
	}
	function MutateAddress(uint b) public
	returns (uint)
	{
	   return b;
	}
	}

pragma solidity ^0.8.0;
contract Mutator
	{
	function MutateAddress(uint a, uint b) public
	returns (uint)
	{
	   return Mutator(address(0)).MutateAddress(a,b);
	}
	}
