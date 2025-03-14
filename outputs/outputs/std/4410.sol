pragma solidity ^0.8.0;
contract Range2
	{
	uint data;
	uint data2;
	uint data3;
	uint data4;
	uint datax;
	constructor() public { data = 2;}
	function RangeData(uint a, uint b) public
	{
	   a = (a - (1e7-1));
	   b = (b - (1e7-1));
	   b = (a - b);
	   a = (a + b);
	}
	function RangeData2(uint a, uint b) public
	{
	   a = (a - (1e7-1));
	   b = (b - (1e7-1));
	   b = (a - b);
	   a = (a + b);
	}
	}
