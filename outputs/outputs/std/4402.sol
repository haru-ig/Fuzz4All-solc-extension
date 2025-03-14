pragma solidity ^0.8.0;
contract Mutated
	{
	uint data;
	uint data2;
	constructor() public { data = 100; data2 = (uint(uint(data)-data)); }
	}
contract Mutated2
	{
	uint data;
	uint data2;
	uint datax;
	constructor() public { data = 100; data2 = (uint(uint(data)-data)); datax = data;}
	function MutatedDataAddress() public
	{
	   datax = (datax - (1e7-1));
	}
	function MutatedDataUint() public
	{
	   mutatedData();
	}
	}
