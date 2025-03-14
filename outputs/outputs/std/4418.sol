pragma solidity ^0.8.0;
contract Range3
	{
	uint2data;
	uint2data2;
	uint2data3;
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
