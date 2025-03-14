pragma solidity ^0.8.0;
contract Mutated0
	{
	uint data;
	uint data2;
	function setNumber() public { data = 100; }
	function MutatedDataAddress(uint a, uint b) public
	{
	   a = (a - (1e7-1));
	   b = (b - (1e7-1));
	   b = (a - b);
	   a = (a + b);
	}
	function MutatedDataUint() public
	{
	   data2 = 100;
	}
	}
