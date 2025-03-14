pragma solidity ^0.8.0;
contract A_Solidity_V1
	{
	Mutator x;
	function A_Solidity_V1(Mutator x)
	public {
	   this.x = x;
	}
	function MutateAddress(uint a, uint b) public
	returns (uint)
	{
	   return a+b;
	}
	}
