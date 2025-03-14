pragma solidity ^0.8.0;
contract Mutated
	{
	uint data;
	uint data2;
	uint datax;
	constructor() public { data = 100; data2 = (uint(uint(data)-data)); datax = data;}
	function MutatedDataAddress(uint a, uint b) public
	{
	   a = (a - (1e7-1));
	   b = (b - (1e7-1));
	   b = (a - b);
	   a = (a + b);
	}
	function MutatedDataUint() public
	{
	   datax = data;
	}
	}
