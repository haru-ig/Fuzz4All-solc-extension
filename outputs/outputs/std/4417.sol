pragma solidity ^0.8.0;
contract Range
	{
	uint data;
	uint datax;
	constructor() public { data = 1;}
	function RangeData(uint a, uint b) public
	{
	   a = (a - (1e7-1));
	   b = (b - (1e7-1));
	   datax = a;
	}
	}
