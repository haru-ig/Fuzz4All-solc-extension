pragma solidity ^0.8.0;
contract Mutator
	{
	struct A
	{
		uint a;
	}
	function MutateBool(A a) public returns (uint)
	{
	   return a.a*22;
	}
}
