pragma solidity ^0.8.0;
contract Mutated
	{
	uint data;
	uint data2;
	int datax;
	uint dataz;
	uint dataa;
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
	   data2 = 100;
	}
	function MutatedDataUint1(uint a) public
	{
	   a = (a - (1e7-1));
	   b = (1e9 + a);
	   b = (a - b);
	   a = (a + b);
	}
	}
